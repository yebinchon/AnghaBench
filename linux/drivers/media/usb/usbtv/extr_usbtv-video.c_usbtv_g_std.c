
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct usbtv {int norm; } ;
struct file {int dummy; } ;


 struct usbtv* video_drvdata (struct file*) ;

__attribute__((used)) static int usbtv_g_std(struct file *file, void *priv, v4l2_std_id *norm)
{
 struct usbtv *usbtv = video_drvdata(file);
 *norm = usbtv->norm;
 return 0;
}
