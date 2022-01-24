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
struct tda18271_config {scalar_t__ std_map; } ;
struct dvb_frontend {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*) ; 
 scalar_t__ FUNC1 (struct tda18271_config*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,struct tda18271_config*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe, void *priv_cfg)
{
	struct tda18271_config *cfg = (struct tda18271_config *) priv_cfg;

	FUNC2(fe, cfg);

	if (FUNC1(cfg))
		FUNC0(fe);

	/* override default std map with values in config struct */
	if ((cfg) && (cfg->std_map))
		FUNC3(fe, cfg->std_map);

	return 0;
}