
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ulong ;
typedef int u32 ;
struct be_eq_obj {size_t idx; struct be_adapter* adapter; } ;
struct be_aic_obj {int prev_eqd; scalar_t__ jiffies; } ;
struct be_adapter {int aic_enabled; struct be_aic_obj* aic_obj; } ;


 int R2I_DLY_ENC_0 ;
 int R2I_DLY_ENC_1 ;
 int R2I_DLY_ENC_2 ;
 int R2I_DLY_ENC_3 ;
 int be_get_new_eqd (struct be_eq_obj*) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;

__attribute__((used)) static u32 be_get_eq_delay_mult_enc(struct be_eq_obj *eqo)
{
 struct be_adapter *adapter = eqo->adapter;
 struct be_aic_obj *aic = &adapter->aic_obj[eqo->idx];
 ulong now = jiffies;
 int eqd;
 u32 mult_enc;

 if (!adapter->aic_enabled)
  return 0;

 if (jiffies_to_msecs(now - aic->jiffies) < 1)
  eqd = aic->prev_eqd;
 else
  eqd = be_get_new_eqd(eqo);

 if (eqd > 100)
  mult_enc = R2I_DLY_ENC_1;
 else if (eqd > 60)
  mult_enc = R2I_DLY_ENC_2;
 else if (eqd > 20)
  mult_enc = R2I_DLY_ENC_3;
 else
  mult_enc = R2I_DLY_ENC_0;

 aic->prev_eqd = eqd;

 return mult_enc;
}
