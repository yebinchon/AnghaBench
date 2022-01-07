
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int readable; } ;


 TYPE_1__* wm8350_reg_io_map ;

__attribute__((used)) static bool wm8350_readable(struct device *dev, unsigned int reg)
{
 return wm8350_reg_io_map[reg].readable;
}
