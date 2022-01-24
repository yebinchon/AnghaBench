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
typedef  int /*<<< orphan*/  u32 ;
struct tda18271_std_map_item {int /*<<< orphan*/  std; int /*<<< orphan*/  agc_mode; int /*<<< orphan*/  if_freq; } ;
struct tda18271_priv {int id; int /*<<< orphan*/  lock; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;

/* Variables and functions */
#define  TDA18271HDC1 129 
#define  TDA18271HDC2 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct dvb_frontend*) ; 
 int FUNC3 (struct dvb_frontend*,struct tda18271_std_map_item*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct dvb_frontend *fe,
			 struct tda18271_std_map_item *map, u32 freq, u32 bw)
{
	struct tda18271_priv *priv = fe->tuner_priv;
	int ret;

	FUNC7("freq = %d, ifc = %d, bw = %d, agc_mode = %d, std = %d\n",
		freq, map->if_freq, bw, map->agc_mode, map->std);

	ret = FUNC2(fe);
	if (FUNC8(ret))
		FUNC9("failed to configure agc\n");

	ret = FUNC4(fe);
	if (FUNC8(ret))
		goto fail;

	FUNC0(&priv->lock);

	switch (priv->id) {
	case TDA18271HDC1:
		FUNC5(fe, freq, bw);
		break;
	case TDA18271HDC2:
		FUNC6(fe, freq);
		break;
	}
	ret = FUNC3(fe, map, freq, bw);

	FUNC1(&priv->lock);
fail:
	return ret;
}