
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_dcb {int dummy; } ;


 int kfree (struct qlcnic_dcb*) ;

__attribute__((used)) static inline void qlcnic_clear_dcb_ops(struct qlcnic_dcb *dcb)
{
 kfree(dcb);
}
