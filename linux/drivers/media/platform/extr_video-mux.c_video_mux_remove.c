
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int entity; } ;
struct video_mux {struct v4l2_subdev subdev; } ;
struct platform_device {int dummy; } ;


 int media_entity_cleanup (int *) ;
 struct video_mux* platform_get_drvdata (struct platform_device*) ;
 int v4l2_async_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int video_mux_remove(struct platform_device *pdev)
{
 struct video_mux *vmux = platform_get_drvdata(pdev);
 struct v4l2_subdev *sd = &vmux->subdev;

 v4l2_async_unregister_subdev(sd);
 media_entity_cleanup(&sd->entity);

 return 0;
}
