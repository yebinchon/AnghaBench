
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2255_vc {int std; } ;


 int LINE_SZ_4CIFS_NTSC ;
 int LINE_SZ_4CIFS_PAL ;
 int V4L2_STD_525_60 ;

__attribute__((used)) static int norm_maxw(struct s2255_vc *vc)
{
 return (vc->std & V4L2_STD_525_60) ?
     LINE_SZ_4CIFS_NTSC : LINE_SZ_4CIFS_PAL;
}
