
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_ppm {int dummy; } ;


 int vfree (struct cxgbi_ppm*) ;

__attribute__((used)) static void ppm_free(struct cxgbi_ppm *ppm)
{
 vfree(ppm);
}
