
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007 {unsigned int input; } ;
struct file {int dummy; } ;


 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_input(struct file *file, void *priv, unsigned int *input)
{
 struct go7007 *go = video_drvdata(file);

 *input = go->input;

 return 0;
}
