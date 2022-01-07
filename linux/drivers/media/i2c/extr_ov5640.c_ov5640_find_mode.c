
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_mode_info {int hact; int vact; } ;
struct ov5640_dev {int dummy; } ;
typedef enum ov5640_frame_rate { ____Placeholder_ov5640_frame_rate } ov5640_frame_rate ;


 int ARRAY_SIZE (int ) ;
 int OV5640_60_FPS ;
 int hact ;
 int ov5640_mode_data ;
 struct ov5640_mode_info* v4l2_find_nearest_size (int ,int ,int ,int ,int,int) ;
 int vact ;

__attribute__((used)) static const struct ov5640_mode_info *
ov5640_find_mode(struct ov5640_dev *sensor, enum ov5640_frame_rate fr,
   int width, int height, bool nearest)
{
 const struct ov5640_mode_info *mode;

 mode = v4l2_find_nearest_size(ov5640_mode_data,
          ARRAY_SIZE(ov5640_mode_data),
          hact, vact,
          width, height);

 if (!mode ||
     (!nearest && (mode->hact != width || mode->vact != height)))
  return ((void*)0);


 if (fr == OV5640_60_FPS &&
     !(mode->hact == 640 && mode->vact == 480))
  return ((void*)0);

 return mode;
}
