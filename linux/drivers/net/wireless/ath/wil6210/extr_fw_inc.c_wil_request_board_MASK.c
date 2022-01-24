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
struct firmware {int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct firmware const*) ; 
 int FUNC1 (struct firmware const**,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wil6210_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,char const*,...) ; 
 int FUNC5 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*) ; 

int FUNC7(struct wil6210_priv *wil, const char *name)
{
	int rc, dlen;
	const struct firmware *brd;

	rc = FUNC1(&brd, name, FUNC6(wil));
	if (rc) {
		FUNC4(wil, "Failed to load brd %s\n", name);
		return rc;
	}
	FUNC3(wil, "Loading <%s>, %zu bytes\n", name, brd->size);

	/* Verify the header */
	dlen = FUNC5(wil, brd->data, brd->size);
	if (dlen < 0) {
		rc = dlen;
		goto out;
	}

	/* Process the data records */
	rc = FUNC2(wil, brd->data, dlen);

out:
	FUNC0(brd);
	if (rc)
		FUNC4(wil, "Loading <%s> failed, rc %d\n", name, rc);
	return rc;
}