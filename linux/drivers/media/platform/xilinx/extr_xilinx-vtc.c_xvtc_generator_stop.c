
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clk; } ;
struct xvtc_device {TYPE_1__ xvip; int has_generator; } ;


 int ENXIO ;
 int XVIP_CTRL_CONTROL ;
 int clk_disable_unprepare (int ) ;
 int xvip_write (TYPE_1__*,int ,int ) ;

int xvtc_generator_stop(struct xvtc_device *xvtc)
{
 if (!xvtc->has_generator)
  return -ENXIO;

 xvip_write(&xvtc->xvip, XVIP_CTRL_CONTROL, 0);

 clk_disable_unprepare(xvtc->xvip.clk);

 return 0;
}
