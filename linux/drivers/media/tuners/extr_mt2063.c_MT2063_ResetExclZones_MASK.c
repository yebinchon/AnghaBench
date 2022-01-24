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
typedef  int u32 ;
struct MT2063_AvoidSpursData_t {int f_ref; int f_if1_Center; int f_if1_bw; int f_in; int f_LO1_FracN_Avoid; int f_out; int f_LO2_FracN_Avoid; int /*<<< orphan*/  avoidDECT; int /*<<< orphan*/ * freeZones; int /*<<< orphan*/ * usedZones; scalar_t__ nZones; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MT2063_AvoidSpursData_t*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void FUNC4(struct MT2063_AvoidSpursData_t *pAS_Info)
{
	u32 center;

	FUNC3(2, "\n");

	pAS_Info->nZones = 0;	/*  this clears the used list  */
	pAS_Info->usedZones = NULL;	/*  reset ptr                  */
	pAS_Info->freeZones = NULL;	/*  reset ptr                  */

	center =
	    pAS_Info->f_ref *
	    ((pAS_Info->f_if1_Center - pAS_Info->f_if1_bw / 2 +
	      pAS_Info->f_in) / pAS_Info->f_ref) - pAS_Info->f_in;
	while (center <
	       pAS_Info->f_if1_Center + pAS_Info->f_if1_bw / 2 +
	       pAS_Info->f_LO1_FracN_Avoid) {
		/*  Exclude LO1 FracN  */
		FUNC0(pAS_Info,
				   center - pAS_Info->f_LO1_FracN_Avoid,
				   center - 1);
		FUNC0(pAS_Info, center + 1,
				   center + pAS_Info->f_LO1_FracN_Avoid);
		center += pAS_Info->f_ref;
	}

	center =
	    pAS_Info->f_ref *
	    ((pAS_Info->f_if1_Center - pAS_Info->f_if1_bw / 2 -
	      pAS_Info->f_out) / pAS_Info->f_ref) + pAS_Info->f_out;
	while (center <
	       pAS_Info->f_if1_Center + pAS_Info->f_if1_bw / 2 +
	       pAS_Info->f_LO2_FracN_Avoid) {
		/*  Exclude LO2 FracN  */
		FUNC0(pAS_Info,
				   center - pAS_Info->f_LO2_FracN_Avoid,
				   center - 1);
		FUNC0(pAS_Info, center + 1,
				   center + pAS_Info->f_LO2_FracN_Avoid);
		center += pAS_Info->f_ref;
	}

	if (FUNC2(pAS_Info->avoidDECT)) {
		/*  Exclude LO1 values that conflict with DECT channels */
		FUNC0(pAS_Info, 1920836000 - pAS_Info->f_in, 1922236000 - pAS_Info->f_in);	/* Ctr = 1921.536 */
		FUNC0(pAS_Info, 1922564000 - pAS_Info->f_in, 1923964000 - pAS_Info->f_in);	/* Ctr = 1923.264 */
		FUNC0(pAS_Info, 1924292000 - pAS_Info->f_in, 1925692000 - pAS_Info->f_in);	/* Ctr = 1924.992 */
		FUNC0(pAS_Info, 1926020000 - pAS_Info->f_in, 1927420000 - pAS_Info->f_in);	/* Ctr = 1926.720 */
		FUNC0(pAS_Info, 1927748000 - pAS_Info->f_in, 1929148000 - pAS_Info->f_in);	/* Ctr = 1928.448 */
	}

	if (FUNC1(pAS_Info->avoidDECT)) {
		FUNC0(pAS_Info, 1896644000 - pAS_Info->f_in, 1898044000 - pAS_Info->f_in);	/* Ctr = 1897.344 */
		FUNC0(pAS_Info, 1894916000 - pAS_Info->f_in, 1896316000 - pAS_Info->f_in);	/* Ctr = 1895.616 */
		FUNC0(pAS_Info, 1893188000 - pAS_Info->f_in, 1894588000 - pAS_Info->f_in);	/* Ctr = 1893.888 */
		FUNC0(pAS_Info, 1891460000 - pAS_Info->f_in, 1892860000 - pAS_Info->f_in);	/* Ctr = 1892.16  */
		FUNC0(pAS_Info, 1889732000 - pAS_Info->f_in, 1891132000 - pAS_Info->f_in);	/* Ctr = 1890.432 */
		FUNC0(pAS_Info, 1888004000 - pAS_Info->f_in, 1889404000 - pAS_Info->f_in);	/* Ctr = 1888.704 */
		FUNC0(pAS_Info, 1886276000 - pAS_Info->f_in, 1887676000 - pAS_Info->f_in);	/* Ctr = 1886.976 */
		FUNC0(pAS_Info, 1884548000 - pAS_Info->f_in, 1885948000 - pAS_Info->f_in);	/* Ctr = 1885.248 */
		FUNC0(pAS_Info, 1882820000 - pAS_Info->f_in, 1884220000 - pAS_Info->f_in);	/* Ctr = 1883.52  */
		FUNC0(pAS_Info, 1881092000 - pAS_Info->f_in, 1882492000 - pAS_Info->f_in);	/* Ctr = 1881.792 */
	}
}