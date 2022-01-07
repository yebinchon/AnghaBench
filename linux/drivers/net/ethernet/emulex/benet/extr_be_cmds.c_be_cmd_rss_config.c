
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {int version; } ;
struct be_cmd_req_rss_config {int hash; int cpu_table; TYPE_1__ hdr; void* cpu_table_size_log2; void* enable_rss; int if_id; } ;
struct be_adapter {int mcc_lock; int if_handle; } ;


 int BE_IF_FLAGS_RSS ;
 int BEx_chip (struct be_adapter*) ;
 int CMD_SUBSYSTEM_ETH ;
 int EBUSY ;
 int OPCODE_ETH_RSS_CONFIG ;
 int RSS_HASH_KEY_LEN ;
 int be_dws_cpu_to_le (int ,int) ;
 int be_if_cap_flags (struct be_adapter*) ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (TYPE_1__*,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (int ) ;
 struct be_cmd_req_rss_config* embedded_payload (struct be_mcc_wrb*) ;
 scalar_t__ fls (int ) ;
 int memcpy (int ,int const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

int be_cmd_rss_config(struct be_adapter *adapter, u8 *rsstable,
        u32 rss_hash_opts, u16 table_size, const u8 *rss_hkey)
{
 struct be_mcc_wrb *wrb;
 struct be_cmd_req_rss_config *req;
 int status;

 if (!(be_if_cap_flags(adapter) & BE_IF_FLAGS_RSS))
  return 0;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ETH,
          OPCODE_ETH_RSS_CONFIG, sizeof(*req), wrb, ((void*)0));

 req->if_id = cpu_to_le32(adapter->if_handle);
 req->enable_rss = cpu_to_le16(rss_hash_opts);
 req->cpu_table_size_log2 = cpu_to_le16(fls(table_size) - 1);

 if (!BEx_chip(adapter))
  req->hdr.version = 1;

 memcpy(req->cpu_table, rsstable, table_size);
 memcpy(req->hash, rss_hkey, RSS_HASH_KEY_LEN);
 be_dws_cpu_to_le(req->hash, sizeof(req->hash));

 status = be_mcc_notify_wait(adapter);
err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
