
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FMT_FLAGS_M2M_IN ;
 unsigned int FMT_FLAGS_M2M_OUT ;
 unsigned int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;

__attribute__((used)) static unsigned int get_m2m_fmt_flags(unsigned int stream_type)
{
 if (stream_type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
  return FMT_FLAGS_M2M_IN;
 else
  return FMT_FLAGS_M2M_OUT;
}
