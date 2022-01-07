
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv7842_sdp_csc_coeff {int scaling; int A1; int A2; int A3; int A4; int B1; int B2; int B3; int B4; int C1; int C2; int C3; int C4; scalar_t__ manual; } ;


 int sdp_io_write (struct v4l2_subdev*,int,int) ;
 int sdp_io_write_and_or (struct v4l2_subdev*,int,int,int) ;

__attribute__((used)) static void sdp_csc_coeff(struct v4l2_subdev *sd,
     const struct adv7842_sdp_csc_coeff *c)
{

 sdp_io_write_and_or(sd, 0xe0, 0xbf, c->manual ? 0x00 : 0x40);

 if (!c->manual)
  return;


 sdp_io_write_and_or(sd, 0xe0, 0x7f, c->scaling == 2 ? 0x80 : 0x00);


 sdp_io_write_and_or(sd, 0xe0, 0xe0, c->A1 >> 8);
 sdp_io_write(sd, 0xe1, c->A1);
 sdp_io_write_and_or(sd, 0xe2, 0xe0, c->A2 >> 8);
 sdp_io_write(sd, 0xe3, c->A2);
 sdp_io_write_and_or(sd, 0xe4, 0xe0, c->A3 >> 8);
 sdp_io_write(sd, 0xe5, c->A3);


 sdp_io_write_and_or(sd, 0xe6, 0x80, c->A4 >> 8);
 sdp_io_write(sd, 0xe7, c->A4);


 sdp_io_write_and_or(sd, 0xe8, 0xe0, c->B1 >> 8);
 sdp_io_write(sd, 0xe9, c->B1);
 sdp_io_write_and_or(sd, 0xea, 0xe0, c->B2 >> 8);
 sdp_io_write(sd, 0xeb, c->B2);
 sdp_io_write_and_or(sd, 0xec, 0xe0, c->B3 >> 8);
 sdp_io_write(sd, 0xed, c->B3);


 sdp_io_write_and_or(sd, 0xee, 0x80, c->B4 >> 8);
 sdp_io_write(sd, 0xef, c->B4);


 sdp_io_write_and_or(sd, 0xf0, 0xe0, c->C1 >> 8);
 sdp_io_write(sd, 0xf1, c->C1);
 sdp_io_write_and_or(sd, 0xf2, 0xe0, c->C2 >> 8);
 sdp_io_write(sd, 0xf3, c->C2);
 sdp_io_write_and_or(sd, 0xf4, 0xe0, c->C3 >> 8);
 sdp_io_write(sd, 0xf5, c->C3);


 sdp_io_write_and_or(sd, 0xf6, 0x80, c->C4 >> 8);
 sdp_io_write(sd, 0xf7, c->C4);
}
