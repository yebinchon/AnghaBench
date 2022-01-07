
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw68_dev {unsigned int input; } ;
struct file {int dummy; } ;


 struct tw68_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int tw68_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct tw68_dev *dev = video_drvdata(file);

 *i = dev->input;
 return 0;
}
