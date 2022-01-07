
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct bttv {TYPE_1__ c; } ;
typedef int ssize_t ;


 int UNSET ;
 int sprintf (char*,char*,int) ;
 struct video_device* to_video_device (struct device*) ;
 struct bttv* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static ssize_t show_card(struct device *cd,
    struct device_attribute *attr, char *buf)
{
 struct video_device *vfd = to_video_device(cd);
 struct bttv *btv = video_get_drvdata(vfd);
 return sprintf(buf, "%d\n", btv ? btv->c.type : UNSET);
}
