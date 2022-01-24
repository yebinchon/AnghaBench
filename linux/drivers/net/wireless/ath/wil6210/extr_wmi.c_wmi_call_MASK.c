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
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u16 ;
struct wil6210_priv {int /*<<< orphan*/  wmi_mutex; int /*<<< orphan*/  wmi_ev_lock; void* reply_size; int /*<<< orphan*/ * reply_buf; int /*<<< orphan*/  reply_mid; void* reply_id; int /*<<< orphan*/  wmi_call; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  U8_MAX ; 
 int FUNC0 (struct wil6210_priv*,void*,int /*<<< orphan*/ ,void*,void*) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wil6210_priv*,char*,void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct wil6210_priv*,char*,void*,void*,int) ; 

int FUNC11(struct wil6210_priv *wil, u16 cmdid, u8 mid, void *buf, u16 len,
	     u16 reply_id, void *reply, u16 reply_size, int to_msec)
{
	int rc;
	unsigned long remain;
	ulong flags;

	FUNC3(&wil->wmi_mutex);

	FUNC6(&wil->wmi_ev_lock, flags);
	wil->reply_id = reply_id;
	wil->reply_mid = mid;
	wil->reply_buf = reply;
	wil->reply_size = reply_size;
	FUNC5(&wil->wmi_call);
	FUNC7(&wil->wmi_ev_lock, flags);

	rc = FUNC0(wil, cmdid, mid, buf, len);
	if (rc)
		goto out;

	remain = FUNC8(&wil->wmi_call,
					     FUNC2(to_msec));
	if (0 == remain) {
		FUNC10(wil, "wmi_call(0x%04x->0x%04x) timeout %d msec\n",
			cmdid, reply_id, to_msec);
		rc = -ETIME;
	} else {
		FUNC9(wil,
			    "wmi_call(0x%04x->0x%04x) completed in %d msec\n",
			    cmdid, reply_id,
			    to_msec - FUNC1(remain));
	}

out:
	FUNC6(&wil->wmi_ev_lock, flags);
	wil->reply_id = 0;
	wil->reply_mid = U8_MAX;
	wil->reply_buf = NULL;
	wil->reply_size = 0;
	FUNC7(&wil->wmi_ev_lock, flags);

	FUNC4(&wil->wmi_mutex);

	return rc;
}