
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct saa7134_go7007 {struct saa7134_dev* dev; } ;
struct saa7134_dev {int dummy; } ;


 int saa7134_s_std_internal (struct saa7134_dev*,int *,int ) ;
 struct saa7134_go7007* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7134_go7007_s_std(struct v4l2_subdev *sd, v4l2_std_id norm)
{






 return 0;

}
