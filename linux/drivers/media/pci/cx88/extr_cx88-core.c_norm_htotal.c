
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;


 int V4L2_STD_625_50 ;
 int norm_fsc8 (int) ;

__attribute__((used)) static inline unsigned int norm_htotal(v4l2_std_id norm)
{
 unsigned int fsc4 = norm_fsc8(norm) / 2;


 return (norm & V4L2_STD_625_50) ?
    ((fsc4 + 312) / 625 + 12) / 25 :
    ((fsc4 + 262) / 525 * 1001 + 15000) / 30000;
}
