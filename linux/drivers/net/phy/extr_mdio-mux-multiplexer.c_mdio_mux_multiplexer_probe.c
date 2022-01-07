
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct mdio_mux_multiplexer_state {int mux_handle; int muxc; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct mdio_mux_multiplexer_state* devm_kzalloc (struct device*,int,int ) ;
 int devm_mux_control_get (struct device*,int *) ;
 int mdio_mux_init (struct device*,int ,int ,int *,struct platform_device*,int *) ;
 int mdio_mux_multiplexer_switch_fn ;
 int platform_set_drvdata (struct platform_device*,struct mdio_mux_multiplexer_state*) ;

__attribute__((used)) static int mdio_mux_multiplexer_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct mdio_mux_multiplexer_state *s;
 int ret = 0;

 s = devm_kzalloc(&pdev->dev, sizeof(*s), GFP_KERNEL);
 if (!s)
  return -ENOMEM;

 s->muxc = devm_mux_control_get(dev, ((void*)0));
 if (IS_ERR(s->muxc)) {
  ret = PTR_ERR(s->muxc);
  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev, "Failed to get mux: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, s);

 ret = mdio_mux_init(&pdev->dev, pdev->dev.of_node,
       mdio_mux_multiplexer_switch_fn, &s->mux_handle,
       pdev, ((void*)0));

 return ret;
}
