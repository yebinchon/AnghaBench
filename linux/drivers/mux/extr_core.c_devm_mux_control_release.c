
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_control {int dummy; } ;
struct device {int dummy; } ;


 int mux_control_put (struct mux_control*) ;

__attribute__((used)) static void devm_mux_control_release(struct device *dev, void *res)
{
 struct mux_control *mux = *(struct mux_control **)res;

 mux_control_put(mux);
}
