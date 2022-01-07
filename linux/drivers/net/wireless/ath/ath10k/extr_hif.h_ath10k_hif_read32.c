
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ hif; } ;
struct TYPE_3__ {int (* read32 ) (struct ath10k*,int) ;} ;


 int ath10k_warn (struct ath10k*,char*) ;
 int stub1 (struct ath10k*,int) ;

__attribute__((used)) static inline u32 ath10k_hif_read32(struct ath10k *ar, u32 address)
{
 if (!ar->hif.ops->read32) {
  ath10k_warn(ar, "hif read32 not supported\n");
  return 0xdeaddead;
 }

 return ar->hif.ops->read32(ar, address);
}
