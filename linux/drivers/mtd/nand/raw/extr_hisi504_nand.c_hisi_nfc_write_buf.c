
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;
struct hinfc_host {scalar_t__ offset; scalar_t__ buffer; } ;


 int memcpy (scalar_t__,int const*,int) ;
 struct hinfc_host* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static void
hisi_nfc_write_buf(struct nand_chip *chip, const uint8_t *buf, int len)
{
 struct hinfc_host *host = nand_get_controller_data(chip);

 memcpy(host->buffer + host->offset, buf, len);
 host->offset += len;
}
