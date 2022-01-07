
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct tw5864_input {int dummy; } ;
struct file {int dummy; } ;
typedef enum tw5864_vid_std { ____Placeholder_tw5864_vid_std } tw5864_vid_std ;


 int tw5864_get_v4l2_std (int) ;
 int tw5864_input_std_get (struct tw5864_input*,int*) ;
 struct tw5864_input* video_drvdata (struct file*) ;

__attribute__((used)) static int tw5864_querystd(struct file *file, void *priv, v4l2_std_id *std)
{
 struct tw5864_input *input = video_drvdata(file);
 enum tw5864_vid_std tw_std;
 int ret;

 ret = tw5864_input_std_get(input, &tw_std);
 if (ret)
  return ret;
 *std = tw5864_get_v4l2_std(tw_std);

 return 0;
}
