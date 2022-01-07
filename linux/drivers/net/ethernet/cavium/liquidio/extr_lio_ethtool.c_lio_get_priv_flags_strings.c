
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct octeon_device {int chip_id; } ;
struct lio {int netdev; struct octeon_device* oct_dev; } ;


 int ARRAY_SIZE (char**) ;
 int ETH_GSTRING_LEN ;




 int drv ;
 int netif_info (struct lio*,int ,int ,char*) ;
 char** oct_priv_flags_strings ;
 int sprintf (int *,char*,char*) ;

__attribute__((used)) static void lio_get_priv_flags_strings(struct lio *lio, u8 *data)
{
 struct octeon_device *oct_dev = lio->oct_dev;
 int i;

 switch (oct_dev->chip_id) {
 case 131:
 case 130:
  for (i = 0; i < ARRAY_SIZE(oct_priv_flags_strings); i++) {
   sprintf(data, "%s", oct_priv_flags_strings[i]);
   data += ETH_GSTRING_LEN;
  }
  break;
 case 128:
 case 129:
  break;
 default:
  netif_info(lio, drv, lio->netdev, "Unknown Chip !!\n");
  break;
 }
}
