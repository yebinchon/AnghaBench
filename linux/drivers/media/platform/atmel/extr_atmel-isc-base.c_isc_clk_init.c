
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isc_device {TYPE_1__* isc_clks; } ;
struct TYPE_2__ {int clk; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ERR_PTR (int ) ;
 int isc_clk_register (struct isc_device*,unsigned int) ;

int isc_clk_init(struct isc_device *isc)
{
 unsigned int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(isc->isc_clks); i++)
  isc->isc_clks[i].clk = ERR_PTR(-EINVAL);

 for (i = 0; i < ARRAY_SIZE(isc->isc_clks); i++) {
  ret = isc_clk_register(isc, i);
  if (ret)
   return ret;
 }

 return 0;
}
