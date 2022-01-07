
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct ceu_device {unsigned int sd_index; } ;


 struct ceu_device* video_drvdata (struct file*) ;

__attribute__((used)) static int ceu_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct ceu_device *ceudev = video_drvdata(file);

 *i = ceudev->sd_index;

 return 0;
}
