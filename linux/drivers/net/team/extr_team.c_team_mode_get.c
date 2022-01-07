
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_mode_item {struct team_mode* mode; } ;
struct team_mode {int owner; } ;


 struct team_mode_item* __find_mode (char const*) ;
 int mode_list_lock ;
 int request_module (char*,char const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_module_get (int ) ;

__attribute__((used)) static const struct team_mode *team_mode_get(const char *kind)
{
 struct team_mode_item *mitem;
 const struct team_mode *mode = ((void*)0);

 spin_lock(&mode_list_lock);
 mitem = __find_mode(kind);
 if (!mitem) {
  spin_unlock(&mode_list_lock);
  request_module("team-mode-%s", kind);
  spin_lock(&mode_list_lock);
  mitem = __find_mode(kind);
 }
 if (mitem) {
  mode = mitem->mode;
  if (!try_module_get(mode->owner))
   mode = ((void*)0);
 }

 spin_unlock(&mode_list_lock);
 return mode;
}
