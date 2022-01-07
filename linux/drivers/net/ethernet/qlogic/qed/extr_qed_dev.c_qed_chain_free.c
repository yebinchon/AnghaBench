
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_dev {int dummy; } ;
struct qed_chain {int mode; } ;





 int qed_chain_free_next_ptr (struct qed_dev*,struct qed_chain*) ;
 int qed_chain_free_pbl (struct qed_dev*,struct qed_chain*) ;
 int qed_chain_free_single (struct qed_dev*,struct qed_chain*) ;

void qed_chain_free(struct qed_dev *cdev, struct qed_chain *p_chain)
{
 switch (p_chain->mode) {
 case 130:
  qed_chain_free_next_ptr(cdev, p_chain);
  break;
 case 128:
  qed_chain_free_single(cdev, p_chain);
  break;
 case 129:
  qed_chain_free_pbl(cdev, p_chain);
  break;
 }
}
