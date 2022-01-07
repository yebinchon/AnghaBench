
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa6588_command {int dummy; } ;
struct file {struct bttv_fh* private_data; } ;
struct bttv_fh {int fh; struct bttv* btv; } ;
struct bttv {scalar_t__ radio_user; scalar_t__ has_radio_tuner; } ;


 int SAA6588_CMD_CLOSE ;
 int bttv_call_all (struct bttv*,int ,int ,int ,struct saa6588_command*) ;
 int core ;
 int ioctl ;
 int kfree (struct bttv_fh*) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;

__attribute__((used)) static int radio_release(struct file *file)
{
 struct bttv_fh *fh = file->private_data;
 struct bttv *btv = fh->btv;
 struct saa6588_command cmd;

 file->private_data = ((void*)0);
 v4l2_fh_del(&fh->fh);
 v4l2_fh_exit(&fh->fh);
 kfree(fh);

 btv->radio_user--;

 bttv_call_all(btv, core, ioctl, SAA6588_CMD_CLOSE, &cmd);

 if (btv->radio_user == 0)
  btv->has_radio_tuner = 0;
 return 0;
}
