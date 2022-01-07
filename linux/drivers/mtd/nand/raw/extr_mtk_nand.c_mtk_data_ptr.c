
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;
struct mtk_nfc {int * buffer; } ;


 int mtk_data_len (struct nand_chip*) ;
 struct mtk_nfc* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static inline u8 *mtk_data_ptr(struct nand_chip *chip, int i)
{
 struct mtk_nfc *nfc = nand_get_controller_data(chip);

 return nfc->buffer + i * mtk_data_len(chip);
}
