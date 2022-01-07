
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ hif; } ;
struct TYPE_3__ {int (* write32 ) (struct ath10k*,int ,int ) ;} ;


 int ath10k_warn (struct ath10k*,char*) ;
 int stub1 (struct ath10k*,int ,int ) ;

__attribute__((used)) static inline void ath10k_hif_write32(struct ath10k *ar,
          u32 address, u32 data)
{
 if (!ar->hif.ops->write32) {
  ath10k_warn(ar, "hif write32 not supported\n");
  return;
 }

 ar->hif.ops->write32(ar, address, data);
}
