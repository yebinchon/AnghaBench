
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_device {int dummy; } ;
struct file {int dummy; } ;


 struct vpfe_device* video_drvdata (struct file*) ;
 int vpfe_dbg (int,struct vpfe_device*,char*,unsigned int) ;
 int vpfe_set_input (struct vpfe_device*,unsigned int) ;

__attribute__((used)) static int vpfe_s_input(struct file *file, void *priv, unsigned int index)
{
 struct vpfe_device *vpfe = video_drvdata(file);

 vpfe_dbg(2, vpfe,
  "vpfe_s_input: index: %d\n", index);

 return vpfe_set_input(vpfe, index);
}
