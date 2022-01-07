
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_vi_rxmode_cmd {void* mtu_to_vlanexen; void* retval_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef int cmd ;


 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_LEN16 (struct fw_vi_rxmode_cmd) ;
 int FW_VI_RXMODE_CMD ;
 int FW_VI_RXMODE_CMD_ALLMULTIEN_M ;
 int FW_VI_RXMODE_CMD_ALLMULTIEN_V (int) ;
 int FW_VI_RXMODE_CMD_BROADCASTEN_M ;
 int FW_VI_RXMODE_CMD_BROADCASTEN_V (int) ;
 int FW_VI_RXMODE_CMD_MTU_M ;
 int FW_VI_RXMODE_CMD_MTU_V (int) ;
 int FW_VI_RXMODE_CMD_PROMISCEN_M ;
 int FW_VI_RXMODE_CMD_PROMISCEN_V (int) ;
 int FW_VI_RXMODE_CMD_VIID_V (unsigned int) ;
 int FW_VI_RXMODE_CMD_VLANEXEN_M ;
 int FW_VI_RXMODE_CMD_VLANEXEN_V (int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_vi_rxmode_cmd*,int ,int) ;
 int t4vf_wr_mbox_core (struct adapter*,struct fw_vi_rxmode_cmd*,int,int *,int) ;

int t4vf_set_rxmode(struct adapter *adapter, unsigned int viid,
      int mtu, int promisc, int all_multi, int bcast, int vlanex,
      bool sleep_ok)
{
 struct fw_vi_rxmode_cmd cmd;


 if (mtu < 0)
  mtu = FW_VI_RXMODE_CMD_MTU_M;
 if (promisc < 0)
  promisc = FW_VI_RXMODE_CMD_PROMISCEN_M;
 if (all_multi < 0)
  all_multi = FW_VI_RXMODE_CMD_ALLMULTIEN_M;
 if (bcast < 0)
  bcast = FW_VI_RXMODE_CMD_BROADCASTEN_M;
 if (vlanex < 0)
  vlanex = FW_VI_RXMODE_CMD_VLANEXEN_M;

 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_viid = cpu_to_be32(FW_CMD_OP_V(FW_VI_RXMODE_CMD) |
         FW_CMD_REQUEST_F |
         FW_CMD_WRITE_F |
         FW_VI_RXMODE_CMD_VIID_V(viid));
 cmd.retval_len16 = cpu_to_be32(FW_LEN16(cmd));
 cmd.mtu_to_vlanexen =
  cpu_to_be32(FW_VI_RXMODE_CMD_MTU_V(mtu) |
       FW_VI_RXMODE_CMD_PROMISCEN_V(promisc) |
       FW_VI_RXMODE_CMD_ALLMULTIEN_V(all_multi) |
       FW_VI_RXMODE_CMD_BROADCASTEN_V(bcast) |
       FW_VI_RXMODE_CMD_VLANEXEN_V(vlanex));
 return t4vf_wr_mbox_core(adapter, &cmd, sizeof(cmd), ((void*)0), sleep_ok);
}
