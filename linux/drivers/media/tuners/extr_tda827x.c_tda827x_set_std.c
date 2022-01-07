
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda827x_priv {int lpsel; int sgIF; } ;
struct dvb_frontend {struct tda827x_priv* tuner_priv; } ;
struct analog_parameters {int std; scalar_t__ mode; } ;


 int V4L2_STD_B ;
 int V4L2_STD_DK ;
 int V4L2_STD_GH ;
 int V4L2_STD_MN ;
 int V4L2_STD_PAL_I ;
 int V4L2_STD_SECAM_L ;
 int V4L2_STD_SECAM_LC ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int dprintk (char*,...) ;

__attribute__((used)) static void tda827x_set_std(struct dvb_frontend *fe,
       struct analog_parameters *params)
{
 struct tda827x_priv *priv = fe->tuner_priv;
 char *mode;

 priv->lpsel = 0;
 if (params->std & V4L2_STD_MN) {
  priv->sgIF = 92;
  priv->lpsel = 1;
  mode = "MN";
 } else if (params->std & V4L2_STD_B) {
  priv->sgIF = 108;
  mode = "B";
 } else if (params->std & V4L2_STD_GH) {
  priv->sgIF = 124;
  mode = "GH";
 } else if (params->std & V4L2_STD_PAL_I) {
  priv->sgIF = 124;
  mode = "I";
 } else if (params->std & V4L2_STD_DK) {
  priv->sgIF = 124;
  mode = "DK";
 } else if (params->std & V4L2_STD_SECAM_L) {
  priv->sgIF = 124;
  mode = "L";
 } else if (params->std & V4L2_STD_SECAM_LC) {
  priv->sgIF = 20;
  mode = "LC";
 } else {
  priv->sgIF = 124;
  mode = "xx";
 }

 if (params->mode == V4L2_TUNER_RADIO) {
  priv->sgIF = 88;
  dprintk("setting tda827x to radio FM\n");
 } else
  dprintk("setting tda827x to system %s\n", mode);
}
