
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int num_iqs; int num_oqs; } ;
struct net_device {int dummy; } ;
struct lio {struct octeon_device* oct_dev; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;


 struct lio* GET_LIO (struct net_device*) ;
 int lio_get_priv_flags_ss_count (struct lio*) ;
 int oct_droq_stats_strings ;
 int oct_iq_stats_strings ;
 int oct_stats_strings ;

__attribute__((used)) static int lio_get_sset_count(struct net_device *netdev, int sset)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct_dev = lio->oct_dev;

 switch (sset) {
 case 128:
  return (ARRAY_SIZE(oct_stats_strings) +
   ARRAY_SIZE(oct_iq_stats_strings) * oct_dev->num_iqs +
   ARRAY_SIZE(oct_droq_stats_strings) * oct_dev->num_oqs);
 case 129:
  return lio_get_priv_flags_ss_count(lio);
 default:
  return -EOPNOTSUPP;
 }
}
