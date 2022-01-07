
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_video_channel {unsigned int input; } ;
struct file {int dummy; } ;


 struct tw686x_video_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int tw686x_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct tw686x_video_channel *vc = video_drvdata(file);

 *i = vc->input;
 return 0;
}
