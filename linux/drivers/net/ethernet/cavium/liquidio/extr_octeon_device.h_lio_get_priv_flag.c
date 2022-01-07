
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct octeon_device {int priv_flags; } ;



__attribute__((used)) static inline u32 lio_get_priv_flag(struct octeon_device *octdev, u32 flag)
{
 return !!(octdev->priv_flags & (0x1 << flag));
}
