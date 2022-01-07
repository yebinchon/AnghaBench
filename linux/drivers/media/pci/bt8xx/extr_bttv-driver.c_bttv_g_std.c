
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct bttv {int std; } ;



__attribute__((used)) static int bttv_g_std(struct file *file, void *priv, v4l2_std_id *id)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 *id = btv->std;
 return 0;
}
