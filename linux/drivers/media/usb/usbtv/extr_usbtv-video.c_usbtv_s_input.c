
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtv {int dummy; } ;
struct file {int dummy; } ;


 int usbtv_select_input (struct usbtv*,unsigned int) ;
 struct usbtv* video_drvdata (struct file*) ;

__attribute__((used)) static int usbtv_s_input(struct file *file, void *priv, unsigned int i)
{
 struct usbtv *usbtv = video_drvdata(file);

 return usbtv_select_input(usbtv, i);
}
