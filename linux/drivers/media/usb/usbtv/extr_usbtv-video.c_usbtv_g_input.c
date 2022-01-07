
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtv {unsigned int input; } ;
struct file {int dummy; } ;


 struct usbtv* video_drvdata (struct file*) ;

__attribute__((used)) static int usbtv_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct usbtv *usbtv = video_drvdata(file);
 *i = usbtv->input;
 return 0;
}
