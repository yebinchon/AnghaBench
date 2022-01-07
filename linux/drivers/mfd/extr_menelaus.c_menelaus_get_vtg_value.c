
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menelaus_vtg_value {int vtg; int val; } ;


 int EINVAL ;

__attribute__((used)) static int menelaus_get_vtg_value(int vtg, const struct menelaus_vtg_value *tbl,
      int n)
{
 int i;

 for (i = 0; i < n; i++, tbl++)
  if (tbl->vtg == vtg)
   return tbl->val;
 return -EINVAL;
}
