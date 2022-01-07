
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum board_idx { ____Placeholder_board_idx } board_idx ;


 int NETXTREME_C_VF ;
 int NETXTREME_E_P5_VF ;
 int NETXTREME_E_VF ;
 int NETXTREME_S_VF ;

__attribute__((used)) static bool bnxt_vf_pciid(enum board_idx idx)
{
 return (idx == NETXTREME_C_VF || idx == NETXTREME_E_VF ||
  idx == NETXTREME_S_VF || idx == NETXTREME_E_P5_VF);
}
