
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ena_stats {char* name; } ;


 int ENA_STATS_ARRAY_ENA_COM ;
 int ETH_GSTRING_LEN ;
 struct ena_stats* ena_stats_ena_com_strings ;
 int snprintf (int *,int ,char*,char*) ;

__attribute__((used)) static void ena_com_dev_strings(u8 **data)
{
 const struct ena_stats *ena_stats;
 int i;

 for (i = 0; i < ENA_STATS_ARRAY_ENA_COM; i++) {
  ena_stats = &ena_stats_ena_com_strings[i];

  snprintf(*data, ETH_GSTRING_LEN,
    "ena_admin_q_%s", ena_stats->name);
  (*data) += ETH_GSTRING_LEN;
 }
}
