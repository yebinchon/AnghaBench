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
struct enc28j60_net {int /*<<< orphan*/  lock; TYPE_1__* spi; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECON1 ; 
 int /*<<< orphan*/  ECON2 ; 
 int /*<<< orphan*/  EIE ; 
 int /*<<< orphan*/  EIR ; 
 int /*<<< orphan*/  EPKTCNT ; 
 int /*<<< orphan*/  EREVID ; 
 int /*<<< orphan*/  ERXFCON ; 
 int /*<<< orphan*/  ERXNDL ; 
 int /*<<< orphan*/  ERXRDPTL ; 
 int /*<<< orphan*/  ERXSTL ; 
 int /*<<< orphan*/  ERXWRPTL ; 
 int /*<<< orphan*/  ESTAT ; 
 int /*<<< orphan*/  ETXNDL ; 
 int /*<<< orphan*/  ETXSTL ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  MACLCON1 ; 
 int /*<<< orphan*/  MACLCON2 ; 
 int /*<<< orphan*/  MACON1 ; 
 int /*<<< orphan*/  MACON3 ; 
 int /*<<< orphan*/  MACON4 ; 
 int /*<<< orphan*/  MAMXFLL ; 
 int /*<<< orphan*/  MAPHSUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct device*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct enc28j60_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct enc28j60_net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct enc28j60_net *priv, const char *msg)
{
	struct device *dev = &priv->spi->dev;

	FUNC1(&priv->lock);
	FUNC0(KERN_DEBUG, dev,
		   " %s\n"
		   "HwRevID: 0x%02x\n"
		   "Cntrl: ECON1 ECON2 ESTAT  EIR  EIE\n"
		   "       0x%02x  0x%02x  0x%02x  0x%02x  0x%02x\n"
		   "MAC  : MACON1 MACON3 MACON4\n"
		   "       0x%02x   0x%02x   0x%02x\n"
		   "Rx   : ERXST  ERXND  ERXWRPT ERXRDPT ERXFCON EPKTCNT MAMXFL\n"
		   "       0x%04x 0x%04x 0x%04x  0x%04x  "
		   "0x%02x    0x%02x    0x%04x\n"
		   "Tx   : ETXST  ETXND  MACLCON1 MACLCON2 MAPHSUP\n"
		   "       0x%04x 0x%04x 0x%02x     0x%02x     0x%02x\n",
		   msg, FUNC3(priv, EREVID),
		   FUNC3(priv, ECON1), FUNC3(priv, ECON2),
		   FUNC3(priv, ESTAT), FUNC3(priv, EIR),
		   FUNC3(priv, EIE), FUNC3(priv, MACON1),
		   FUNC3(priv, MACON3), FUNC3(priv, MACON4),
		   FUNC4(priv, ERXSTL), FUNC4(priv, ERXNDL),
		   FUNC4(priv, ERXWRPTL),
		   FUNC4(priv, ERXRDPTL),
		   FUNC3(priv, ERXFCON),
		   FUNC3(priv, EPKTCNT),
		   FUNC4(priv, MAMXFLL), FUNC4(priv, ETXSTL),
		   FUNC4(priv, ETXNDL),
		   FUNC3(priv, MACLCON1),
		   FUNC3(priv, MACLCON2),
		   FUNC3(priv, MAPHSUP));
	FUNC2(&priv->lock);
}