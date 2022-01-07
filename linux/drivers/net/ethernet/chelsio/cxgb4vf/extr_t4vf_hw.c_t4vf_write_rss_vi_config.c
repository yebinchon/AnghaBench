
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int defaultq; int udpen; int ip4twotupen; int ip4fourtupen; int ip6twotupen; int ip6fourtupen; } ;
union rss_vi_config {TYPE_3__ basicvirtual; } ;
typedef int u32 ;
struct TYPE_9__ {void* defaultq_to_udpen; } ;
struct TYPE_10__ {TYPE_4__ basicvirtual; } ;
struct fw_rss_vi_config_cmd {TYPE_5__ u; void* retval_len16; void* op_to_viid; } ;
struct TYPE_6__ {int mode; } ;
struct TYPE_7__ {TYPE_1__ rss; } ;
struct adapter {TYPE_2__ params; } ;
typedef int cmd ;


 int EINVAL ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_CMD_WRITE_F ;
 int FW_LEN16 (struct fw_rss_vi_config_cmd) ;

 int FW_RSS_VI_CONFIG_CMD ;
 int FW_RSS_VI_CONFIG_CMD_DEFAULTQ_V (int ) ;
 int FW_RSS_VI_CONFIG_CMD_IP4FOURTUPEN_F ;
 int FW_RSS_VI_CONFIG_CMD_IP4TWOTUPEN_F ;
 int FW_RSS_VI_CONFIG_CMD_IP6FOURTUPEN_F ;
 int FW_RSS_VI_CONFIG_CMD_IP6TWOTUPEN_F ;
 int FW_RSS_VI_CONFIG_CMD_UDPEN_F ;
 int FW_RSS_VI_CONFIG_CMD_VIID (unsigned int) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_rss_vi_config_cmd*,int ,int) ;
 int t4vf_wr_mbox (struct adapter*,struct fw_rss_vi_config_cmd*,int,struct fw_rss_vi_config_cmd*) ;

int t4vf_write_rss_vi_config(struct adapter *adapter, unsigned int viid,
        union rss_vi_config *config)
{
 struct fw_rss_vi_config_cmd cmd, rpl;

 memset(&cmd, 0, sizeof(cmd));
 cmd.op_to_viid = cpu_to_be32(FW_CMD_OP_V(FW_RSS_VI_CONFIG_CMD) |
         FW_CMD_REQUEST_F |
         FW_CMD_WRITE_F |
         FW_RSS_VI_CONFIG_CMD_VIID(viid));
 cmd.retval_len16 = cpu_to_be32(FW_LEN16(cmd));
 switch (adapter->params.rss.mode) {
 case 128: {
  u32 word = 0;

  if (config->basicvirtual.ip6fourtupen)
   word |= FW_RSS_VI_CONFIG_CMD_IP6FOURTUPEN_F;
  if (config->basicvirtual.ip6twotupen)
   word |= FW_RSS_VI_CONFIG_CMD_IP6TWOTUPEN_F;
  if (config->basicvirtual.ip4fourtupen)
   word |= FW_RSS_VI_CONFIG_CMD_IP4FOURTUPEN_F;
  if (config->basicvirtual.ip4twotupen)
   word |= FW_RSS_VI_CONFIG_CMD_IP4TWOTUPEN_F;
  if (config->basicvirtual.udpen)
   word |= FW_RSS_VI_CONFIG_CMD_UDPEN_F;
  word |= FW_RSS_VI_CONFIG_CMD_DEFAULTQ_V(
    config->basicvirtual.defaultq);
  cmd.u.basicvirtual.defaultq_to_udpen = cpu_to_be32(word);
  break;
 }

 default:
  return -EINVAL;
 }

 return t4vf_wr_mbox(adapter, &cmd, sizeof(cmd), &rpl);
}
