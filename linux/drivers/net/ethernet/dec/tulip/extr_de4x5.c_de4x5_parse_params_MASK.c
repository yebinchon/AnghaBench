#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {char* name; } ;
struct TYPE_2__ {int fdx; void* autosense; } ;
struct de4x5_private {TYPE_1__ params; } ;

/* Variables and functions */
 void* AUI ; 
 void* AUTO ; 
 void* BNC ; 
 void* TP ; 
 void* TP_NW ; 
 void* _100Mb ; 
 void* _10Mb ; 
 char* args ; 
 struct de4x5_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev)
{
    struct de4x5_private *lp = FUNC0(dev);
    char *p, *q, t;

    lp->params.fdx = false;
    lp->params.autosense = AUTO;

    if (args == NULL) return;

    if ((p = FUNC2(args, dev->name))) {
	if (!(q = FUNC2(p+FUNC1(dev->name), "eth"))) q = p + FUNC1(p);
	t = *q;
	*q = '\0';

	if (FUNC2(p, "fdx") || FUNC2(p, "FDX")) lp->params.fdx = true;

	if (FUNC2(p, "autosense") || FUNC2(p, "AUTOSENSE")) {
	    if (FUNC2(p, "TP_NW")) {
		lp->params.autosense = TP_NW;
	    } else if (FUNC2(p, "TP")) {
		lp->params.autosense = TP;
	    } else if (FUNC2(p, "BNC_AUI")) {
		lp->params.autosense = BNC;
	    } else if (FUNC2(p, "BNC")) {
		lp->params.autosense = BNC;
	    } else if (FUNC2(p, "AUI")) {
		lp->params.autosense = AUI;
	    } else if (FUNC2(p, "10Mb")) {
		lp->params.autosense = _10Mb;
	    } else if (FUNC2(p, "100Mb")) {
		lp->params.autosense = _100Mb;
	    } else if (FUNC2(p, "AUTO")) {
		lp->params.autosense = AUTO;
	    }
	}
	*q = t;
    }
}