
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sja1105_port_status_hl2 {int * qlevel; int * qlevel_hwm; } ;


 int sja1105_unpack (int *,int *,int,int,int) ;

__attribute__((used)) static void
sja1105pqrs_port_status_qlevel_unpack(void *buf,
          struct sja1105_port_status_hl2 *status)
{

 u32 *p = buf;
 int i;

 for (i = 0; i < 8; i++) {
  sja1105_unpack(p + i, &status->qlevel_hwm[i], 24, 16, 4);
  sja1105_unpack(p + i, &status->qlevel[i], 8, 0, 4);
 }
}
