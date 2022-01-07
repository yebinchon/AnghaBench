
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ath_ahb_driver ;
 int platform_driver_register (int *) ;

int ath_ahb_init(void)
{
 return platform_driver_register(&ath_ahb_driver);
}
