
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
typedef int string_cpu ;


 unsigned int DPAA_BPS_NUM ;
 int DPAA_STATS_GLOBAL_LEN ;
 unsigned int DPAA_STATS_PERCPU_LEN ;
 int ETH_GSTRING_LEN ;
 char* dpaa_stats_global ;
 char** dpaa_stats_percpu ;
 int memcpy (int *,char*,unsigned int) ;
 int memset (char*,int ,int) ;
 unsigned int num_online_cpus () ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void dpaa_get_strings(struct net_device *net_dev, u32 stringset,
        u8 *data)
{
 unsigned int i, j, num_cpus, size;
 char string_cpu[ETH_GSTRING_LEN];
 u8 *strings;

 memset(string_cpu, 0, sizeof(string_cpu));
 strings = data;
 num_cpus = num_online_cpus();
 size = DPAA_STATS_GLOBAL_LEN * ETH_GSTRING_LEN;

 for (i = 0; i < DPAA_STATS_PERCPU_LEN; i++) {
  for (j = 0; j < num_cpus; j++) {
   snprintf(string_cpu, ETH_GSTRING_LEN, "%s [CPU %d]",
     dpaa_stats_percpu[i], j);
   memcpy(strings, string_cpu, ETH_GSTRING_LEN);
   strings += ETH_GSTRING_LEN;
  }
  snprintf(string_cpu, ETH_GSTRING_LEN, "%s [TOTAL]",
    dpaa_stats_percpu[i]);
  memcpy(strings, string_cpu, ETH_GSTRING_LEN);
  strings += ETH_GSTRING_LEN;
 }
 for (i = 0; i < DPAA_BPS_NUM; i++) {
  for (j = 0; j < num_cpus; j++) {
   snprintf(string_cpu, ETH_GSTRING_LEN,
     "bpool %c [CPU %d]", 'a' + i, j);
   memcpy(strings, string_cpu, ETH_GSTRING_LEN);
   strings += ETH_GSTRING_LEN;
  }
  snprintf(string_cpu, ETH_GSTRING_LEN, "bpool %c [TOTAL]",
    'a' + i);
  memcpy(strings, string_cpu, ETH_GSTRING_LEN);
  strings += ETH_GSTRING_LEN;
 }
 memcpy(strings, dpaa_stats_global, size);
}
