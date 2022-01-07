
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
struct brcms_hardware {size_t* xmtfifo_sz; } ;


 int EINVAL ;
 size_t NFIFO ;

int brcms_b_xmtfifo_sz_get(struct brcms_hardware *wlc_hw, uint fifo,
      uint *blocks)
{
 if (fifo >= NFIFO)
  return -EINVAL;

 *blocks = wlc_hw->xmtfifo_sz[fifo];

 return 0;
}
