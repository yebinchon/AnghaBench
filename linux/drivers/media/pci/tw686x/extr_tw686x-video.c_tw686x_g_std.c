
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct tw686x_video_channel {int video_standard; } ;
struct file {int dummy; } ;


 struct tw686x_video_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int tw686x_g_std(struct file *file, void *priv, v4l2_std_id *id)
{
 struct tw686x_video_channel *vc = video_drvdata(file);

 *id = vc->video_standard;
 return 0;
}
