
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int sge_qinfo_uld_rspq_entries (struct adapter const*,int,int) ;

__attribute__((used)) static int sge_qinfo_uld_rxq_entries(const struct adapter *adap, int uld)
{
 return sge_qinfo_uld_rspq_entries(adap, uld, 0);
}
