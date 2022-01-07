
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007 {int hdl; } ;


 int v4l2_ctrl_handler_free (int *) ;

void go7007_v4l2_remove(struct go7007 *go)
{
 v4l2_ctrl_handler_free(&go->hdl);
}
