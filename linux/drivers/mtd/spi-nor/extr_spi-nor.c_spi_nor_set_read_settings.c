
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct spi_nor_read_command {int proto; void* opcode; void* num_wait_states; void* num_mode_clocks; } ;
typedef enum spi_nor_protocol { ____Placeholder_spi_nor_protocol } spi_nor_protocol ;



__attribute__((used)) static void
spi_nor_set_read_settings(struct spi_nor_read_command *read,
     u8 num_mode_clocks,
     u8 num_wait_states,
     u8 opcode,
     enum spi_nor_protocol proto)
{
 read->num_mode_clocks = num_mode_clocks;
 read->num_wait_states = num_wait_states;
 read->opcode = opcode;
 read->proto = proto;
}
