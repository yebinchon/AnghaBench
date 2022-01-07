
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int dummy; } ;
struct fimc_isp {TYPE_1__* pdev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int __fimc_vidioc_querycap (int *,struct v4l2_capability*) ;
 struct fimc_isp* video_drvdata (struct file*) ;

__attribute__((used)) static int isp_video_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct fimc_isp *isp = video_drvdata(file);

 __fimc_vidioc_querycap(&isp->pdev->dev, cap);
 return 0;
}
