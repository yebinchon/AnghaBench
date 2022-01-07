
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;
struct fc0011_config {int dummy; } ;
struct dvb_frontend {int dummy; } ;


 int dev_err (int *,char*) ;

__attribute__((used)) static inline
struct dvb_frontend *fc0011_attach(struct dvb_frontend *fe,
       struct i2c_adapter *i2c,
       const struct fc0011_config *config)
{
 dev_err(&i2c->dev, "fc0011 driver disabled in Kconfig\n");
 return ((void*)0);
}
