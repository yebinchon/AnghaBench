
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ath_bus_type { ____Placeholder_ath_bus_type } ath_bus_type ;


 char const** ath_bus_type_strings ;

__attribute__((used)) static inline const char *ath_bus_type_to_string(enum ath_bus_type bustype)
{
 return ath_bus_type_strings[bustype];
}
