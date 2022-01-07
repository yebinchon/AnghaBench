
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_chip {int options; TYPE_2__* controller; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int setup_data_interface; } ;


 int NAND_KEEP_TIMINGS ;

__attribute__((used)) static inline bool nand_has_setup_data_iface(struct nand_chip *chip)
{
 if (!chip->controller || !chip->controller->ops ||
     !chip->controller->ops->setup_data_interface)
  return 0;

 if (chip->options & NAND_KEEP_TIMINGS)
  return 0;

 return 1;
}
