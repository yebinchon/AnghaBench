
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int dummy; } ;
struct fb_info {int fix; int var; scalar_t__ par; } ;


 int dprintk (struct vivid_dev*,int,char*) ;
 int vivid_fb_get_fix (struct vivid_dev*,int *) ;
 int vivid_fb_set_var (struct vivid_dev*,int *) ;

__attribute__((used)) static int vivid_fb_set_par(struct fb_info *info)
{
 int rc = 0;
 struct vivid_dev *dev = (struct vivid_dev *) info->par;

 dprintk(dev, 1, "vivid_fb_set_par\n");

 rc = vivid_fb_set_var(dev, &info->var);
 vivid_fb_get_fix(dev, &info->fix);
 return rc;
}
