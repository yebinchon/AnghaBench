
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {int synmapen; int syn4tupenipv6; int syn2tupenipv6; int syn4tupenipv4; int syn2tupenipv4; int ofdmapen; int tnlmapen; int tnlalllookup; int hashtoeplitz; } ;
struct TYPE_12__ {TYPE_5__ basicvirtual; } ;
struct rss_params {int mode; TYPE_6__ u; } ;
struct TYPE_9__ {int synmapen_to_hashtoeplitz; } ;
struct TYPE_8__ {int mode_pkd; } ;
struct TYPE_10__ {TYPE_3__ basicvirtual; TYPE_2__ manual; } ;
struct fw_rss_glb_config_cmd {TYPE_4__ u; void* retval_len16; void* op_to_write; } ;
struct TYPE_7__ {struct rss_params rss; } ;
struct adapter {TYPE_1__ params; } ;
typedef int cmd ;


 int EINVAL ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_READ_F ;
 int FW_CMD_REQUEST_F ;
 int FW_LEN16 (struct fw_rss_glb_config_cmd) ;
 int FW_RSS_GLB_CONFIG_CMD ;
 int FW_RSS_GLB_CONFIG_CMD_HASHTOEPLITZ_F ;

 int FW_RSS_GLB_CONFIG_CMD_MODE_G (int) ;
 int FW_RSS_GLB_CONFIG_CMD_OFDMAPEN_F ;
 int FW_RSS_GLB_CONFIG_CMD_SYN2TUPENIPV4_F ;
 int FW_RSS_GLB_CONFIG_CMD_SYN2TUPENIPV6_F ;
 int FW_RSS_GLB_CONFIG_CMD_SYN4TUPENIPV4_F ;
 int FW_RSS_GLB_CONFIG_CMD_SYN4TUPENIPV6_F ;
 int FW_RSS_GLB_CONFIG_CMD_SYNMAPEN_F ;
 int FW_RSS_GLB_CONFIG_CMD_TNLALLLKP_F ;
 int FW_RSS_GLB_CONFIG_CMD_TNLMAPEN_F ;
 int be32_to_cpu (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_rss_glb_config_cmd*,int ,int) ;
 int t4vf_wr_mbox (struct adapter*,struct fw_rss_glb_config_cmd*,int,struct fw_rss_glb_config_cmd*) ;

int t4vf_get_rss_glb_config(struct adapter *adapter)
{
 struct rss_params *rss = &adapter->params.rss;
 struct fw_rss_glb_config_cmd cmd, rpl;
 int v;





 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_write = cpu_to_be32(FW_CMD_OP_V(FW_RSS_GLB_CONFIG_CMD) |
          FW_CMD_REQUEST_F |
          FW_CMD_READ_F);
 cmd.retval_len16 = cpu_to_be32(FW_LEN16(cmd));
 v = t4vf_wr_mbox(adapter, &cmd, sizeof(cmd), &rpl);
 if (v)
  return v;







 rss->mode = FW_RSS_GLB_CONFIG_CMD_MODE_G(
   be32_to_cpu(rpl.u.manual.mode_pkd));
 switch (rss->mode) {
 case 128: {
  u32 word = be32_to_cpu(
    rpl.u.basicvirtual.synmapen_to_hashtoeplitz);

  rss->u.basicvirtual.synmapen =
   ((word & FW_RSS_GLB_CONFIG_CMD_SYNMAPEN_F) != 0);
  rss->u.basicvirtual.syn4tupenipv6 =
   ((word & FW_RSS_GLB_CONFIG_CMD_SYN4TUPENIPV6_F) != 0);
  rss->u.basicvirtual.syn2tupenipv6 =
   ((word & FW_RSS_GLB_CONFIG_CMD_SYN2TUPENIPV6_F) != 0);
  rss->u.basicvirtual.syn4tupenipv4 =
   ((word & FW_RSS_GLB_CONFIG_CMD_SYN4TUPENIPV4_F) != 0);
  rss->u.basicvirtual.syn2tupenipv4 =
   ((word & FW_RSS_GLB_CONFIG_CMD_SYN2TUPENIPV4_F) != 0);

  rss->u.basicvirtual.ofdmapen =
   ((word & FW_RSS_GLB_CONFIG_CMD_OFDMAPEN_F) != 0);

  rss->u.basicvirtual.tnlmapen =
   ((word & FW_RSS_GLB_CONFIG_CMD_TNLMAPEN_F) != 0);
  rss->u.basicvirtual.tnlalllookup =
   ((word & FW_RSS_GLB_CONFIG_CMD_TNLALLLKP_F) != 0);

  rss->u.basicvirtual.hashtoeplitz =
   ((word & FW_RSS_GLB_CONFIG_CMD_HASHTOEPLITZ_F) != 0);


  if (!rss->u.basicvirtual.tnlmapen)
   return -EINVAL;
  break;
 }

 default:

  return -EINVAL;
 }

 return 0;
}
