
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {char* flag_string; } ;


 int ETH_GSTRING_LEN ;
 unsigned int IAVF_PRIV_FLAGS_STR_LEN ;
 TYPE_1__* iavf_gstrings_priv_flags ;
 int snprintf (int *,int ,char*,char*) ;

__attribute__((used)) static void iavf_get_priv_flag_strings(struct net_device *netdev, u8 *data)
{
 unsigned int i;

 for (i = 0; i < IAVF_PRIV_FLAGS_STR_LEN; i++) {
  snprintf(data, ETH_GSTRING_LEN, "%s",
    iavf_gstrings_priv_flags[i].flag_string);
  data += ETH_GSTRING_LEN;
 }
}
