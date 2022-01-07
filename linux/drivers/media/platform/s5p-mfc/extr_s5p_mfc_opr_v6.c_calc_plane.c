
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (int,int) ;
 int S5P_FIMV_MAX_FRAME_SIZE_V6 ;
 int S5P_FIMV_NUM_PIXELS_IN_MB_COL_V6 ;
 int S5P_FIMV_NUM_PIXELS_IN_MB_ROW_V6 ;

__attribute__((used)) static int calc_plane(int width, int height)
{
 int mbX, mbY;

 mbX = DIV_ROUND_UP(width, S5P_FIMV_NUM_PIXELS_IN_MB_ROW_V6);
 mbY = DIV_ROUND_UP(height, S5P_FIMV_NUM_PIXELS_IN_MB_COL_V6);

 if (width * height < S5P_FIMV_MAX_FRAME_SIZE_V6)
  mbY = (mbY + 1) / 2 * 2;

 return (mbX * S5P_FIMV_NUM_PIXELS_IN_MB_COL_V6) *
  (mbY * S5P_FIMV_NUM_PIXELS_IN_MB_ROW_V6);
}
