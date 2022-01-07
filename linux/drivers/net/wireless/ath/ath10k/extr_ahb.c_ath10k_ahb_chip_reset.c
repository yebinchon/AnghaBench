
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ath10k_ahb_clock_disable (struct ath10k*) ;
 int ath10k_ahb_halt_chip (struct ath10k*) ;
 int ath10k_ahb_prepare_device (struct ath10k*) ;

__attribute__((used)) static int ath10k_ahb_chip_reset(struct ath10k *ar)
{
 int ret;

 ath10k_ahb_halt_chip(ar);
 ath10k_ahb_clock_disable(ar);

 ret = ath10k_ahb_prepare_device(ar);
 if (ret)
  return ret;

 return 0;
}
