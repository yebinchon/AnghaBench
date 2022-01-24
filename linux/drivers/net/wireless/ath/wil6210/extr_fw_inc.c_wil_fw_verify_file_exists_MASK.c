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
struct wil6210_priv {int dummy; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct firmware const*) ; 
 int FUNC1 (struct firmware const**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*) ; 

bool FUNC4(struct wil6210_priv *wil, const char *name)
{
	const struct firmware *fw;
	int rc;

	rc = FUNC1(&fw, name, FUNC3(wil));
	if (!rc)
		FUNC0(fw);
	else
		FUNC2(wil, "<%s> not available: %d\n", name, rc);
	return !rc;
}