
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw68_tvnorm {int id; } ;
struct tw68_dev {int width; int height; struct tw68_tvnorm const* tvnorm; } ;


 int V4L2_STD_525_60 ;
 int tw68_set_tvnorm_hw (struct tw68_dev*) ;

__attribute__((used)) static void set_tvnorm(struct tw68_dev *dev, const struct tw68_tvnorm *norm)
{
 if (norm != dev->tvnorm) {
  dev->width = 720;
  dev->height = (norm->id & V4L2_STD_525_60) ? 480 : 576;
  dev->tvnorm = norm;
  tw68_set_tvnorm_hw(dev);
 }
}
