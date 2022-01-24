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
struct encx24j600_priv {int rxfilter; } ;

/* Variables and functions */
 int BCEN ; 
 int CRCEN ; 
 int /*<<< orphan*/  ERXFCON ; 
 int /*<<< orphan*/  MACON1 ; 
 int MCEN ; 
 int NOTMEEN ; 
 int /*<<< orphan*/  PASSALL ; 
#define  RXFILTER_MULTI 130 
#define  RXFILTER_NORMAL 129 
#define  RXFILTER_PROMISC 128 
 int UCEN ; 
 int /*<<< orphan*/  FUNC0 (struct encx24j600_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct encx24j600_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct encx24j600_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct encx24j600_priv *priv)
{
	switch (priv->rxfilter) {
	case RXFILTER_PROMISC:
		FUNC1(priv, MACON1, PASSALL);
		FUNC2(priv, ERXFCON, UCEN | MCEN | NOTMEEN);
		break;
	case RXFILTER_MULTI:
		FUNC0(priv, MACON1, PASSALL);
		FUNC2(priv, ERXFCON, UCEN | CRCEN | BCEN | MCEN);
		break;
	case RXFILTER_NORMAL:
	default:
		FUNC0(priv, MACON1, PASSALL);
		FUNC2(priv, ERXFCON, UCEN | CRCEN | BCEN);
		break;
	}
}