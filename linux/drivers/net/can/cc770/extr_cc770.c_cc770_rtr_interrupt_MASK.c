#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct net_device {int dummy; } ;
struct cc770_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl1; int /*<<< orphan*/  ctrl0; } ;

/* Variables and functions */
 int CC770_MAX_MSG ; 
 int CPUUPD_SET ; 
 int INTPND_RES ; 
 int INTPND_SET ; 
 int MSGVAL_SET ; 
 int NEWDAT_RES ; 
 int RMTPND_RES ; 
 int RXIE_SET ; 
 int TXIE_RES ; 
 int TXRQST_RES ; 
 int FUNC0 (struct cc770_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cc770_priv*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* msgobj ; 
 struct cc770_priv* FUNC3 (struct net_device*) ; 
 unsigned int FUNC4 (unsigned int) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, unsigned int o)
{
	struct cc770_priv *priv = FUNC3(dev);
	unsigned int mo = FUNC4(o);
	u8 ctrl0, ctrl1;
	int n = CC770_MAX_MSG;

	while (n--) {
		ctrl0 = FUNC0(priv, msgobj[mo].ctrl0);
		if (!(ctrl0 & INTPND_SET))
			break;

		ctrl1 = FUNC0(priv, msgobj[mo].ctrl1);
		FUNC1(dev, mo, ctrl1);

		FUNC2(priv, msgobj[mo].ctrl0,
				MSGVAL_SET | TXIE_RES |
				RXIE_SET | INTPND_RES);
		FUNC2(priv, msgobj[mo].ctrl1,
				NEWDAT_RES | CPUUPD_SET |
				TXRQST_RES | RMTPND_RES);
	}
}