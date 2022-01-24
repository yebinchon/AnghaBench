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
struct wmi_link_stats_global {int /*<<< orphan*/  tx_fail_no_ack; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_mic_errors; int /*<<< orphan*/  tx_beacons; int /*<<< orphan*/  tx_ba_frames; int /*<<< orphan*/  rx_ba_frames; int /*<<< orphan*/  tx_frames; int /*<<< orphan*/  rx_frames; } ;
struct wil6210_priv {int dummy; } ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wil6210_priv *wil,
					struct seq_file *s,
					struct wmi_link_stats_global *global)
{
	FUNC1(s, "Frames(rx:tx) %d:%d\n"
		   "BA Frames(rx:tx) %d:%d\n"
		   "Beacons %d\n"
		   "Rx Errors (MIC:CRC) %d:%d\n"
		   "Tx Errors (no ack) %d\n",
		   FUNC0(global->rx_frames),
		   FUNC0(global->tx_frames),
		   FUNC0(global->rx_ba_frames),
		   FUNC0(global->tx_ba_frames),
		   FUNC0(global->tx_beacons),
		   FUNC0(global->rx_mic_errors),
		   FUNC0(global->rx_crc_errors),
		   FUNC0(global->tx_fail_no_ack));
}