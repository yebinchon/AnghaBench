
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HNS_RXD_BUFNUM_M ;
 int HNS_RXD_BUFNUM_S ;
 int hnae_get_field (int ,int ,int ) ;

__attribute__((used)) static void get_rx_desc_bnum(u32 bnum_flag, int *out_bnum)
{
 *out_bnum = hnae_get_field(bnum_flag,
       HNS_RXD_BUFNUM_M, HNS_RXD_BUFNUM_S);
}
