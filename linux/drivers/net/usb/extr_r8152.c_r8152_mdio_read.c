
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int dummy; } ;


 scalar_t__ OCP_BASE_MII ;
 int ocp_reg_read (struct r8152*,scalar_t__) ;

__attribute__((used)) static inline int r8152_mdio_read(struct r8152 *tp, u32 reg_addr)
{
 return ocp_reg_read(tp, OCP_BASE_MII + reg_addr * 2);
}
