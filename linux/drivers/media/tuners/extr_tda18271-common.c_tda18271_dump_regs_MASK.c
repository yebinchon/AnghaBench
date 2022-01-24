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
struct tda18271_priv {unsigned char* tda18271_regs; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;

/* Variables and functions */
 int DBG_ADV ; 
 size_t R_CD1 ; 
 size_t R_CD2 ; 
 size_t R_CD3 ; 
 size_t R_CPD ; 
 size_t R_EB1 ; 
 size_t R_EB10 ; 
 size_t R_EB11 ; 
 size_t R_EB12 ; 
 size_t R_EB13 ; 
 size_t R_EB14 ; 
 size_t R_EB15 ; 
 size_t R_EB16 ; 
 size_t R_EB17 ; 
 size_t R_EB18 ; 
 size_t R_EB19 ; 
 size_t R_EB2 ; 
 size_t R_EB20 ; 
 size_t R_EB21 ; 
 size_t R_EB22 ; 
 size_t R_EB23 ; 
 size_t R_EB3 ; 
 size_t R_EB4 ; 
 size_t R_EB5 ; 
 size_t R_EB6 ; 
 size_t R_EB7 ; 
 size_t R_EB8 ; 
 size_t R_EB9 ; 
 size_t R_EP1 ; 
 size_t R_EP2 ; 
 size_t R_EP3 ; 
 size_t R_EP4 ; 
 size_t R_EP5 ; 
 size_t R_ID ; 
 size_t R_MD1 ; 
 size_t R_MD2 ; 
 size_t R_MD3 ; 
 size_t R_MPD ; 
 size_t R_PL ; 
 size_t R_TM ; 
 int tda18271_debug ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(struct dvb_frontend *fe, int extended)
{
	struct tda18271_priv *priv = fe->tuner_priv;
	unsigned char *regs = priv->tda18271_regs;

	FUNC0("=== TDA18271 REG DUMP ===\n");
	FUNC0("ID_BYTE            = 0x%02x\n", 0xff & regs[R_ID]);
	FUNC0("THERMO_BYTE        = 0x%02x\n", 0xff & regs[R_TM]);
	FUNC0("POWER_LEVEL_BYTE   = 0x%02x\n", 0xff & regs[R_PL]);
	FUNC0("EASY_PROG_BYTE_1   = 0x%02x\n", 0xff & regs[R_EP1]);
	FUNC0("EASY_PROG_BYTE_2   = 0x%02x\n", 0xff & regs[R_EP2]);
	FUNC0("EASY_PROG_BYTE_3   = 0x%02x\n", 0xff & regs[R_EP3]);
	FUNC0("EASY_PROG_BYTE_4   = 0x%02x\n", 0xff & regs[R_EP4]);
	FUNC0("EASY_PROG_BYTE_5   = 0x%02x\n", 0xff & regs[R_EP5]);
	FUNC0("CAL_POST_DIV_BYTE  = 0x%02x\n", 0xff & regs[R_CPD]);
	FUNC0("CAL_DIV_BYTE_1     = 0x%02x\n", 0xff & regs[R_CD1]);
	FUNC0("CAL_DIV_BYTE_2     = 0x%02x\n", 0xff & regs[R_CD2]);
	FUNC0("CAL_DIV_BYTE_3     = 0x%02x\n", 0xff & regs[R_CD3]);
	FUNC0("MAIN_POST_DIV_BYTE = 0x%02x\n", 0xff & regs[R_MPD]);
	FUNC0("MAIN_DIV_BYTE_1    = 0x%02x\n", 0xff & regs[R_MD1]);
	FUNC0("MAIN_DIV_BYTE_2    = 0x%02x\n", 0xff & regs[R_MD2]);
	FUNC0("MAIN_DIV_BYTE_3    = 0x%02x\n", 0xff & regs[R_MD3]);

	/* only dump extended regs if DBG_ADV is set */
	if (!(tda18271_debug & DBG_ADV))
		return;

	/* W indicates write-only registers.
	 * Register dump for write-only registers shows last value written. */

	FUNC0("EXTENDED_BYTE_1    = 0x%02x\n", 0xff & regs[R_EB1]);
	FUNC0("EXTENDED_BYTE_2    = 0x%02x\n", 0xff & regs[R_EB2]);
	FUNC0("EXTENDED_BYTE_3    = 0x%02x\n", 0xff & regs[R_EB3]);
	FUNC0("EXTENDED_BYTE_4    = 0x%02x\n", 0xff & regs[R_EB4]);
	FUNC0("EXTENDED_BYTE_5    = 0x%02x\n", 0xff & regs[R_EB5]);
	FUNC0("EXTENDED_BYTE_6    = 0x%02x\n", 0xff & regs[R_EB6]);
	FUNC0("EXTENDED_BYTE_7    = 0x%02x\n", 0xff & regs[R_EB7]);
	FUNC0("EXTENDED_BYTE_8    = 0x%02x\n", 0xff & regs[R_EB8]);
	FUNC0("EXTENDED_BYTE_9  W = 0x%02x\n", 0xff & regs[R_EB9]);
	FUNC0("EXTENDED_BYTE_10   = 0x%02x\n", 0xff & regs[R_EB10]);
	FUNC0("EXTENDED_BYTE_11   = 0x%02x\n", 0xff & regs[R_EB11]);
	FUNC0("EXTENDED_BYTE_12   = 0x%02x\n", 0xff & regs[R_EB12]);
	FUNC0("EXTENDED_BYTE_13   = 0x%02x\n", 0xff & regs[R_EB13]);
	FUNC0("EXTENDED_BYTE_14   = 0x%02x\n", 0xff & regs[R_EB14]);
	FUNC0("EXTENDED_BYTE_15   = 0x%02x\n", 0xff & regs[R_EB15]);
	FUNC0("EXTENDED_BYTE_16 W = 0x%02x\n", 0xff & regs[R_EB16]);
	FUNC0("EXTENDED_BYTE_17 W = 0x%02x\n", 0xff & regs[R_EB17]);
	FUNC0("EXTENDED_BYTE_18   = 0x%02x\n", 0xff & regs[R_EB18]);
	FUNC0("EXTENDED_BYTE_19 W = 0x%02x\n", 0xff & regs[R_EB19]);
	FUNC0("EXTENDED_BYTE_20 W = 0x%02x\n", 0xff & regs[R_EB20]);
	FUNC0("EXTENDED_BYTE_21   = 0x%02x\n", 0xff & regs[R_EB21]);
	FUNC0("EXTENDED_BYTE_22   = 0x%02x\n", 0xff & regs[R_EB22]);
	FUNC0("EXTENDED_BYTE_23   = 0x%02x\n", 0xff & regs[R_EB23]);
}