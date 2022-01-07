
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_chip {int dummy; } ;
struct device {int dummy; } ;


 int mux_chip_unregister (struct mux_chip*) ;

__attribute__((used)) static void devm_mux_chip_reg_release(struct device *dev, void *res)
{
 struct mux_chip *mux_chip = *(struct mux_chip **)res;

 mux_chip_unregister(mux_chip);
}
