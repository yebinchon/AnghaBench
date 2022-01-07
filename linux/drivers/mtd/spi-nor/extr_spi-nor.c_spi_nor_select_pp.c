
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_nor_pp_command {int proto; int opcode; } ;
struct TYPE_2__ {struct spi_nor_pp_command* page_programs; } ;
struct spi_nor {int write_proto; int program_opcode; TYPE_1__ params; } ;


 int BIT (int) ;
 int EINVAL ;
 int SNOR_HWCAPS_PP_MASK ;
 int fls (int) ;
 int spi_nor_hwcaps_pp2cmd (int ) ;

__attribute__((used)) static int spi_nor_select_pp(struct spi_nor *nor,
        u32 shared_hwcaps)
{
 int cmd, best_match = fls(shared_hwcaps & SNOR_HWCAPS_PP_MASK) - 1;
 const struct spi_nor_pp_command *pp;

 if (best_match < 0)
  return -EINVAL;

 cmd = spi_nor_hwcaps_pp2cmd(BIT(best_match));
 if (cmd < 0)
  return -EINVAL;

 pp = &nor->params.page_programs[cmd];
 nor->program_opcode = pp->opcode;
 nor->write_proto = pp->proto;
 return 0;
}
