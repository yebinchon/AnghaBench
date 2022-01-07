
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct usbtv {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int USBTV_TV_STD ;
 int usbtv_select_norm (struct usbtv*,int) ;
 struct usbtv* video_drvdata (struct file*) ;

__attribute__((used)) static int usbtv_s_std(struct file *file, void *priv, v4l2_std_id norm)
{
 int ret = -EINVAL;
 struct usbtv *usbtv = video_drvdata(file);

 if (norm & USBTV_TV_STD)
  ret = usbtv_select_norm(usbtv, norm);

 return ret;
}
