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
struct tda9887_priv {int dummy; } ;
struct dvb_frontend {struct tda9887_priv* analog_demod_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tda9887_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tda9887_list_mutex ; 

__attribute__((used)) static void FUNC3(struct dvb_frontend *fe)
{
	struct tda9887_priv *priv = fe->analog_demod_priv;

	FUNC1(&tda9887_list_mutex);

	if (priv)
		FUNC0(priv);

	FUNC2(&tda9887_list_mutex);

	fe->analog_demod_priv = NULL;
}