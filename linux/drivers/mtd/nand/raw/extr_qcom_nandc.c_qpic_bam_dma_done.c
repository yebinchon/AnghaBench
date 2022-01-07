
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bam_transaction {int wait_second_completion; int txn_done; } ;


 int complete (int *) ;

__attribute__((used)) static void qpic_bam_dma_done(void *data)
{
 struct bam_transaction *bam_txn = data;
 if (bam_txn->wait_second_completion)
  bam_txn->wait_second_completion = 0;
 else
  complete(&bam_txn->txn_done);
}
