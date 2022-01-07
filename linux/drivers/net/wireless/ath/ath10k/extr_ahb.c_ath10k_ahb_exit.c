
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ath10k_ahb_driver ;
 int platform_driver_unregister (int *) ;

void ath10k_ahb_exit(void)
{
 platform_driver_unregister(&ath10k_ahb_driver);
}
