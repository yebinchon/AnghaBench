
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;


 int MLX5E_FTE_SET (void*,int ,int) ;
 int cvlan_tag ;
 int first_vid ;
 int ntohs (int ) ;

__attribute__((used)) static void
set_cvlan(void *headers_c, void *headers_v, __be16 vlan_tci)
{
 MLX5E_FTE_SET(headers_c, cvlan_tag, 1);
 MLX5E_FTE_SET(headers_v, cvlan_tag, 1);
 MLX5E_FTE_SET(headers_c, first_vid, 0xfff);
 MLX5E_FTE_SET(headers_v, first_vid, ntohs(vlan_tci));
}
