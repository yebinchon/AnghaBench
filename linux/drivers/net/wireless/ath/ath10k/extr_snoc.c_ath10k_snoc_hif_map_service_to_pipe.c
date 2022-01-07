
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct service_to_pipe {int pipenum; int pipedir; int service_id; } ;
struct ath10k {int dummy; } ;


 int ARRAY_SIZE (struct service_to_pipe*) ;
 int ATH10K_DBG_SNOC ;
 int ENOENT ;




 int WARN_ON (int) ;
 int __le32_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 struct service_to_pipe* target_service_to_ce_map_wlan ;

__attribute__((used)) static int ath10k_snoc_hif_map_service_to_pipe(struct ath10k *ar,
            u16 service_id,
            u8 *ul_pipe, u8 *dl_pipe)
{
 const struct service_to_pipe *entry;
 bool ul_set = 0, dl_set = 0;
 int i;

 ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc hif map service\n");

 for (i = 0; i < ARRAY_SIZE(target_service_to_ce_map_wlan); i++) {
  entry = &target_service_to_ce_map_wlan[i];

  if (__le32_to_cpu(entry->service_id) != service_id)
   continue;

  switch (__le32_to_cpu(entry->pipedir)) {
  case 129:
   break;
  case 131:
   WARN_ON(dl_set);
   *dl_pipe = __le32_to_cpu(entry->pipenum);
   dl_set = 1;
   break;
  case 128:
   WARN_ON(ul_set);
   *ul_pipe = __le32_to_cpu(entry->pipenum);
   ul_set = 1;
   break;
  case 130:
   WARN_ON(dl_set);
   WARN_ON(ul_set);
   *dl_pipe = __le32_to_cpu(entry->pipenum);
   *ul_pipe = __le32_to_cpu(entry->pipenum);
   dl_set = 1;
   ul_set = 1;
   break;
  }
 }

 if (!ul_set || !dl_set)
  return -ENOENT;

 return 0;
}
