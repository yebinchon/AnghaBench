
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hl_device {scalar_t__ rmmio; } ;


 scalar_t__ readl (scalar_t__) ;

inline u32 hl_rreg(struct hl_device *hdev, u32 reg)
{
 return readl(hdev->rmmio + reg);
}
