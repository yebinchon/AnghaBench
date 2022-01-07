
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int adapter_list; } ;


 int adapter_list ;
 int adapter_list_lock ;
 int list_add_tail (int *,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void add_adapter(struct adapter *adap)
{
 write_lock_bh(&adapter_list_lock);
 list_add_tail(&adap->adapter_list, &adapter_list);
 write_unlock_bh(&adapter_list_lock);
}
