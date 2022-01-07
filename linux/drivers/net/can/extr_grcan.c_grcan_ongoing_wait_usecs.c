
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __u32 ;


 int GRCAN_EFF_FRAME_MAX_BITS ;

__attribute__((used)) static inline u32 grcan_ongoing_wait_usecs(__u32 bitrate)
{
 return 1000000 * 3 * GRCAN_EFF_FRAME_MAX_BITS / bitrate;
}
