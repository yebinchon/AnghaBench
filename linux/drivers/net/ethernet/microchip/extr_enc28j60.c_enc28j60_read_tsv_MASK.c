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
typedef  int /*<<< orphan*/  u8 ;
struct enc28j60_net {TYPE_1__* spi; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETXNDL ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  TSV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct enc28j60_net*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct enc28j60_net*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct enc28j60_net*) ; 

__attribute__((used)) static void FUNC4(struct enc28j60_net *priv, u8 tsv[TSV_SIZE])
{
	struct device *dev = &priv->spi->dev;
	int endptr;

	endptr = FUNC2(priv, ETXNDL);
	if (FUNC3(priv))
		FUNC0(KERN_DEBUG, dev, "reading TSV at addr:0x%04x\n",
			   endptr + 1);
	FUNC1(priv, endptr + 1, TSV_SIZE, tsv);
}