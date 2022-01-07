
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;





__attribute__((used)) static const char * const *mfc51_get_menu(u32 id)
{
 static const char * const mfc51_video_frame_skip[] = {
  "Disabled",
  "Level Limit",
  "VBV/CPB Limit",
  ((void*)0),
 };
 static const char * const mfc51_video_force_frame[] = {
  "Disabled",
  "I Frame",
  "Not Coded",
  ((void*)0),
 };
 switch (id) {
 case 128:
  return mfc51_video_frame_skip;
 case 129:
  return mfc51_video_force_frame;
 }
 return ((void*)0);
}
