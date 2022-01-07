
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ hif; } ;
struct TYPE_3__ {int (* fetch_cal_eeprom ) (struct ath10k*,void**,size_t*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct ath10k*,void**,size_t*) ;

__attribute__((used)) static inline int ath10k_hif_fetch_cal_eeprom(struct ath10k *ar,
           void **data,
           size_t *data_len)
{
 if (!ar->hif.ops->fetch_cal_eeprom)
  return -EOPNOTSUPP;

 return ar->hif.ops->fetch_cal_eeprom(ar, data, data_len);
}
