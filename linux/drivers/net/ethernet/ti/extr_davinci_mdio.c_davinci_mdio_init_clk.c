
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bus_freq; } ;
struct davinci_mdio_data {int clk_div; int access_time; TYPE_1__ pdata; int clk; } ;


 int CONTROL_MAX_DIV ;
 int clk_get_rate (int ) ;
 int usecs_to_jiffies (int) ;

__attribute__((used)) static void davinci_mdio_init_clk(struct davinci_mdio_data *data)
{
 u32 mdio_in, div, mdio_out_khz, access_time;

 mdio_in = clk_get_rate(data->clk);
 div = (mdio_in / data->pdata.bus_freq) - 1;
 if (div > CONTROL_MAX_DIV)
  div = CONTROL_MAX_DIV;

 data->clk_div = div;






 mdio_out_khz = mdio_in / (1000 * (div + 1));
 access_time = (88 * 1000) / mdio_out_khz;







 data->access_time = usecs_to_jiffies(access_time * 4);
 if (!data->access_time)
  data->access_time = 1;
}
