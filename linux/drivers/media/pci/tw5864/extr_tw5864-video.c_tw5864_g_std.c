
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct tw5864_input {int v4l2_std; } ;
struct file {int dummy; } ;


 struct tw5864_input* video_drvdata (struct file*) ;

__attribute__((used)) static int tw5864_g_std(struct file *file, void *priv, v4l2_std_id *std)
{
 struct tw5864_input *input = video_drvdata(file);

 *std = input->v4l2_std;
 return 0;
}
