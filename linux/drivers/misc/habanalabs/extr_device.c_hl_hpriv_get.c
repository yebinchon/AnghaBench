
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_fpriv {int refcount; } ;


 int kref_get (int *) ;

void hl_hpriv_get(struct hl_fpriv *hpriv)
{
 kref_get(&hpriv->refcount);
}
