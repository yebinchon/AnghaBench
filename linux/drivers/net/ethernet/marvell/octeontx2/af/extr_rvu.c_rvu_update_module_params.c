
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int mkex_pfl_name; } ;


 int MKEX_NAME_LEN ;
 char const* mkex_profile ;
 int strscpy (int ,char const*,int ) ;

__attribute__((used)) static void rvu_update_module_params(struct rvu *rvu)
{
 const char *default_pfl_name = "default";

 strscpy(rvu->mkex_pfl_name,
  mkex_profile ? mkex_profile : default_pfl_name, MKEX_NAME_LEN);
}
