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
typedef  char u8 ;
struct dvb_usb_adapter {int /*<<< orphan*/  dev; TYPE_1__* fe_adap; } ;
struct TYPE_2__ {int /*<<< orphan*/  fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_VERSION_READ ; 
 int /*<<< orphan*/  PRODUCT_STRING_READ ; 
 int /*<<< orphan*/  VENDOR_STRING_READ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_adapter *adap)
{
	u8 buf[255] = { 0 };

	FUNC2(adap->dev,VENDOR_STRING_READ,NULL,0,buf,20,0);
	buf[10] = '\0';
	FUNC0("firmware says: %s ",buf);

	FUNC2(adap->dev,PRODUCT_STRING_READ,NULL,0,buf,20,0);
	buf[10] = '\0';
	FUNC0("%s ",buf);

	FUNC2(adap->dev,FW_VERSION_READ,NULL,0,buf,20,0);
	buf[10] = '\0';
	FUNC0("v%s\n",buf);

/*	Dump the EEPROM */
/*	vp7045_read_eeprom(d,buf, 255, FX2_ID_ADDR); */

	adap->fe_adap[0].fe = FUNC1(adap->dev);

	return 0;
}