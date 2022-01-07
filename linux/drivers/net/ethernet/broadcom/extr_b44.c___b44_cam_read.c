
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b44 {int dummy; } ;


 int B44_CAM_CTRL ;
 int B44_CAM_DATA_HI ;
 int B44_CAM_DATA_LO ;
 int CAM_CTRL_BUSY ;
 int CAM_CTRL_INDEX_SHIFT ;
 int CAM_CTRL_READ ;
 int b44_wait_bit (struct b44*,int ,int ,int,int) ;
 int br32 (struct b44*,int ) ;
 int bw32 (struct b44*,int ,int) ;

__attribute__((used)) static inline void __b44_cam_read(struct b44 *bp, unsigned char *data, int index)
{
 u32 val;

 bw32(bp, B44_CAM_CTRL, (CAM_CTRL_READ |
       (index << CAM_CTRL_INDEX_SHIFT)));

 b44_wait_bit(bp, B44_CAM_CTRL, CAM_CTRL_BUSY, 100, 1);

 val = br32(bp, B44_CAM_DATA_LO);

 data[2] = (val >> 24) & 0xFF;
 data[3] = (val >> 16) & 0xFF;
 data[4] = (val >> 8) & 0xFF;
 data[5] = (val >> 0) & 0xFF;

 val = br32(bp, B44_CAM_DATA_HI);

 data[0] = (val >> 8) & 0xFF;
 data[1] = (val >> 0) & 0xFF;
}
