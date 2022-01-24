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
struct wmi_set_mac_address_cmd {int /*<<< orphan*/  mac; } ;
struct wil6210_vif {int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int /*<<< orphan*/  main_ndev; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  WMI_SET_MAC_ADDRESS_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 struct wil6210_vif* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*,void*) ; 
 int FUNC3 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wmi_set_mac_address_cmd*,int) ; 

int FUNC4(struct wil6210_priv *wil, void *addr)
{
	struct wil6210_vif *vif = FUNC1(wil->main_ndev);
	struct wmi_set_mac_address_cmd cmd;

	FUNC0(cmd.mac, addr);

	FUNC2(wil, "Set MAC %pM\n", addr);

	return FUNC3(wil, WMI_SET_MAC_ADDRESS_CMDID, vif->mid,
			&cmd, sizeof(cmd));
}