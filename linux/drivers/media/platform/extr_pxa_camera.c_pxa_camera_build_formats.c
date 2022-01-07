
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_camera_format_xlate {int dummy; } ;
struct pxa_camera_dev {struct pxa_camera_format_xlate* user_formats; int sensor; int v4l2_dev; } ;


 scalar_t__ IS_ERR (struct pxa_camera_format_xlate*) ;
 int PTR_ERR (struct pxa_camera_format_xlate*) ;
 int pxa_camera_get_formats ;
 struct pxa_camera_format_xlate* pxa_mbus_build_fmts_xlate (int *,int ,int ) ;

__attribute__((used)) static int pxa_camera_build_formats(struct pxa_camera_dev *pcdev)
{
 struct pxa_camera_format_xlate *xlate;

 xlate = pxa_mbus_build_fmts_xlate(&pcdev->v4l2_dev, pcdev->sensor,
       pxa_camera_get_formats);
 if (IS_ERR(xlate))
  return PTR_ERR(xlate);

 pcdev->user_formats = xlate;
 return 0;
}
