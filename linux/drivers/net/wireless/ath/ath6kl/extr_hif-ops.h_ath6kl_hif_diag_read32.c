
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath6kl {TYPE_1__* hif_ops; } ;
struct TYPE_2__ {int (* diag_read32 ) (struct ath6kl*,int ,int *) ;} ;


 int stub1 (struct ath6kl*,int ,int *) ;

__attribute__((used)) static inline int ath6kl_hif_diag_read32(struct ath6kl *ar, u32 address,
      u32 *value)
{
 return ar->hif_ops->diag_read32(ar, address, value);
}
