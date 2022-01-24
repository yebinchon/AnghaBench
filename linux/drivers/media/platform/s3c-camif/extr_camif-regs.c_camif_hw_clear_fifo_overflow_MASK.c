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
struct camif_vp {scalar_t__ id; struct camif_dev* camif; } ;
struct camif_dev {int dummy; } ;

/* Variables and functions */
 int CIWDOFST_CLROVCOFICB ; 
 int CIWDOFST_CLROVCOFICR ; 
 int CIWDOFST_CLROVCOFIY ; 
 int CIWDOFST_CLROVPRFICB ; 
 int CIWDOFST_CLROVPRFICR ; 
 int /*<<< orphan*/  S3C_CAMIF_REG_CIWDOFST ; 
 int FUNC0 (struct camif_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct camif_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct camif_vp *vp)
{
	struct camif_dev *camif = vp->camif;
	u32 cfg;

	cfg = FUNC0(camif, S3C_CAMIF_REG_CIWDOFST);
	if (vp->id == 0)
		cfg |= (CIWDOFST_CLROVCOFIY | CIWDOFST_CLROVCOFICB |
			CIWDOFST_CLROVCOFICR);
	else
		cfg |= (/* CIWDOFST_CLROVPRFIY | */ CIWDOFST_CLROVPRFICB |
			CIWDOFST_CLROVPRFICR);
	FUNC1(camif, S3C_CAMIF_REG_CIWDOFST, cfg);
}