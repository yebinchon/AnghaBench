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
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALGNERRC ; 
 int /*<<< orphan*/  CEXTERR ; 
 int /*<<< orphan*/  IAC ; 
 int /*<<< orphan*/  ICRXATC ; 
 int /*<<< orphan*/  ICRXDMTC ; 
 int /*<<< orphan*/  ICRXOC ; 
 int /*<<< orphan*/  ICRXPTC ; 
 int /*<<< orphan*/  ICTXATC ; 
 int /*<<< orphan*/  ICTXPTC ; 
 int /*<<< orphan*/  ICTXQEC ; 
 int /*<<< orphan*/  ICTXQMTC ; 
 int /*<<< orphan*/  MGTPDC ; 
 int /*<<< orphan*/  MGTPRC ; 
 int /*<<< orphan*/  MGTPTC ; 
 int /*<<< orphan*/  PRC1023 ; 
 int /*<<< orphan*/  PRC127 ; 
 int /*<<< orphan*/  PRC1522 ; 
 int /*<<< orphan*/  PRC255 ; 
 int /*<<< orphan*/  PRC511 ; 
 int /*<<< orphan*/  PRC64 ; 
 int /*<<< orphan*/  PTC1023 ; 
 int /*<<< orphan*/  PTC127 ; 
 int /*<<< orphan*/  PTC1522 ; 
 int /*<<< orphan*/  PTC255 ; 
 int /*<<< orphan*/  PTC511 ; 
 int /*<<< orphan*/  PTC64 ; 
 int /*<<< orphan*/  RXERRC ; 
 int /*<<< orphan*/  TNCRS ; 
 int /*<<< orphan*/  TSCTC ; 
 int /*<<< orphan*/  TSCTFC ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct e1000_hw *hw)
{
	FUNC0(hw);

	FUNC1(PRC64);
	FUNC1(PRC127);
	FUNC1(PRC255);
	FUNC1(PRC511);
	FUNC1(PRC1023);
	FUNC1(PRC1522);
	FUNC1(PTC64);
	FUNC1(PTC127);
	FUNC1(PTC255);
	FUNC1(PTC511);
	FUNC1(PTC1023);
	FUNC1(PTC1522);

	FUNC1(ALGNERRC);
	FUNC1(RXERRC);
	FUNC1(TNCRS);
	FUNC1(CEXTERR);
	FUNC1(TSCTC);
	FUNC1(TSCTFC);

	FUNC1(MGTPRC);
	FUNC1(MGTPDC);
	FUNC1(MGTPTC);

	FUNC1(IAC);
	FUNC1(ICRXOC);

	FUNC1(ICRXPTC);
	FUNC1(ICRXATC);
	FUNC1(ICTXPTC);
	FUNC1(ICTXATC);
	FUNC1(ICTXQEC);
	FUNC1(ICTXQMTC);
	FUNC1(ICRXDMTC);
}