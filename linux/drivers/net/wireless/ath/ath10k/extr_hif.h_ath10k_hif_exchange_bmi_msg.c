
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ hif; } ;
struct TYPE_3__ {int (* exchange_bmi_msg ) (struct ath10k*,void*,int ,void*,int *) ;} ;


 int stub1 (struct ath10k*,void*,int ,void*,int *) ;

__attribute__((used)) static inline int ath10k_hif_exchange_bmi_msg(struct ath10k *ar,
           void *request, u32 request_len,
           void *response, u32 *response_len)
{
 return ar->hif.ops->exchange_bmi_msg(ar, request, request_len,
          response, response_len);
}
