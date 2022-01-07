
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int * asd; int async_list; } ;


 int list_del_init (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static void v4l2_async_cleanup(struct v4l2_subdev *sd)
{
 v4l2_device_unregister_subdev(sd);




 list_del_init(&sd->async_list);
 sd->asd = ((void*)0);
}
