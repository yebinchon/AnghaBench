
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_nor_read_command {scalar_t__ num_wait_states; scalar_t__ num_mode_clocks; int proto; int opcode; } ;
struct TYPE_2__ {struct spi_nor_read_command* reads; } ;
struct spi_nor {scalar_t__ read_dummy; int read_proto; int read_opcode; TYPE_1__ params; } ;


 int BIT (int) ;
 int EINVAL ;
 int SNOR_HWCAPS_READ_MASK ;
 int fls (int) ;
 int spi_nor_hwcaps_read2cmd (int ) ;

__attribute__((used)) static int spi_nor_select_read(struct spi_nor *nor,
          u32 shared_hwcaps)
{
 int cmd, best_match = fls(shared_hwcaps & SNOR_HWCAPS_READ_MASK) - 1;
 const struct spi_nor_read_command *read;

 if (best_match < 0)
  return -EINVAL;

 cmd = spi_nor_hwcaps_read2cmd(BIT(best_match));
 if (cmd < 0)
  return -EINVAL;

 read = &nor->params.reads[cmd];
 nor->read_opcode = read->opcode;
 nor->read_proto = read->proto;
 nor->read_dummy = read->num_mode_clocks + read->num_wait_states;
 return 0;
}
