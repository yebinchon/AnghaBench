
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int err_flags; } ;



__attribute__((used)) static inline void be_clear_error(struct be_adapter *adapter, int err_type)
{
 adapter->err_flags &= ~err_type;
}
