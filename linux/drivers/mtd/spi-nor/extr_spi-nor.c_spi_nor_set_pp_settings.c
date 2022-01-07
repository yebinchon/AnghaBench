
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor_pp_command {int proto; int opcode; } ;
typedef enum spi_nor_protocol { ____Placeholder_spi_nor_protocol } spi_nor_protocol ;



__attribute__((used)) static void
spi_nor_set_pp_settings(struct spi_nor_pp_command *pp,
   u8 opcode,
   enum spi_nor_protocol proto)
{
 pp->opcode = opcode;
 pp->proto = proto;
}
