
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msecs_to_jiffies (int) ;
 int platform_driver_register (int *) ;
 int poll_jiffies ;
 int sfp_driver ;

__attribute__((used)) static int sfp_init(void)
{
 poll_jiffies = msecs_to_jiffies(100);

 return platform_driver_register(&sfp_driver);
}
