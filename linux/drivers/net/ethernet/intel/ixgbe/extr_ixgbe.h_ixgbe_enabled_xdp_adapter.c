
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int xdp_prog; } ;



__attribute__((used)) static inline bool ixgbe_enabled_xdp_adapter(struct ixgbe_adapter *adapter)
{
 return !!adapter->xdp_prog;
}
