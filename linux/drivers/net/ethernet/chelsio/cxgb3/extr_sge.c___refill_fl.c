
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {scalar_t__ credits; scalar_t__ size; } ;
struct adapter {int dummy; } ;


 int GFP_ATOMIC ;
 int MAX_RX_REFILL ;
 int __GFP_COMP ;
 int min (int ,scalar_t__) ;
 int refill_fl (struct adapter*,struct sge_fl*,int ,int) ;

__attribute__((used)) static inline void __refill_fl(struct adapter *adap, struct sge_fl *fl)
{
 refill_fl(adap, fl, min(MAX_RX_REFILL, fl->size - fl->credits),
    GFP_ATOMIC | __GFP_COMP);
}
