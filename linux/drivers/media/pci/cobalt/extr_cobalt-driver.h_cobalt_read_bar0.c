
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cobalt {scalar_t__ bar0; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 cobalt_read_bar0(struct cobalt *cobalt, u32 reg)
{
 return ioread32(cobalt->bar0 + reg);
}
