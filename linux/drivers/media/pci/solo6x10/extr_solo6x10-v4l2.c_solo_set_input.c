
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ erase_off (struct solo_dev*) ;
 int solo_v4l2_set_ch (struct solo_dev*,unsigned int) ;
 struct solo_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int solo_set_input(struct file *file, void *priv, unsigned int index)
{
 struct solo_dev *solo_dev = video_drvdata(file);
 int ret = solo_v4l2_set_ch(solo_dev, index);

 if (!ret) {
  while (erase_off(solo_dev))
                   ;
 }

 return ret;
}
