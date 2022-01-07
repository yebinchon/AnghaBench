
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_uld_txq_info {int ntxq; } ;
struct TYPE_2__ {struct sge_uld_txq_info** uld_txq_info; } ;
struct adapter {TYPE_1__ sge; } ;


 int DIV_ROUND_UP (int ,int) ;

__attribute__((used)) static int sge_qinfo_uld_txq_entries(const struct adapter *adap, int uld)
{
 const struct sge_uld_txq_info *utxq_info = adap->sge.uld_txq_info[uld];

 if (!utxq_info)
  return 0;

 return DIV_ROUND_UP(utxq_info->ntxq, 4);
}
