
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unit_str ;
typedef int u8 ;
typedef int u64 ;
typedef int test_str ;


 int ETH_GSTRING_LEN ;
 int snprintf (char*,int,char const*,...) ;
 scalar_t__ strchr (char const*,char) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static void efx_fill_test(unsigned int test_index, u8 *strings, u64 *data,
     int *test, const char *unit_format, int unit_id,
     const char *test_format, const char *test_id)
{
 char unit_str[ETH_GSTRING_LEN], test_str[ETH_GSTRING_LEN];


 if (data)
  data[test_index] = *test;


 if (strings) {
  if (strchr(unit_format, '%'))
   snprintf(unit_str, sizeof(unit_str),
     unit_format, unit_id);
  else
   strcpy(unit_str, unit_format);
  snprintf(test_str, sizeof(test_str), test_format, test_id);
  snprintf(strings + test_index * ETH_GSTRING_LEN,
    ETH_GSTRING_LEN,
    "%-6s %-24s", unit_str, test_str);
 }
}
