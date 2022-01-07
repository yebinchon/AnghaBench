
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sge_uld_rxq_info {int nrxq; int nciq; } ;
struct TYPE_2__ {struct sge_uld_rxq_info** uld_rxq_info; } ;
struct adapter {TYPE_1__ sge; } ;


 int DIV_ROUND_UP (int ,int) ;

__attribute__((used)) static int sge_qinfo_uld_rspq_entries(const struct adapter *adap, int uld,
          bool ciq)
{
 const struct sge_uld_rxq_info *urxq_info = adap->sge.uld_rxq_info[uld];

 if (!urxq_info)
  return 0;

 return ciq ? DIV_ROUND_UP(urxq_info->nciq, 4) :
       DIV_ROUND_UP(urxq_info->nrxq, 4);
}
