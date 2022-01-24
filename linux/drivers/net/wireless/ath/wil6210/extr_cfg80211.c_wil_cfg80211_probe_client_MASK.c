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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct wiphy {int dummy; } ;
struct wil_probe_client_req {int cid; int cookie; int /*<<< orphan*/  list; } ;
struct wil6210_vif {int /*<<< orphan*/  probe_client_worker; int /*<<< orphan*/  probe_client_mutex; int /*<<< orphan*/  probe_client_pending; int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int /*<<< orphan*/  wq_service; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOLINK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct wil_probe_client_req* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct wil6210_vif* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,char*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct wil6210_priv* FUNC8 (struct wiphy*) ; 

__attribute__((used)) static int FUNC9(struct wiphy *wiphy,
				     struct net_device *dev,
				     const u8 *peer, u64 *cookie)
{
	struct wil6210_priv *wil = FUNC8(wiphy);
	struct wil6210_vif *vif = FUNC4(dev);
	struct wil_probe_client_req *req;
	int cid = FUNC7(wil, vif->mid, peer);

	FUNC6(wil, "probe_client: %pM => CID %d MID %d\n",
		     peer, cid, vif->mid);

	if (cid < 0)
		return -ENOLINK;

	req = FUNC0(sizeof(*req), GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	req->cid = cid;
	req->cookie = cid;

	FUNC2(&vif->probe_client_mutex);
	FUNC1(&req->list, &vif->probe_client_pending);
	FUNC3(&vif->probe_client_mutex);

	*cookie = req->cookie;
	FUNC5(wil->wq_service, &vif->probe_client_worker);
	return 0;
}