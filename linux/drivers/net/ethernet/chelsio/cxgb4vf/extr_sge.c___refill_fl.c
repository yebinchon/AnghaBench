
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {scalar_t__ avail; } ;
struct adapter {int dummy; } ;


 int GFP_ATOMIC ;
 scalar_t__ MAX_RX_REFILL ;
 scalar_t__ fl_cap (struct sge_fl*) ;
 int min (unsigned int,scalar_t__) ;
 int refill_fl (struct adapter*,struct sge_fl*,int ,int ) ;

__attribute__((used)) static inline void __refill_fl(struct adapter *adapter, struct sge_fl *fl)
{
 refill_fl(adapter, fl,
    min((unsigned int)MAX_RX_REFILL, fl_cap(fl) - fl->avail),
    GFP_ATOMIC);
}
