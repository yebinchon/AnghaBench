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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(struct dvb_frontend *fe, unsigned char *buf)
{
	struct tda9887_priv *priv = fe->analog_demod_priv;

	static char *afc[16] = {
		"- 12.5 kHz",
		"- 37.5 kHz",
		"- 62.5 kHz",
		"- 87.5 kHz",
		"-112.5 kHz",
		"-137.5 kHz",
		"-162.5 kHz",
		"-187.5 kHz [min]",
		"+187.5 kHz [max]",
		"+162.5 kHz",
		"+137.5 kHz",
		"+112.5 kHz",
		"+ 87.5 kHz",
		"+ 62.5 kHz",
		"+ 37.5 kHz",
		"+ 12.5 kHz",
	};
	FUNC0("read: 0x%2x\n", buf[0]);
	FUNC0("  after power on : %s\n", (buf[0] & 0x01) ? "yes" : "no");
	FUNC0("  afc            : %s\n", afc[(buf[0] >> 1) & 0x0f]);
	FUNC0("  fmif level     : %s\n", (buf[0] & 0x20) ? "high" : "low");
	FUNC0("  afc window     : %s\n", (buf[0] & 0x40) ? "in" : "out");
	FUNC0("  vfi level      : %s\n", (buf[0] & 0x80) ? "high" : "low");
}