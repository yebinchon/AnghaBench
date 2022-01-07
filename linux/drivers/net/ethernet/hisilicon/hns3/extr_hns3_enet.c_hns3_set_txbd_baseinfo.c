
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int HNS3_TXD_FE_B ;
 int HNS3_TXD_VLD_B ;
 int hns3_set_field (int ,int ,unsigned int) ;

__attribute__((used)) static void hns3_set_txbd_baseinfo(u16 *bdtp_fe_sc_vld_ra_ri, int frag_end)
{

 if (!!frag_end)
  hns3_set_field(*bdtp_fe_sc_vld_ra_ri, HNS3_TXD_FE_B, 1U);
 hns3_set_field(*bdtp_fe_sc_vld_ra_ri, HNS3_TXD_VLD_B, 1U);
}
