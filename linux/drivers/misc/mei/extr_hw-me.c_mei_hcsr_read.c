
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dev; } ;


 int H_CSR ;
 int mei_me_reg_read (int ,int ) ;
 int to_me_hw (struct mei_device const*) ;
 int trace_mei_reg_read (int ,char*,int ,int ) ;

__attribute__((used)) static inline u32 mei_hcsr_read(const struct mei_device *dev)
{
 u32 reg;

 reg = mei_me_reg_read(to_me_hw(dev), H_CSR);
 trace_mei_reg_read(dev->dev, "H_CSR", H_CSR, reg);

 return reg;
}
