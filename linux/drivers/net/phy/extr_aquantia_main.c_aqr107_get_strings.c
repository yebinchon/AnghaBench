
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct phy_device {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int AQR107_SGMII_STAT_SZ ;
 int ETH_GSTRING_LEN ;
 TYPE_1__* aqr107_hw_stats ;
 int strscpy (int *,int ,int) ;

__attribute__((used)) static void aqr107_get_strings(struct phy_device *phydev, u8 *data)
{
 int i;

 for (i = 0; i < AQR107_SGMII_STAT_SZ; i++)
  strscpy(data + i * ETH_GSTRING_LEN, aqr107_hw_stats[i].name,
   ETH_GSTRING_LEN);
}
