
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enetc_si {int errata; TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ revision; } ;


 int ENETC_ERR_TXCSUM ;
 int ENETC_ERR_UCMCSWP ;
 int ENETC_ERR_VLAN_ISOL ;
 scalar_t__ ENETC_REV1 ;

__attribute__((used)) static void enetc_detect_errata(struct enetc_si *si)
{
 if (si->pdev->revision == ENETC_REV1)
  si->errata = ENETC_ERR_TXCSUM | ENETC_ERR_VLAN_ISOL |
        ENETC_ERR_UCMCSWP;
}
