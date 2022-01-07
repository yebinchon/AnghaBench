
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2255_dev {int dummy; } ;


 int S2255_VR_FW ;
 int S2255_VR_IN ;
 int dprintk (struct s2255_dev*,int,char*,unsigned char,...) ;
 int s2255_vendor_req (struct s2255_dev*,int ,int ,int ,unsigned char*,int,int ) ;

__attribute__((used)) static int s2255_get_fx2fw(struct s2255_dev *dev)
{
 int fw;
 int ret;
 unsigned char transBuffer[64];
 ret = s2255_vendor_req(dev, S2255_VR_FW, 0, 0, transBuffer, 2,
          S2255_VR_IN);
 if (ret < 0)
  dprintk(dev, 2, "get fw error: %x\n", ret);
 fw = transBuffer[0] + (transBuffer[1] << 8);
 dprintk(dev, 2, "Get FW %x %x\n", transBuffer[0], transBuffer[1]);
 return fw;
}
