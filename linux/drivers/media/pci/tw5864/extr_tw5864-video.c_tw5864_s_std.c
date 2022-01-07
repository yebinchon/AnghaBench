
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct tw5864_input {int std; int nr; int v4l2_std; struct tw5864_dev* root; } ;
struct tw5864_dev {int dummy; } ;
struct file {int dummy; } ;


 int TW5864_INDIR_VIN_E (int ) ;
 int tw5864_from_v4l2_std (int ) ;
 int tw_indir_writeb (int ,int ) ;
 struct tw5864_input* video_drvdata (struct file*) ;

__attribute__((used)) static int tw5864_s_std(struct file *file, void *priv, v4l2_std_id std)
{
 struct tw5864_input *input = video_drvdata(file);
 struct tw5864_dev *dev = input->root;

 input->v4l2_std = std;
 input->std = tw5864_from_v4l2_std(std);
 tw_indir_writeb(TW5864_INDIR_VIN_E(input->nr), input->std);
 return 0;
}
