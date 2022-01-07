
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum v4l2_mpeg_video_hevc_level { ____Placeholder_v4l2_mpeg_video_hevc_level } v4l2_mpeg_video_hevc_level ;



__attribute__((used)) static inline int hevc_level(enum v4l2_mpeg_video_hevc_level lvl)
{
 static unsigned int t[] = {
                                        10,
                                        20,
                                        21,
                                        30,
                                        31,
                                        40,
                                        41,
                                        50,
                                        51,
                                        52,
                                        60,
                                        61,
                                        62,
 };
 return t[lvl];
}
