
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_device {int dummy; } ;
struct file {int dummy; } ;


 struct vpfe_device* video_drvdata (struct file*) ;
 int vpfe_dbg (int,struct vpfe_device*,char*) ;
 int vpfe_get_app_input_index (struct vpfe_device*,unsigned int*) ;

__attribute__((used)) static int vpfe_g_input(struct file *file, void *priv, unsigned int *index)
{
 struct vpfe_device *vpfe = video_drvdata(file);

 vpfe_dbg(2, vpfe, "vpfe_g_input\n");

 return vpfe_get_app_input_index(vpfe, index);
}
