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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ipw2100_priv {scalar_t__ dump_raw; scalar_t__* snapshot; struct net_device* net_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 struct ipw2100_priv* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,unsigned long,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,int,int*,int,unsigned long) ; 
 scalar_t__ FUNC4 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *d, struct device_attribute *attr,
			   char *buf)
{
	struct ipw2100_priv *priv = FUNC1(d);
	struct net_device *dev = priv->net_dev;
	static unsigned long loop = 0;
	int len = 0;
	u32 buffer[4];
	int i;
	char line[81];

	if (loop >= 0x30000)
		loop = 0;

	/* sysfs provides us PAGE_SIZE buffer */
	while (len < PAGE_SIZE - 128 && loop < 0x30000) {

		if (priv->snapshot[0])
			for (i = 0; i < 4; i++)
				buffer[i] =
				    *(u32 *) FUNC0(loop + i * 4);
		else
			for (i = 0; i < 4; i++)
				FUNC2(dev, loop + i * 4, &buffer[i]);

		if (priv->dump_raw)
			len += FUNC4(buf + len,
				       "%c%c%c%c"
				       "%c%c%c%c"
				       "%c%c%c%c"
				       "%c%c%c%c",
				       ((u8 *) buffer)[0x0],
				       ((u8 *) buffer)[0x1],
				       ((u8 *) buffer)[0x2],
				       ((u8 *) buffer)[0x3],
				       ((u8 *) buffer)[0x4],
				       ((u8 *) buffer)[0x5],
				       ((u8 *) buffer)[0x6],
				       ((u8 *) buffer)[0x7],
				       ((u8 *) buffer)[0x8],
				       ((u8 *) buffer)[0x9],
				       ((u8 *) buffer)[0xa],
				       ((u8 *) buffer)[0xb],
				       ((u8 *) buffer)[0xc],
				       ((u8 *) buffer)[0xd],
				       ((u8 *) buffer)[0xe],
				       ((u8 *) buffer)[0xf]);
		else
			len += FUNC4(buf + len, "%s\n",
				       FUNC3(line, sizeof(line),
						    (u8 *) buffer, 16, loop));
		loop += 16;
	}

	return len;
}