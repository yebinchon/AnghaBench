
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;


 int FW_BUF_SIZE ;
 int GUNZIP_BUF (struct bnx2x*) ;
 int bnx2x_write_big_buf (struct bnx2x*,int,int,int ) ;
 int memset (int ,int ,int) ;
 int min (int,int) ;

__attribute__((used)) static void bnx2x_init_fill(struct bnx2x *bp, u32 addr, int fill,
       u32 len, u8 wb)
{
 u32 buf_len = (((len*4) > FW_BUF_SIZE) ? FW_BUF_SIZE : (len*4));
 u32 buf_len32 = buf_len/4;
 u32 i;

 memset(GUNZIP_BUF(bp), (u8)fill, buf_len);

 for (i = 0; i < len; i += buf_len32) {
  u32 cur_len = min(buf_len32, len - i);

  bnx2x_write_big_buf(bp, addr + i*4, cur_len, wb);
 }
}
