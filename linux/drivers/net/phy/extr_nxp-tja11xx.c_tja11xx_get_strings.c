
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct phy_device {int dummy; } ;
struct TYPE_3__ {int string; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ETH_GSTRING_LEN ;
 int strncpy (int *,int ,int) ;
 TYPE_1__* tja11xx_hw_stats ;

__attribute__((used)) static void tja11xx_get_strings(struct phy_device *phydev, u8 *data)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(tja11xx_hw_stats); i++) {
  strncpy(data + i * ETH_GSTRING_LEN,
   tja11xx_hw_stats[i].string, ETH_GSTRING_LEN);
 }
}
