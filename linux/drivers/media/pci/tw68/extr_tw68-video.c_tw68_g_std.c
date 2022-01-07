
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct tw68_dev {TYPE_1__* tvnorm; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int id; } ;


 struct tw68_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int tw68_g_std(struct file *file, void *priv, v4l2_std_id *id)
{
 struct tw68_dev *dev = video_drvdata(file);

 *id = dev->tvnorm->id;
 return 0;
}
