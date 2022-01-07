
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int VPSS_CCDC_CLOCK ;
 int vpss_enable_clock (int ,int ) ;

__attribute__((used)) static int ccdc_close(struct device *device)
{

 vpss_enable_clock(VPSS_CCDC_CLOCK, 0);

 return 0;
}
