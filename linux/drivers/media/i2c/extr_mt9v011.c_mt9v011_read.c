
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;
 int debug ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;
 int i2c_master_send (struct i2c_client*,unsigned char*,int) ;
 int msleep (int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,unsigned char,...) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v011_read(struct v4l2_subdev *sd, unsigned char addr)
{
 struct i2c_client *c = v4l2_get_subdevdata(sd);
 __be16 buffer;
 int rc, val;

 rc = i2c_master_send(c, &addr, 1);
 if (rc != 1)
  v4l2_dbg(0, debug, sd,
    "i2c i/o error: rc == %d (should be 1)\n", rc);

 msleep(10);

 rc = i2c_master_recv(c, (char *)&buffer, 2);
 if (rc != 2)
  v4l2_dbg(0, debug, sd,
    "i2c i/o error: rc == %d (should be 2)\n", rc);

 val = be16_to_cpu(buffer);

 v4l2_dbg(2, debug, sd, "mt9v011: read 0x%02x = 0x%04x\n", addr, val);

 return val;
}
