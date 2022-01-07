
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int entity; } ;
struct csis_state {TYPE_1__ sd; int * clock; } ;


 size_t CSIS_CLK_MUX ;
 int clk_disable (int ) ;
 int media_entity_cleanup (int *) ;
 struct v4l2_subdev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int s5pcsis_clk_put (struct csis_state*) ;
 int s5pcsis_pm_suspend (int *,int) ;
 struct csis_state* sd_to_csis_state (struct v4l2_subdev*) ;

__attribute__((used)) static int s5pcsis_remove(struct platform_device *pdev)
{
 struct v4l2_subdev *sd = platform_get_drvdata(pdev);
 struct csis_state *state = sd_to_csis_state(sd);

 pm_runtime_disable(&pdev->dev);
 s5pcsis_pm_suspend(&pdev->dev, 1);
 clk_disable(state->clock[CSIS_CLK_MUX]);
 pm_runtime_set_suspended(&pdev->dev);
 s5pcsis_clk_put(state);

 media_entity_cleanup(&state->sd.entity);

 return 0;
}
