
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sja1105_port_status_hl2 {int n_not_reach; int n_egr_disabled; int n_part_drop; int n_qfull; } ;


 int sja1105_unpack (int *,int *,int,int ,int) ;

__attribute__((used)) static void
sja1105_port_status_hl2_unpack(void *buf,
          struct sja1105_port_status_hl2 *status)
{

 u32 *p = buf;

 sja1105_unpack(p + 0x3, &status->n_qfull, 31, 0, 4);
 sja1105_unpack(p + 0x2, &status->n_part_drop, 31, 0, 4);
 sja1105_unpack(p + 0x1, &status->n_egr_disabled, 31, 0, 4);
 sja1105_unpack(p + 0x0, &status->n_not_reach, 31, 0, 4);
}
