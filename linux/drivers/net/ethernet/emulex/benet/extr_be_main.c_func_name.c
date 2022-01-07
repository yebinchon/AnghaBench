
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int dummy; } ;


 scalar_t__ be_physfn (struct be_adapter*) ;

__attribute__((used)) static inline char *func_name(struct be_adapter *adapter)
{
 return be_physfn(adapter) ? "PF" : "VF";
}
