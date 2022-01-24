#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* pointer; int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  ndev; } ;
typedef  TYPE_2__ islpci_private ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IWEVCUSTOM ; 
 int IW_CUSTOM_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,char*) ; 

__attribute__((used)) static void
FUNC6(islpci_private *priv, const char *str)
{
	union iwreq_data wrqu;
	char *memptr;
	int n = FUNC4(str);

	memptr = FUNC2(IW_CUSTOM_MAX, GFP_KERNEL);
	if (!memptr)
		return;
	FUNC0(n >= IW_CUSTOM_MAX);
	wrqu.data.pointer = memptr;
	wrqu.data.length = n;
	FUNC3(memptr, str);
	FUNC5(priv->ndev, IWEVCUSTOM, &wrqu, memptr);
	FUNC1(memptr);
}