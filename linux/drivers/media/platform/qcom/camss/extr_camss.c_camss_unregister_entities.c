
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camss {unsigned int csiphy_num; unsigned int csid_num; unsigned int vfe_num; int * vfe; int ispif; int * csid; int * csiphy; } ;


 int msm_csid_unregister_entity (int *) ;
 int msm_csiphy_unregister_entity (int *) ;
 int msm_ispif_unregister_entities (int *) ;
 int msm_vfe_unregister_entities (int *) ;

__attribute__((used)) static void camss_unregister_entities(struct camss *camss)
{
 unsigned int i;

 for (i = 0; i < camss->csiphy_num; i++)
  msm_csiphy_unregister_entity(&camss->csiphy[i]);

 for (i = 0; i < camss->csid_num; i++)
  msm_csid_unregister_entity(&camss->csid[i]);

 msm_ispif_unregister_entities(&camss->ispif);

 for (i = 0; i < camss->vfe_num; i++)
  msm_vfe_unregister_entities(&camss->vfe[i]);
}
