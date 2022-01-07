
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 int TCAM_CTL ;
 int TCAM_CTL_RWC_TCAM_WRITE ;
 int TCAM_CTL_STAT ;
 int TCAM_KEY_0 ;
 int TCAM_KEY_MASK_0 ;
 int nw64 (int ,int) ;
 int tcam_wait_bit (struct niu*,int ) ;

__attribute__((used)) static int tcam_flush(struct niu *np, int index)
{
 nw64(TCAM_KEY_0, 0x00);
 nw64(TCAM_KEY_MASK_0, 0xff);
 nw64(TCAM_CTL, (TCAM_CTL_RWC_TCAM_WRITE | index));

 return tcam_wait_bit(np, TCAM_CTL_STAT);
}
