
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mdio_mux_mmioreg_state {int mux_handle; } ;


 struct mdio_mux_mmioreg_state* dev_get_platdata (int *) ;
 int mdio_mux_uninit (int ) ;

__attribute__((used)) static int mdio_mux_mmioreg_remove(struct platform_device *pdev)
{
 struct mdio_mux_mmioreg_state *s = dev_get_platdata(&pdev->dev);

 mdio_mux_uninit(s->mux_handle);

 return 0;
}
