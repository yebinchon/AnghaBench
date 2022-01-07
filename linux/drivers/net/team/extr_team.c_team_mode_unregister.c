
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_mode_item {int list; } ;
struct team_mode {int kind; } ;


 struct team_mode_item* __find_mode (int ) ;
 int kfree (struct team_mode_item*) ;
 int list_del_init (int *) ;
 int mode_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void team_mode_unregister(const struct team_mode *mode)
{
 struct team_mode_item *mitem;

 spin_lock(&mode_list_lock);
 mitem = __find_mode(mode->kind);
 if (mitem) {
  list_del_init(&mitem->list);
  kfree(mitem);
 }
 spin_unlock(&mode_list_lock);
}
