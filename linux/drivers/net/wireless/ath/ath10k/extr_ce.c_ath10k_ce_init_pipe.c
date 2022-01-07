
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ce_attr {scalar_t__ dest_nentries; scalar_t__ src_nentries; } ;
struct ath10k {int dummy; } ;


 int ath10k_ce_init_dest_ring (struct ath10k*,unsigned int,struct ce_attr const*) ;
 int ath10k_ce_init_src_ring (struct ath10k*,unsigned int,struct ce_attr const*) ;
 int ath10k_err (struct ath10k*,char*,unsigned int,int) ;

int ath10k_ce_init_pipe(struct ath10k *ar, unsigned int ce_id,
   const struct ce_attr *attr)
{
 int ret;

 if (attr->src_nentries) {
  ret = ath10k_ce_init_src_ring(ar, ce_id, attr);
  if (ret) {
   ath10k_err(ar, "Failed to initialize CE src ring for ID: %d (%d)\n",
       ce_id, ret);
   return ret;
  }
 }

 if (attr->dest_nentries) {
  ret = ath10k_ce_init_dest_ring(ar, ce_id, attr);
  if (ret) {
   ath10k_err(ar, "Failed to initialize CE dest ring for ID: %d (%d)\n",
       ce_id, ret);
   return ret;
  }
 }

 return 0;
}
