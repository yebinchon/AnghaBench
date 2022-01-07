
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myri10ge_priv {int fw_name_allocated; char* fw_name; } ;


 int kfree (char*) ;

__attribute__((used)) static void set_fw_name(struct myri10ge_priv *mgp, char *name, bool allocated)
{
 if (mgp->fw_name_allocated)
  kfree(mgp->fw_name);
 mgp->fw_name = name;
 mgp->fw_name_allocated = allocated;
}
