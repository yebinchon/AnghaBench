
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bah; int bal; int len; int head; int tail; } ;
struct TYPE_4__ {int bah; int bal; int len; int head; int tail; } ;
struct TYPE_6__ {TYPE_2__ arq; TYPE_1__ asq; } ;
struct iavf_hw {TYPE_3__ aq; } ;


 int IAVF_VF_ARQBAH1 ;
 int IAVF_VF_ARQBAL1 ;
 int IAVF_VF_ARQH1 ;
 int IAVF_VF_ARQLEN1 ;
 int IAVF_VF_ARQT1 ;
 int IAVF_VF_ATQBAH1 ;
 int IAVF_VF_ATQBAL1 ;
 int IAVF_VF_ATQH1 ;
 int IAVF_VF_ATQLEN1 ;
 int IAVF_VF_ATQT1 ;

__attribute__((used)) static void iavf_adminq_init_regs(struct iavf_hw *hw)
{

 hw->aq.asq.tail = IAVF_VF_ATQT1;
 hw->aq.asq.head = IAVF_VF_ATQH1;
 hw->aq.asq.len = IAVF_VF_ATQLEN1;
 hw->aq.asq.bal = IAVF_VF_ATQBAL1;
 hw->aq.asq.bah = IAVF_VF_ATQBAH1;
 hw->aq.arq.tail = IAVF_VF_ARQT1;
 hw->aq.arq.head = IAVF_VF_ARQH1;
 hw->aq.arq.len = IAVF_VF_ARQLEN1;
 hw->aq.arq.bal = IAVF_VF_ARQBAL1;
 hw->aq.arq.bah = IAVF_VF_ARQBAH1;
}
