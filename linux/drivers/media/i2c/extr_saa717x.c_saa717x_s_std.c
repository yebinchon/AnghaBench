
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct saa717x_state {int std; scalar_t__ radio; } ;


 int debug ;
 struct saa717x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static int saa717x_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct saa717x_state *decoder = to_state(sd);

 v4l2_dbg(1, debug, sd, "decoder set norm ");
 v4l2_dbg(1, debug, sd, "(not yet implemented)\n");

 decoder->radio = 0;
 decoder->std = std;
 return 0;
}
