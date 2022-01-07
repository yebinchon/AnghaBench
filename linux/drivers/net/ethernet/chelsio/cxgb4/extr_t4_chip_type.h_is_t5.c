
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum chip_type { ____Placeholder_chip_type } chip_type ;


 scalar_t__ CHELSIO_CHIP_VERSION (int) ;
 scalar_t__ CHELSIO_T5 ;

__attribute__((used)) static inline int is_t5(enum chip_type chip)
{
 return (CHELSIO_CHIP_VERSION(chip) == CHELSIO_T5);
}
