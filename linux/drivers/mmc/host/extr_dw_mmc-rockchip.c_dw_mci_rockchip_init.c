
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_mci {int sdio_id0; int bus_hz; TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int RK3288_CLKGEN_DIV ;
 scalar_t__ of_device_is_compatible (int ,char*) ;

__attribute__((used)) static int dw_mci_rockchip_init(struct dw_mci *host)
{

 host->sdio_id0 = 8;

 if (of_device_is_compatible(host->dev->of_node,
        "rockchip,rk3288-dw-mshc"))
  host->bus_hz /= RK3288_CLKGEN_DIV;

 return 0;
}
