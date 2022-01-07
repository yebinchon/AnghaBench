
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ath6kl {TYPE_1__* hif_ops; } ;
struct TYPE_2__ {int (* bmi_write ) (struct ath6kl*,int *,int ) ;} ;


 int stub1 (struct ath6kl*,int *,int ) ;

__attribute__((used)) static inline int ath6kl_hif_bmi_write(struct ath6kl *ar, u8 *buf, u32 len)
{
 return ar->hif_ops->bmi_write(ar, buf, len);
}
