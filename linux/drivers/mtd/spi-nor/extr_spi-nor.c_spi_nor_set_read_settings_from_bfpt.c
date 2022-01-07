
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_nor_read_command {int num_mode_clocks; int num_wait_states; int opcode; int proto; } ;
typedef enum spi_nor_protocol { ____Placeholder_spi_nor_protocol } spi_nor_protocol ;



__attribute__((used)) static void
spi_nor_set_read_settings_from_bfpt(struct spi_nor_read_command *read,
        u16 half,
        enum spi_nor_protocol proto)
{
 read->num_mode_clocks = (half >> 5) & 0x07;
 read->num_wait_states = (half >> 0) & 0x1f;
 read->opcode = (half >> 8) & 0xff;
 read->proto = proto;
}
