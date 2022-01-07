
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int V4L2_BUF_FLAG_BFRAME ;
 int V4L2_BUF_FLAG_KEYFRAME ;
 int V4L2_BUF_FLAG_PFRAME ;

__attribute__((used)) static char coda_frame_type_char(u32 flags)
{
 return (flags & V4L2_BUF_FLAG_KEYFRAME) ? 'I' :
        (flags & V4L2_BUF_FLAG_PFRAME) ? 'P' :
        (flags & V4L2_BUF_FLAG_BFRAME) ? 'B' : '?';
}
