
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct qcom_nand_host {int dummy; } ;
struct qcom_nand_controller {int dummy; } ;
struct nand_chip {int * oob_poi; } ;


 int clear_bam_transaction (struct qcom_nand_controller*) ;
 struct qcom_nand_controller* get_qcom_nand_controller (struct nand_chip*) ;
 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 int read_page_ecc (struct qcom_nand_host*,int *,int *,int) ;
 struct qcom_nand_host* to_qcom_nand_host (struct nand_chip*) ;

__attribute__((used)) static int qcom_nandc_read_page(struct nand_chip *chip, uint8_t *buf,
    int oob_required, int page)
{
 struct qcom_nand_host *host = to_qcom_nand_host(chip);
 struct qcom_nand_controller *nandc = get_qcom_nand_controller(chip);
 u8 *data_buf, *oob_buf = ((void*)0);

 nand_read_page_op(chip, page, 0, ((void*)0), 0);
 data_buf = buf;
 oob_buf = oob_required ? chip->oob_poi : ((void*)0);

 clear_bam_transaction(nandc);

 return read_page_ecc(host, data_buf, oob_buf, page);
}
