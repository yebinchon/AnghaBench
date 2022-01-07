
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camss {scalar_t__ version; int * genpd_link; } ;


 scalar_t__ CAMSS_8x96 ;
 int device_link_del (int ) ;

void camss_pm_domain_off(struct camss *camss, int id)
{
 if (camss->version == CAMSS_8x96)
  device_link_del(camss->genpd_link[id]);
}
