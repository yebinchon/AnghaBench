
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct be_adapter {int err_flags; } ;



__attribute__((used)) static inline u8 be_check_error(struct be_adapter *adapter, u32 err_type)
{
 return (adapter->err_flags & err_type);
}
