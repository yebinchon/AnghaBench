
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int dummy; } ;
struct fb_info {scalar_t__ par; } ;







 int dprintk (struct vivid_dev*,int,char*,int) ;

__attribute__((used)) static int vivid_fb_blank(int blank_mode, struct fb_info *info)
{
 struct vivid_dev *dev = (struct vivid_dev *)info->par;

 dprintk(dev, 1, "Set blanking mode : %d\n", blank_mode);
 switch (blank_mode) {
 case 129:
  break;
 case 131:
 case 132:
 case 128:
 case 130:
  break;
 }
 return 0;
}
