
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mdio_mux_multiplexer_state {int muxc; scalar_t__ do_deselect; int mux_handle; } ;


 int mdio_mux_uninit (int ) ;
 int mux_control_deselect (int ) ;
 struct mdio_mux_multiplexer_state* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mdio_mux_multiplexer_remove(struct platform_device *pdev)
{
 struct mdio_mux_multiplexer_state *s = platform_get_drvdata(pdev);

 mdio_mux_uninit(s->mux_handle);

 if (s->do_deselect)
  mux_control_deselect(s->muxc);

 return 0;
}
