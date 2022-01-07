
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_5__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ req; } ;
struct qlcnic_adapter {TYPE_3__* pdev; TYPE_1__* recv_ctx; } ;
typedef int key ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int context_id; } ;


 int QLCNIC_CMD_CONFIGURE_RSS ;
 int RSS_HASHTYPE_IP_TCP ;
 int dev_info (int *,char*) ;
 int memcpy (int*,int const*,int) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

int qlcnic_83xx_config_rss(struct qlcnic_adapter *adapter, int enable)
{
 int err;
 u32 word;
 struct qlcnic_cmd_args cmd;
 const u64 key[] = { 0xbeac01fa6a42b73bULL, 0x8030f20c77cb2da3ULL,
       0xae7b30b4d0ca2bcbULL, 0x43a38fb04167253dULL,
       0x255b0ec26d5a56daULL };

 err = qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_CONFIGURE_RSS);
 if (err)
  return err;
 word = ((u32)(RSS_HASHTYPE_IP_TCP & 0x3) << 4) |
  ((u32)(RSS_HASHTYPE_IP_TCP & 0x3) << 6) |
  ((u32)(enable & 0x1) << 8) |
  ((0x7ULL) << 16);
 cmd.req.arg[1] = (adapter->recv_ctx->context_id);
 cmd.req.arg[2] = word;
 memcpy(&cmd.req.arg[4], key, sizeof(key));

 err = qlcnic_issue_cmd(adapter, &cmd);

 if (err)
  dev_info(&adapter->pdev->dev, "RSS config failed\n");
 qlcnic_free_mbx_args(&cmd);

 return err;

}
