
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int TCAM_CTL ;
 int TCAM_CTL_RWC_RAM_WRITE ;
 int TCAM_CTL_STAT ;
 int TCAM_KEY_1 ;
 int nw64 (int ,int) ;
 int tcam_wait_bit (struct niu*,int ) ;

__attribute__((used)) static int tcam_assoc_write(struct niu *np, int index, u64 assoc_data)
{
 nw64(TCAM_KEY_1, assoc_data);
 nw64(TCAM_CTL, (TCAM_CTL_RWC_RAM_WRITE | index));

 return tcam_wait_bit(np, TCAM_CTL_STAT);
}
