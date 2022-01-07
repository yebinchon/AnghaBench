
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tCCS_min; } ;
struct TYPE_5__ {TYPE_1__ sdr; } ;
struct TYPE_6__ {TYPE_2__ timings; } ;
struct nand_chip {int options; TYPE_3__ data_interface; } ;


 int NAND_WAIT_TCCS ;
 scalar_t__ nand_has_setup_data_iface (struct nand_chip*) ;
 int ndelay (int) ;

__attribute__((used)) static void nand_ccs_delay(struct nand_chip *chip)
{




 if (!(chip->options & NAND_WAIT_TCCS))
  return;





 if (nand_has_setup_data_iface(chip))
  ndelay(chip->data_interface.timings.sdr.tCCS_min / 1000);
 else
  ndelay(500);
}
