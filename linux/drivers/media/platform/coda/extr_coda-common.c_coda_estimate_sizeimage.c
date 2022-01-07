
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct coda_ctx {int dummy; } ;


 int PAGE_SIZE ;
 int clamp (int,int,int) ;
 unsigned int round_up (int ,int ) ;

__attribute__((used)) static unsigned int coda_estimate_sizeimage(struct coda_ctx *ctx, u32 sizeimage,
         u32 width, u32 height)
{





 return round_up(clamp(sizeimage, width * height / 8,
      width * height * 2), PAGE_SIZE);
}
