
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_nand_controller {int dev; struct bam_transaction* bam_txn; } ;
struct bam_transaction {int dummy; } ;


 int devm_kfree (int ,struct bam_transaction*) ;

__attribute__((used)) static void free_bam_transaction(struct qcom_nand_controller *nandc)
{
 struct bam_transaction *bam_txn = nandc->bam_txn;

 devm_kfree(nandc->dev, bam_txn);
}
