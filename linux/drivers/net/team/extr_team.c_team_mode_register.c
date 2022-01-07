
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_mode_item {int list; struct team_mode const* mode; } ;
struct team_mode {scalar_t__ priv_size; int kind; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ TEAM_MODE_PRIV_SIZE ;
 scalar_t__ __find_mode (int ) ;
 int is_good_mode_name (int ) ;
 int kfree (struct team_mode_item*) ;
 struct team_mode_item* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mode_list ;
 int mode_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int team_mode_register(const struct team_mode *mode)
{
 int err = 0;
 struct team_mode_item *mitem;

 if (!is_good_mode_name(mode->kind) ||
     mode->priv_size > TEAM_MODE_PRIV_SIZE)
  return -EINVAL;

 mitem = kmalloc(sizeof(*mitem), GFP_KERNEL);
 if (!mitem)
  return -ENOMEM;

 spin_lock(&mode_list_lock);
 if (__find_mode(mode->kind)) {
  err = -EEXIST;
  kfree(mitem);
  goto unlock;
 }
 mitem->mode = mode;
 list_add_tail(&mitem->list, &mode_list);
unlock:
 spin_unlock(&mode_list_lock);
 return err;
}
