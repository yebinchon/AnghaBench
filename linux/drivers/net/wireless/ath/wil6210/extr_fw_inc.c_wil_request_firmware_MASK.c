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
struct wil6210_priv {int /*<<< orphan*/ * brd_info; scalar_t__ num_of_brd_entries; } ;
struct firmware {size_t size; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*) ; 
 int FUNC2 (struct firmware const**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,char const*,int) ; 
 int FUNC5 (struct wil6210_priv*,void const*,int,int) ; 
 int FUNC6 (struct wil6210_priv*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*) ; 

int FUNC8(struct wil6210_priv *wil, const char *name,
			 bool load)
{
	int rc, rc1;
	const struct firmware *fw;
	size_t sz;
	const void *d;

	rc = FUNC2(&fw, name, FUNC7(wil));
	if (rc) {
		FUNC4(wil, "Failed to load firmware %s rc %d\n", name, rc);
		return rc;
	}
	FUNC3(wil, "Loading <%s>, %zu bytes\n", name, fw->size);

	/* re-initialize board info params */
	wil->num_of_brd_entries = 0;
	FUNC0(wil->brd_info);
	wil->brd_info = NULL;

	for (sz = fw->size, d = fw->data; sz; sz -= rc1, d += rc1) {
		rc1 = FUNC6(wil, d, sz);
		if (rc1 < 0) {
			rc = rc1;
			goto out;
		}
		rc = FUNC5(wil, d, rc1, load);
		if (rc < 0)
			goto out;
	}

out:
	FUNC1(fw);
	if (rc)
		FUNC4(wil, "Loading <%s> failed, rc %d\n", name, rc);
	return rc;
}