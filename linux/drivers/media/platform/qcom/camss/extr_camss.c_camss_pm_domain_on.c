
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camss {scalar_t__ version; int * genpd_link; int * genpd; int dev; } ;


 scalar_t__ CAMSS_8x96 ;
 int DL_FLAG_PM_RUNTIME ;
 int DL_FLAG_RPM_ACTIVE ;
 int DL_FLAG_STATELESS ;
 int EINVAL ;
 int device_link_add (int ,int ,int) ;

int camss_pm_domain_on(struct camss *camss, int id)
{
 if (camss->version == CAMSS_8x96) {
  camss->genpd_link[id] = device_link_add(camss->dev,
    camss->genpd[id], DL_FLAG_STATELESS |
    DL_FLAG_PM_RUNTIME | DL_FLAG_RPM_ACTIVE);

  if (!camss->genpd_link[id])
   return -EINVAL;
 }

 return 0;
}
