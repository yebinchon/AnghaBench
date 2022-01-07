
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int TCAM_CTL ;
 int TCAM_CTL_RWC_TCAM_WRITE ;
 int TCAM_CTL_STAT ;
 int TCAM_KEY_0 ;
 int TCAM_KEY_1 ;
 int TCAM_KEY_2 ;
 int TCAM_KEY_3 ;
 int TCAM_KEY_MASK_0 ;
 int TCAM_KEY_MASK_1 ;
 int TCAM_KEY_MASK_2 ;
 int TCAM_KEY_MASK_3 ;
 int nw64 (int ,int) ;
 int tcam_wait_bit (struct niu*,int ) ;

__attribute__((used)) static int tcam_write(struct niu *np, int index,
        u64 *key, u64 *mask)
{
 nw64(TCAM_KEY_0, key[0]);
 nw64(TCAM_KEY_1, key[1]);
 nw64(TCAM_KEY_2, key[2]);
 nw64(TCAM_KEY_3, key[3]);
 nw64(TCAM_KEY_MASK_0, mask[0]);
 nw64(TCAM_KEY_MASK_1, mask[1]);
 nw64(TCAM_KEY_MASK_2, mask[2]);
 nw64(TCAM_KEY_MASK_3, mask[3]);
 nw64(TCAM_CTL, (TCAM_CTL_RWC_TCAM_WRITE | index));

 return tcam_wait_bit(np, TCAM_CTL_STAT);
}
