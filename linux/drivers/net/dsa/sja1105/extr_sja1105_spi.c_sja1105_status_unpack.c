
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sja1105_status {int crcchkg; int ids; int crcchkl; int configs; } ;


 int sja1105_unpack (int *,int *,int,int,int) ;

__attribute__((used)) static void sja1105_status_unpack(void *buf, struct sja1105_status *status)
{

 u32 *p = buf;






 p--;
 sja1105_unpack(p + 0x1, &status->configs, 31, 31, 4);
 sja1105_unpack(p + 0x1, &status->crcchkl, 30, 30, 4);
 sja1105_unpack(p + 0x1, &status->ids, 29, 29, 4);
 sja1105_unpack(p + 0x1, &status->crcchkg, 28, 28, 4);
}
