
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xvtc_device {int xvip; } ;


 scalar_t__ XVTC_GENERATOR_OFFSET ;
 int xvip_write (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void xvtc_gen_write(struct xvtc_device *xvtc, u32 addr, u32 value)
{
 xvip_write(&xvtc->xvip, XVTC_GENERATOR_OFFSET + addr, value);
}
