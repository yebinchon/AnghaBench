
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int iq; int oq; } ;
struct octeon_device {TYPE_1__ io_qmask; } ;
struct net_device {int dummy; } ;
struct lio {int netdev; struct octeon_device* oct_dev; } ;


 int ARRAY_SIZE (char**) ;
 int BIT_ULL (int) ;
 int ETH_GSTRING_LEN ;


 struct lio* GET_LIO (struct net_device*) ;
 int MAX_OCTEON_INSTR_QUEUES (struct octeon_device*) ;
 int MAX_OCTEON_OUTPUT_QUEUES (struct octeon_device*) ;
 int drv ;
 int lio_get_priv_flags_strings (struct lio*,int *) ;
 int netif_info (struct lio*,int ,int ,char*) ;
 char** oct_droq_stats_strings ;
 char** oct_iq_stats_strings ;
 char** oct_vf_stats_strings ;
 int sprintf (int *,char*,...) ;

__attribute__((used)) static void lio_vf_get_strings(struct net_device *netdev, u32 stringset,
          u8 *data)
{
 int num_iq_stats, num_oq_stats, i, j;
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct_dev = lio->oct_dev;
 int num_stats;

 switch (stringset) {
 case 128:
  num_stats = ARRAY_SIZE(oct_vf_stats_strings);
  for (j = 0; j < num_stats; j++) {
   sprintf(data, "%s", oct_vf_stats_strings[j]);
   data += ETH_GSTRING_LEN;
  }

  num_iq_stats = ARRAY_SIZE(oct_iq_stats_strings);
  for (i = 0; i < MAX_OCTEON_INSTR_QUEUES(oct_dev); i++) {
   if (!(oct_dev->io_qmask.iq & BIT_ULL(i)))
    continue;
   for (j = 0; j < num_iq_stats; j++) {
    sprintf(data, "tx-%d-%s", i,
     oct_iq_stats_strings[j]);
    data += ETH_GSTRING_LEN;
   }
  }

  num_oq_stats = ARRAY_SIZE(oct_droq_stats_strings);
  for (i = 0; i < MAX_OCTEON_OUTPUT_QUEUES(oct_dev); i++) {
   if (!(oct_dev->io_qmask.oq & BIT_ULL(i)))
    continue;
   for (j = 0; j < num_oq_stats; j++) {
    sprintf(data, "rx-%d-%s", i,
     oct_droq_stats_strings[j]);
    data += ETH_GSTRING_LEN;
   }
  }
  break;

 case 129:
  lio_get_priv_flags_strings(lio, data);
  break;
 default:
  netif_info(lio, drv, lio->netdev, "Unknown Stringset !!\n");
  break;
 }
}
