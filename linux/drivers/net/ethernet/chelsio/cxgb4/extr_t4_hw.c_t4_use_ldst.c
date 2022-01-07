
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int flags; int use_bd; } ;


 int CXGB4_FW_OK ;

__attribute__((used)) static unsigned int t4_use_ldst(struct adapter *adap)
{
 return (adap->flags & CXGB4_FW_OK) && !adap->use_bd;
}
