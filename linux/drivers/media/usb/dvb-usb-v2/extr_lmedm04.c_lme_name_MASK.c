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
struct lme2510_state {size_t tuner_config; } ;
struct dvb_usb_device {char* name; } ;
struct dvb_usb_adapter {TYPE_3__** fe; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;

/* Variables and functions */
 struct dvb_usb_device* FUNC0 (struct dvb_usb_adapter*) ; 
 struct lme2510_state* FUNC1 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const* const,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_adapter *adap)
{
	struct dvb_usb_device *d = FUNC0(adap);
	struct lme2510_state *st = FUNC1(adap);
	const char *desc = d->name;
	static const char * const fe_name[] = {
		"", " LG TDQY-P001F", " SHARP:BS2F7HZ7395",
		" SHARP:BS2F7HZ0194", " RS2000"};
	char *name = adap->fe[0]->ops.info.name;

	FUNC3(name, desc, 128);
	FUNC2(name, fe_name[st->tuner_config], 128);

	return 0;
}