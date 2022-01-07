
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_clk {TYPE_1__* ops; } ;
struct TYPE_2__ {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static void v4l2_clk_unlock_driver(struct v4l2_clk *clk)
{
 module_put(clk->ops->owner);
}
