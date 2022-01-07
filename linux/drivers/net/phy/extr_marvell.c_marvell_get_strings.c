
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct phy_device {int dummy; } ;
struct TYPE_2__ {int string; } ;


 int ETH_GSTRING_LEN ;
 int marvell_get_sset_count (struct phy_device*) ;
 TYPE_1__* marvell_hw_stats ;
 int strlcpy (int *,int ,int) ;

__attribute__((used)) static void marvell_get_strings(struct phy_device *phydev, u8 *data)
{
 int count = marvell_get_sset_count(phydev);
 int i;

 for (i = 0; i < count; i++) {
  strlcpy(data + i * ETH_GSTRING_LEN,
   marvell_hw_stats[i].string, ETH_GSTRING_LEN);
 }
}
