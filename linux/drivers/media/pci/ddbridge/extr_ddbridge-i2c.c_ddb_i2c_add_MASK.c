#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct i2c_adapter {TYPE_3__ dev; void* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; void* class; } ;
struct ddb_regmap {TYPE_2__* i2c; TYPE_1__* i2c_buf; } ;
struct ddb_i2c {int nr; int link; int bsize; int wbuf; int rbuf; int regs; struct i2c_adapter adap; int /*<<< orphan*/  completion; struct ddb* dev; } ;
struct ddb {int nr; int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int base; int size; } ;
struct TYPE_4__ {int size; int base; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 void* I2C_ADAP_CLASS_TV_DIGITAL ; 
 void* I2C_CLASS_TV_ANALOG ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int I2C_SPEED_100 ; 
 scalar_t__ I2C_TASKADDRESS ; 
 scalar_t__ I2C_TIMING ; 
 int /*<<< orphan*/  ddb_i2c_algo ; 
 int /*<<< orphan*/  FUNC1 (struct ddb*,int,scalar_t__) ; 
 int FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,struct ddb_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 

__attribute__((used)) static int FUNC6(struct ddb *dev, struct ddb_i2c *i2c,
		       const struct ddb_regmap *regmap, int link,
		       int i, int num)
{
	struct i2c_adapter *adap;

	i2c->nr = i;
	i2c->dev = dev;
	i2c->link = link;
	i2c->bsize = regmap->i2c_buf->size;
	i2c->wbuf = FUNC0(link) |
		(regmap->i2c_buf->base + i2c->bsize * i);
	i2c->rbuf = i2c->wbuf; /* + i2c->bsize / 2 */
	i2c->regs = FUNC0(link) |
		(regmap->i2c->base + regmap->i2c->size * i);
	FUNC1(dev, I2C_SPEED_100, i2c->regs + I2C_TIMING);
	FUNC1(dev, ((i2c->rbuf & 0xffff) << 16) | (i2c->wbuf & 0xffff),
		  i2c->regs + I2C_TASKADDRESS);
	FUNC4(&i2c->completion);

	adap = &i2c->adap;
	FUNC3(adap, i2c);
#ifdef I2C_ADAP_CLASS_TV_DIGITAL
	adap->class = I2C_ADAP_CLASS_TV_DIGITAL | I2C_CLASS_TV_ANALOG;
#else
#ifdef I2C_CLASS_TV_ANALOG
	adap->class = I2C_CLASS_TV_ANALOG;
#endif
#endif
	FUNC5(adap->name, I2C_NAME_SIZE, "ddbridge_%02x.%x.%x",
		 dev->nr, i2c->link, i);
	adap->algo = &ddb_i2c_algo;
	adap->algo_data = (void *)i2c;
	adap->dev.parent = dev->dev;
	return FUNC2(adap);
}