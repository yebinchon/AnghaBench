
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_pub {scalar_t__ wlc; } ;
struct brcms_info {int dummy; } ;
struct brcms_c_info {TYPE_1__* modulecb; } ;
struct TYPE_2__ {char* name; int (* down_fn ) (void*) ;struct brcms_info* hdl; } ;


 int BRCMS_MAXMODULES ;
 int ENOSR ;
 int strncpy (char*,char const*,int) ;

int brcms_c_module_register(struct brcms_pub *pub,
       const char *name, struct brcms_info *hdl,
       int (*d_fn)(void *handle))
{
 struct brcms_c_info *wlc = (struct brcms_c_info *) pub->wlc;
 int i;


 for (i = 0; i < BRCMS_MAXMODULES; i++) {
  if (wlc->modulecb[i].name[0] == '\0') {
   strncpy(wlc->modulecb[i].name, name,
    sizeof(wlc->modulecb[i].name) - 1);
   wlc->modulecb[i].hdl = hdl;
   wlc->modulecb[i].down_fn = d_fn;
   return 0;
  }
 }

 return -ENOSR;
}
