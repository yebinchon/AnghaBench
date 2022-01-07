
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_warn (struct device*,char*,char const* const,int) ;
 int request_module (char const* const) ;

__attribute__((used)) static int netup_unidvb_request_modules(struct device *dev)
{
 static const char * const modules[] = {
  "lnbh25", "ascot2e", "horus3a", "cxd2841er", "helene", ((void*)0)
 };
 const char * const *curr_mod = modules;
 int err;

 while (*curr_mod != ((void*)0)) {
  err = request_module(*curr_mod);
  if (err) {
   dev_warn(dev, "request_module(%s) failed: %d\n",
    *curr_mod, err);
  }
  ++curr_mod;
 }
 return 0;
}
