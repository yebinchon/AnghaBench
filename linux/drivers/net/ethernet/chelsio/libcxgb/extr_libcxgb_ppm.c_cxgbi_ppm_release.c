
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_ppm {int refcnt; } ;


 int kref_put (int *,int ) ;
 int ppm_destroy ;

int cxgbi_ppm_release(struct cxgbi_ppm *ppm)
{
 if (ppm) {
  int rv;

  rv = kref_put(&ppm->refcnt, ppm_destroy);
  return rv;
 }
 return 1;
}
