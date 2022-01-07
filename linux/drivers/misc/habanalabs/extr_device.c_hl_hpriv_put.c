
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_fpriv {int refcount; } ;


 int hpriv_release ;
 int kref_put (int *,int ) ;

void hl_hpriv_put(struct hl_fpriv *hpriv)
{
 kref_put(&hpriv->refcount, hpriv_release);
}
