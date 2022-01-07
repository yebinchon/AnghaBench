
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct camif_dev {int * clock; } ;


 size_t CLK_CAM ;
 size_t CLK_GATE ;
 int clk_enable (int ) ;
 struct camif_dev* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int s3c_camif_runtime_resume(struct device *dev)
{
 struct camif_dev *camif = dev_get_drvdata(dev);

 clk_enable(camif->clock[CLK_GATE]);

 clk_enable(camif->clock[CLK_CAM]);
 return 0;
}
