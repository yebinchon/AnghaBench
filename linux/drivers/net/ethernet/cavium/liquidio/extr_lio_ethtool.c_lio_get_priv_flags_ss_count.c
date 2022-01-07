
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int chip_id; } ;
struct lio {int netdev; struct octeon_device* oct_dev; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;




 int drv ;
 int netif_info (struct lio*,int ,int ,char*) ;
 int oct_priv_flags_strings ;

__attribute__((used)) static int lio_get_priv_flags_ss_count(struct lio *lio)
{
 struct octeon_device *oct_dev = lio->oct_dev;

 switch (oct_dev->chip_id) {
 case 131:
 case 130:
  return ARRAY_SIZE(oct_priv_flags_strings);
 case 128:
 case 129:
  return -EOPNOTSUPP;
 default:
  netif_info(lio, drv, lio->netdev, "Unknown Chip !!\n");
  return -EOPNOTSUPP;
 }
}
