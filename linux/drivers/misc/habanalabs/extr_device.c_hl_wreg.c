
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hl_device {scalar_t__ rmmio; } ;


 int writel (scalar_t__,scalar_t__) ;

inline void hl_wreg(struct hl_device *hdev, u32 reg, u32 val)
{
 writel(val, hdev->rmmio + reg);
}
