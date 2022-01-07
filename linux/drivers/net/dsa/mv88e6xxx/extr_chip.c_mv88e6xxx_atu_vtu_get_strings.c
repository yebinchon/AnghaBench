
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 unsigned int ARRAY_SIZE (int *) ;
 unsigned int ETH_GSTRING_LEN ;
 int * mv88e6xxx_atu_vtu_stats_strings ;
 int strlcpy (int *,int ,unsigned int) ;

__attribute__((used)) static void mv88e6xxx_atu_vtu_get_strings(uint8_t *data)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(mv88e6xxx_atu_vtu_stats_strings); i++)
  strlcpy(data + i * ETH_GSTRING_LEN,
   mv88e6xxx_atu_vtu_stats_strings[i],
   ETH_GSTRING_LEN);
}
