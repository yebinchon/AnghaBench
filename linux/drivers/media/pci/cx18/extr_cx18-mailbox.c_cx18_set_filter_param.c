
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18_stream {int handle; struct cx18* cx; } ;
struct cx18 {int filter_mode; scalar_t__ temporal_strength; scalar_t__ spatial_strength; } ;


 int CX18_CPU_SET_FILTER_PARAM ;
 int cx18_vapi (struct cx18*,int ,int,int ,int,int,scalar_t__) ;

__attribute__((used)) static int cx18_set_filter_param(struct cx18_stream *s)
{
 struct cx18 *cx = s->cx;
 u32 mode;
 int ret;

 mode = (cx->filter_mode & 1) ? 2 : (cx->spatial_strength ? 1 : 0);
 ret = cx18_vapi(cx, CX18_CPU_SET_FILTER_PARAM, 4,
   s->handle, 1, mode, cx->spatial_strength);
 mode = (cx->filter_mode & 2) ? 2 : (cx->temporal_strength ? 1 : 0);
 ret = ret ? ret : cx18_vapi(cx, CX18_CPU_SET_FILTER_PARAM, 4,
   s->handle, 0, mode, cx->temporal_strength);
 ret = ret ? ret : cx18_vapi(cx, CX18_CPU_SET_FILTER_PARAM, 4,
   s->handle, 2, cx->filter_mode >> 2, 0);
 return ret;
}
