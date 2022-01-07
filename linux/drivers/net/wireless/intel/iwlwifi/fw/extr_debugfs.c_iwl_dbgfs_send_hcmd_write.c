
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct iwl_host_cmd {int* len; int flags; int * data; void* id; } ;
struct iwl_fw_runtime {int ops_ctx; TYPE_1__* ops; } ;
struct hcmd_write_data {int data; int length; int flags; int cmd_id; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* send_hcmd ) (int ,struct iwl_host_cmd*) ;int (* fw_running ) (int ) ;} ;


 int CMD_WANT_SKB ;
 size_t EINVAL ;
 size_t EIO ;
 size_t ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int IWL_ERR (struct iwl_fw_runtime*,char*) ;
 int be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 int hex2bin (int *,char*,size_t) ;
 int iwl_free_resp (struct iwl_host_cmd*) ;
 int kfree (struct hcmd_write_data*) ;
 struct hcmd_write_data* kmalloc (size_t,int ) ;
 int stub1 (int ) ;
 int stub2 (int ,struct iwl_host_cmd*) ;

__attribute__((used)) static ssize_t iwl_dbgfs_send_hcmd_write(struct iwl_fw_runtime *fwrt, char *buf,
      size_t count)
{
 size_t header_size = (sizeof(u32) * 2 + sizeof(u16)) * 2;
 size_t data_size = (count - 1) / 2;
 int ret;
 struct hcmd_write_data *data;
 struct iwl_host_cmd hcmd = {
  .len = { 0, },
  .data = { ((void*)0), },
 };

 if (fwrt->ops && fwrt->ops->fw_running &&
     !fwrt->ops->fw_running(fwrt->ops_ctx))
  return -EIO;

 if (count < header_size + 1 || count > 1024 * 4)
  return -EINVAL;

 data = kmalloc(data_size, GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 ret = hex2bin((u8 *)data, buf, data_size);
 if (ret)
  goto out;

 hcmd.id = be32_to_cpu(data->cmd_id);
 hcmd.flags = be32_to_cpu(data->flags);
 hcmd.len[0] = be16_to_cpu(data->length);
 hcmd.data[0] = data->data;

 if (count != header_size + hcmd.len[0] * 2 + 1) {
  IWL_ERR(fwrt,
   "host command data size does not match header length\n");
  ret = -EINVAL;
  goto out;
 }

 if (fwrt->ops && fwrt->ops->send_hcmd)
  ret = fwrt->ops->send_hcmd(fwrt->ops_ctx, &hcmd);
 else
  ret = -EPERM;

 if (ret < 0)
  goto out;

 if (hcmd.flags & CMD_WANT_SKB)
  iwl_free_resp(&hcmd);
out:
 kfree(data);
 return ret ?: count;
}
