
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dev; } ;


 int H_CSR ;
 int mei_me_reg_write (int ,int ,int ) ;
 int to_me_hw (struct mei_device*) ;
 int trace_mei_reg_write (int ,char*,int ,int ) ;

__attribute__((used)) static inline void mei_hcsr_write(struct mei_device *dev, u32 reg)
{
 trace_mei_reg_write(dev->dev, "H_CSR", H_CSR, reg);
 mei_me_reg_write(to_me_hw(dev), H_CSR, reg);
}
