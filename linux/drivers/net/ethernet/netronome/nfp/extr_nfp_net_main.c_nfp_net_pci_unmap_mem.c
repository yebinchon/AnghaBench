
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {scalar_t__ data_vnic_bar; scalar_t__ qc_area; scalar_t__ mac_stats_bar; scalar_t__ vf_cfg_bar; scalar_t__ vfcfg_tbl2_area; } ;


 int nfp_cpp_area_release_free (scalar_t__) ;

__attribute__((used)) static void nfp_net_pci_unmap_mem(struct nfp_pf *pf)
{
 if (pf->vfcfg_tbl2_area)
  nfp_cpp_area_release_free(pf->vfcfg_tbl2_area);
 if (pf->vf_cfg_bar)
  nfp_cpp_area_release_free(pf->vf_cfg_bar);
 if (pf->mac_stats_bar)
  nfp_cpp_area_release_free(pf->mac_stats_bar);
 nfp_cpp_area_release_free(pf->qc_area);
 nfp_cpp_area_release_free(pf->data_vnic_bar);
}
