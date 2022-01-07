
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 int H_CB_WW ;
 int mei_me_reg_write (int ,int ,int ) ;
 int to_me_hw (struct mei_device*) ;

__attribute__((used)) static inline void mei_me_hcbww_write(struct mei_device *dev, u32 data)
{
 mei_me_reg_write(to_me_hw(dev), H_CB_WW, data);
}
