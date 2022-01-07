
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 int ME_CB_RW ;
 int mei_me_reg_read (int ,int ) ;
 int to_me_hw (struct mei_device const*) ;

__attribute__((used)) static inline u32 mei_me_mecbrw_read(const struct mei_device *dev)
{
 return mei_me_reg_read(to_me_hw(dev), ME_CB_RW);
}
