#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct ipw2100_priv {struct net_device* net_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int size; int addr; char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 struct ipw2100_priv* FUNC1 (struct device*) ; 
 TYPE_1__* nic_data ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *d, struct device_attribute *attr,
			     char *buf)
{
	struct ipw2100_priv *priv = FUNC1(d);
	struct net_device *dev = priv->net_dev;
	char *out = buf;
	int i;

	out += FUNC5(out, "%30s [Address ] : Hex\n", "NIC entry");

	for (i = 0; i < FUNC0(nic_data); i++) {
		u8 tmp8;
		u16 tmp16;
		u32 tmp32;

		switch (nic_data[i].size) {
		case 1:
			FUNC2(dev, nic_data[i].addr, &tmp8);
			out += FUNC5(out, "%30s [%08X] : %02X\n",
				       nic_data[i].name, nic_data[i].addr,
				       tmp8);
			break;
		case 2:
			FUNC4(dev, nic_data[i].addr, &tmp16);
			out += FUNC5(out, "%30s [%08X] : %04X\n",
				       nic_data[i].name, nic_data[i].addr,
				       tmp16);
			break;
		case 4:
			FUNC3(dev, nic_data[i].addr, &tmp32);
			out += FUNC5(out, "%30s [%08X] : %08X\n",
				       nic_data[i].name, nic_data[i].addr,
				       tmp32);
			break;
		}
	}
	return out - buf;
}