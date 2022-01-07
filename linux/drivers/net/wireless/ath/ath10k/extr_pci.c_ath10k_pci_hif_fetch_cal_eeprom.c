
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {size_t cal_data_len; } ;
struct ath10k {TYPE_1__ hw_params; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int QCA_REV_9887 (struct ath10k*) ;
 int ath10k_pci_enable_eeprom (struct ath10k*) ;
 int ath10k_pci_read_eeprom (struct ath10k*,size_t,int *) ;
 int ath10k_pci_validate_cal (int *,size_t) ;
 int kfree (int *) ;
 int * kmalloc (size_t,int ) ;

__attribute__((used)) static int ath10k_pci_hif_fetch_cal_eeprom(struct ath10k *ar, void **data,
        size_t *data_len)
{
 u8 *caldata = ((void*)0);
 size_t calsize, i;
 int ret;

 if (!QCA_REV_9887(ar))
  return -EOPNOTSUPP;

 calsize = ar->hw_params.cal_data_len;
 caldata = kmalloc(calsize, GFP_KERNEL);
 if (!caldata)
  return -ENOMEM;

 ath10k_pci_enable_eeprom(ar);

 for (i = 0; i < calsize; i++) {
  ret = ath10k_pci_read_eeprom(ar, i, &caldata[i]);
  if (ret)
   goto err_free;
 }

 if (!ath10k_pci_validate_cal(caldata, calsize))
  goto err_free;

 *data = caldata;
 *data_len = calsize;

 return 0;

err_free:
 kfree(caldata);

 return -EINVAL;
}
