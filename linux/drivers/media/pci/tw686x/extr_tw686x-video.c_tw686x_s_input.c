
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_video_channel {unsigned int input; int vidq; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 unsigned int TW686X_INPUTS_PER_CH ;
 int tw686x_set_input (struct tw686x_video_channel*,unsigned int) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct tw686x_video_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int tw686x_s_input(struct file *file, void *priv, unsigned int i)
{
 struct tw686x_video_channel *vc = video_drvdata(file);

 if (i >= TW686X_INPUTS_PER_CH)
  return -EINVAL;
 if (i == vc->input)
  return 0;



 if (vb2_is_busy(&vc->vidq))
  return -EBUSY;

 tw686x_set_input(vc, i);
 return 0;
}
