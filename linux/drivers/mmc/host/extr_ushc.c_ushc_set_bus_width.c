
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ushc_data {int dummy; } ;


 int USHC_HOST_CTRL_4BIT ;
 int ushc_hw_set_host_ctrl (struct ushc_data*,int ,int ) ;

__attribute__((used)) static int ushc_set_bus_width(struct ushc_data *ushc, int bus_width)
{
 return ushc_hw_set_host_ctrl(ushc, USHC_HOST_CTRL_4BIT,
         bus_width == 4 ? USHC_HOST_CTRL_4BIT : 0);
}
