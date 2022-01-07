
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl_handler; } ;
struct imx258 {int mutex; TYPE_1__ sd; } ;


 int mutex_destroy (int *) ;
 int v4l2_ctrl_handler_free (int ) ;

__attribute__((used)) static void imx258_free_controls(struct imx258 *imx258)
{
 v4l2_ctrl_handler_free(imx258->sd.ctrl_handler);
 mutex_destroy(&imx258->mutex);
}
