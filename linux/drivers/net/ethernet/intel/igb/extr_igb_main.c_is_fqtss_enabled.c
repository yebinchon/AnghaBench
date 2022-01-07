
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_adapter {int flags; } ;


 int IGB_FLAG_FQTSS ;

__attribute__((used)) static bool is_fqtss_enabled(struct igb_adapter *adapter)
{
 return (adapter->flags & IGB_FLAG_FQTSS) ? 1 : 0;
}
