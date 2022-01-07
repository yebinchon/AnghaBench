
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_csi_dev {int csi; } ;
struct platform_device {int dummy; } ;


 struct sun6i_csi_dev* platform_get_drvdata (struct platform_device*) ;
 int sun6i_csi_v4l2_cleanup (int *) ;

__attribute__((used)) static int sun6i_csi_remove(struct platform_device *pdev)
{
 struct sun6i_csi_dev *sdev = platform_get_drvdata(pdev);

 sun6i_csi_v4l2_cleanup(&sdev->csi);

 return 0;
}
