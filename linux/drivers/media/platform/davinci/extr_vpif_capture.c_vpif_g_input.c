
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct file {int dummy; } ;
struct channel_obj {unsigned int input_idx; } ;


 struct video_device* video_devdata (struct file*) ;
 struct channel_obj* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int vpif_g_input(struct file *file, void *priv, unsigned int *index)
{
 struct video_device *vdev = video_devdata(file);
 struct channel_obj *ch = video_get_drvdata(vdev);

 *index = ch->input_idx;
 return 0;
}
