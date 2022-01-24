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
typedef  int /*<<< orphan*/  u_long ;
struct s_smc {int dummy; } ;
struct fddi_mac {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_CMDREG2 ; 
 int /*<<< orphan*/  FM_ISTTB ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct s_smc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct s_smc *smc, u_long td, struct fddi_mac *mac,
			unsigned int off, int len)
/* u_long td;		 transmit descriptor */
/* struct fddi_mac *mac; mac frame pointer */
/* unsigned int off;	 start address within buffer memory */
/* int len ;		 length of the frame including the FC */
{
	int	i ;
	__le32	*p ;

	FUNC0() ;
	FUNC2(off) ;		/* set memory address reg for writes */

	p = (__le32 *) mac ;
	for (i = (len + 3)/4 ; i ; i--) {
		if (i == 1) {
			/* last word, set the tag bit */
			FUNC4(FUNC1(FM_CMDREG2),FM_ISTTB) ;
		}
		FUNC5(smc,FUNC3(*p)) ;
		p++ ;
	}

	FUNC4(FUNC1(FM_CMDREG2),FM_ISTTB) ;	/* set the tag bit */
	FUNC5(smc,td) ;	/* write over memory data reg to buffer */
}