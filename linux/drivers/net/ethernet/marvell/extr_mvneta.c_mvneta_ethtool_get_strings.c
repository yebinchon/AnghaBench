
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 int memcpy (int *,int ,int) ;
 TYPE_1__* mvneta_statistics ;

__attribute__((used)) static void mvneta_ethtool_get_strings(struct net_device *netdev, u32 sset,
           u8 *data)
{
 if (sset == ETH_SS_STATS) {
  int i;

  for (i = 0; i < ARRAY_SIZE(mvneta_statistics); i++)
   memcpy(data + i * ETH_GSTRING_LEN,
          mvneta_statistics[i].name, ETH_GSTRING_LEN);
 }
}
