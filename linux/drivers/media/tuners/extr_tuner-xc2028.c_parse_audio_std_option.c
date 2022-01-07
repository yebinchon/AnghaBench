
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;


 int V4L2_STD_A2 ;
 int V4L2_STD_A2_A ;
 int V4L2_STD_A2_B ;
 int V4L2_STD_NICAM ;
 int V4L2_STD_NICAM_A ;
 int V4L2_STD_NICAM_B ;
 int audio_std ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static v4l2_std_id parse_audio_std_option(void)
{
 if (strcasecmp(audio_std, "A2") == 0)
  return V4L2_STD_A2;
 if (strcasecmp(audio_std, "A2/A") == 0)
  return V4L2_STD_A2_A;
 if (strcasecmp(audio_std, "A2/B") == 0)
  return V4L2_STD_A2_B;
 if (strcasecmp(audio_std, "NICAM") == 0)
  return V4L2_STD_NICAM;
 if (strcasecmp(audio_std, "NICAM/A") == 0)
  return V4L2_STD_NICAM_A;
 if (strcasecmp(audio_std, "NICAM/B") == 0)
  return V4L2_STD_NICAM_B;

 return 0;
}
