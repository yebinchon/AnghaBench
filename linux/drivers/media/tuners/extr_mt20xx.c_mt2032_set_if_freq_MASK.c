#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct microtune_priv {int xogc; int /*<<< orphan*/  i2c_props; } ;
struct dvb_frontend {struct microtune_priv* tuner_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct dvb_frontend*) ; 
 int FUNC2 (struct dvb_frontend*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned char*,int*,int) ; 
 int FUNC3 (struct dvb_frontend*,int,int) ; 
 scalar_t__ optimize_vco ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void FUNC8(struct dvb_frontend *fe, unsigned int rfin,
			       unsigned int if1, unsigned int if2,
			       unsigned int from, unsigned int to)
{
	unsigned char buf[21];
	int lint_try,ret,sel,lock=0;
	struct microtune_priv *priv = fe->tuner_priv;

	FUNC4("mt2032_set_if_freq rfin=%d if1=%d if2=%d from=%d to=%d\n",
		  rfin,if1,if2,from,to);

	buf[0]=0;
	ret=FUNC6(&priv->i2c_props,buf,1);
	FUNC5(&priv->i2c_props,buf,21);

	buf[0]=0;
	ret=FUNC2(fe,rfin,if1,if2,from,to,&buf[1],&sel,priv->xogc);
	if (ret<0)
		return;

	// send only the relevant registers per Rev. 1.2
	buf[0]=0;
	ret=FUNC6(&priv->i2c_props,buf,4);
	buf[5]=5;
	ret=FUNC6(&priv->i2c_props,buf+5,4);
	buf[11]=11;
	ret=FUNC6(&priv->i2c_props,buf+11,3);
	if(ret!=3)
		FUNC7("i2c i/o error: rc == %d (should be 3)\n",ret);

	// wait for PLLs to lock (per manual), retry LINT if not.
	for(lint_try=0; lint_try<2; lint_try++) {
		lock=FUNC1(fe);

		if(optimize_vco)
			lock=FUNC3(fe,sel,lock);
		if(lock==6) break;

		FUNC4("mt2032: re-init PLLs by LINT\n");
		buf[0]=7;
		buf[1]=0x80 +8+priv->xogc; // set LINT to re-init PLLs
		FUNC6(&priv->i2c_props,buf,2);
		FUNC0(10);
		buf[1]=8+priv->xogc;
		FUNC6(&priv->i2c_props,buf,2);
	}

	if (lock!=6)
		FUNC7("MT2032 Fatal Error: PLLs didn't lock.\n");

	buf[0]=2;
	buf[1]=0x20; // LOGC for optimal phase noise
	ret=FUNC6(&priv->i2c_props,buf,2);
	if (ret!=2)
		FUNC7("i2c i/o error: rc == %d (should be 2)\n",ret);
}