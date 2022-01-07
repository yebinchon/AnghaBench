
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct port_info {int viid; int tx_chan; int lport; unsigned int rss_size; int port_type; int mdio_addr; int link_cfg; int mod_type; void* vin; void* vivld; struct adapter* adapter; int rx_cchan; } ;
struct TYPE_6__ {int acaps32; int pcaps32; int lstatus32_to_cbllen32; } ;
struct TYPE_5__ {int acap; int pcap; int lstatus_to_modtype; } ;
struct TYPE_7__ {TYPE_2__ info32; TYPE_1__ info; } ;
struct fw_port_cmd {TYPE_3__ u; void* action_to_len16; void* op_to_portid; } ;
struct TYPE_8__ {unsigned int fw_caps_support; scalar_t__ viid_smt_extn_support; } ;
struct adapter {TYPE_4__ params; } ;
typedef void* fw_port_cap32_t ;
typedef enum fw_port_type { ____Placeholder_fw_port_type } fw_port_type ;
typedef int cmd ;


 unsigned int FW_CAPS16 ;
 unsigned int FW_CAPS32 ;
 unsigned int FW_CAPS_UNKNOWN ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_READ_F ;
 int FW_CMD_REQUEST_F ;
 int FW_LEN16 (struct fw_port_cmd) ;
 int FW_PARAMS_MNEM_PFVF ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_PFVF_PORT_CAPS32 ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 int FW_PORT_ACTION_GET_PORT_INFO ;
 int FW_PORT_ACTION_GET_PORT_INFO32 ;
 int FW_PORT_CMD ;
 int FW_PORT_CMD_ACTION_V (int ) ;
 int FW_PORT_CMD_MDIOADDR32_G (int) ;
 int FW_PORT_CMD_MDIOADDR_G (int) ;
 int FW_PORT_CMD_MDIOCAP32_F ;
 int FW_PORT_CMD_MDIOCAP_F ;
 int FW_PORT_CMD_PORTID_V (int) ;
 int FW_PORT_CMD_PORTTYPE32_G (int) ;
 int FW_PORT_CMD_PTYPE_G (int) ;
 int FW_PORT_MOD_TYPE_NA ;
 void* FW_VIID_VIN_G (int) ;
 void* FW_VIID_VIVLD_G (int) ;
 int be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 void* fwcaps16_to_caps32 (int ) ;
 int init_link_config (int *,void*,void*) ;
 int memset (struct fw_port_cmd*,int ,int) ;
 int t4_alloc_vi (struct adapter*,int,int,int,int,int,void**,unsigned int*,void**,void**) ;
 int t4_get_tp_e2c_map (struct adapter*,int) ;
 int t4_set_params (struct adapter*,int,int,int,int,int*,int*) ;
 int t4_wr_mbox (struct adapter*,int,struct fw_port_cmd*,int,struct fw_port_cmd*) ;

int t4_init_portinfo(struct port_info *pi, int mbox,
       int port, int pf, int vf, u8 mac[])
{
 struct adapter *adapter = pi->adapter;
 unsigned int fw_caps = adapter->params.fw_caps_support;
 struct fw_port_cmd cmd;
 unsigned int rss_size;
 enum fw_port_type port_type;
 int mdio_addr;
 fw_port_cap32_t pcaps, acaps;
 u8 vivld = 0, vin = 0;
 int ret;







 if (fw_caps == FW_CAPS_UNKNOWN) {
  u32 param, val;

  param = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_PFVF) |
    FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_PFVF_PORT_CAPS32));
  val = 1;
  ret = t4_set_params(adapter, mbox, pf, vf, 1, &param, &val);
  fw_caps = (ret == 0 ? FW_CAPS32 : FW_CAPS16);
  adapter->params.fw_caps_support = fw_caps;
 }

 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_portid = cpu_to_be32(FW_CMD_OP_V(FW_PORT_CMD) |
           FW_CMD_REQUEST_F | FW_CMD_READ_F |
           FW_PORT_CMD_PORTID_V(port));
 cmd.action_to_len16 = cpu_to_be32(
  FW_PORT_CMD_ACTION_V(fw_caps == FW_CAPS16
         ? FW_PORT_ACTION_GET_PORT_INFO
         : FW_PORT_ACTION_GET_PORT_INFO32) |
  FW_LEN16(cmd));
 ret = t4_wr_mbox(pi->adapter, mbox, &cmd, sizeof(cmd), &cmd);
 if (ret)
  return ret;



 if (fw_caps == FW_CAPS16) {
  u32 lstatus = be32_to_cpu(cmd.u.info.lstatus_to_modtype);

  port_type = FW_PORT_CMD_PTYPE_G(lstatus);
  mdio_addr = ((lstatus & FW_PORT_CMD_MDIOCAP_F)
        ? FW_PORT_CMD_MDIOADDR_G(lstatus)
        : -1);
  pcaps = fwcaps16_to_caps32(be16_to_cpu(cmd.u.info.pcap));
  acaps = fwcaps16_to_caps32(be16_to_cpu(cmd.u.info.acap));
 } else {
  u32 lstatus32 = be32_to_cpu(cmd.u.info32.lstatus32_to_cbllen32);

  port_type = FW_PORT_CMD_PORTTYPE32_G(lstatus32);
  mdio_addr = ((lstatus32 & FW_PORT_CMD_MDIOCAP32_F)
        ? FW_PORT_CMD_MDIOADDR32_G(lstatus32)
        : -1);
  pcaps = be32_to_cpu(cmd.u.info32.pcaps32);
  acaps = be32_to_cpu(cmd.u.info32.acaps32);
 }

 ret = t4_alloc_vi(pi->adapter, mbox, port, pf, vf, 1, mac, &rss_size,
     &vivld, &vin);
 if (ret < 0)
  return ret;

 pi->viid = ret;
 pi->tx_chan = port;
 pi->lport = port;
 pi->rss_size = rss_size;
 pi->rx_cchan = t4_get_tp_e2c_map(pi->adapter, port);




 if (adapter->params.viid_smt_extn_support) {
  pi->vivld = vivld;
  pi->vin = vin;
 } else {

  pi->vivld = FW_VIID_VIVLD_G(pi->viid);
  pi->vin = FW_VIID_VIN_G(pi->viid);
 }

 pi->port_type = port_type;
 pi->mdio_addr = mdio_addr;
 pi->mod_type = FW_PORT_MOD_TYPE_NA;

 init_link_config(&pi->link_cfg, pcaps, acaps);
 return 0;
}
