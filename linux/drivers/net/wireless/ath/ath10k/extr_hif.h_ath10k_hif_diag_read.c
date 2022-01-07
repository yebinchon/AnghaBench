
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ hif; } ;
struct TYPE_3__ {int (* diag_read ) (struct ath10k*,int ,void*,size_t) ;} ;


 int stub1 (struct ath10k*,int ,void*,size_t) ;

__attribute__((used)) static inline int ath10k_hif_diag_read(struct ath10k *ar, u32 address, void *buf,
           size_t buf_len)
{
 return ar->hif.ops->diag_read(ar, address, buf, buf_len);
}
