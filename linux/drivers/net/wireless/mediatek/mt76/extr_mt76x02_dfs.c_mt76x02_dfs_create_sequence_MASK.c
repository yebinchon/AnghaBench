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
typedef  int u32 ;
typedef  int u16 ;
struct mt76x02_dfs_sw_detector_params {int min_pri; int max_pri; int /*<<< orphan*/  pri_margin; } ;
struct mt76x02_dfs_sequence {int pri; int first_ts; int last_ts; int engine; int count; int /*<<< orphan*/  head; } ;
struct mt76x02_dfs_pattern_detector {int /*<<< orphan*/  sequences; struct mt76x02_dfs_sw_detector_params sw_dpd_params; struct mt76x02_dfs_event_rb* event_rb; } ;
struct mt76x02_dfs_event_rb {int t_rb; int h_rb; struct mt76x02_dfs_event* data; } ;
struct mt76x02_dfs_event {int engine; int width; int ts; } ;
struct TYPE_2__ {int region; } ;
struct mt76x02_dev {TYPE_1__ mt76; struct mt76x02_dfs_pattern_detector dfs_pd; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MT_DFS_EVENT_BUFLEN ; 
#define  NL80211_DFS_ETSI 131 
#define  NL80211_DFS_FCC 130 
#define  NL80211_DFS_JP 129 
#define  NL80211_DFS_UNSET 128 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 struct mt76x02_dfs_sequence* FUNC5 (struct mt76x02_dev*) ; 

__attribute__((used)) static int FUNC6(struct mt76x02_dev *dev,
				       struct mt76x02_dfs_event *event,
				       u16 cur_len)
{
	struct mt76x02_dfs_pattern_detector *dfs_pd = &dev->dfs_pd;
	struct mt76x02_dfs_sw_detector_params *sw_params;
	u32 width_delta, with_sum, factor, cur_pri;
	struct mt76x02_dfs_sequence seq, *seq_p;
	struct mt76x02_dfs_event_rb *event_rb;
	struct mt76x02_dfs_event *cur_event;
	int i, j, end, pri;

	event_rb = event->engine == 2 ? &dfs_pd->event_rb[1]
				      : &dfs_pd->event_rb[0];

	i = FUNC3(event_rb->t_rb, MT_DFS_EVENT_BUFLEN);
	end = FUNC3(event_rb->h_rb, MT_DFS_EVENT_BUFLEN);

	while (i != end) {
		cur_event = &event_rb->data[i];
		with_sum = event->width + cur_event->width;

		sw_params = &dfs_pd->sw_dpd_params;
		switch (dev->mt76.region) {
		case NL80211_DFS_FCC:
		case NL80211_DFS_JP:
			if (with_sum < 600)
				width_delta = 8;
			else
				width_delta = with_sum >> 3;
			break;
		case NL80211_DFS_ETSI:
			if (event->engine == 2)
				width_delta = with_sum >> 6;
			else if (with_sum < 620)
				width_delta = 24;
			else
				width_delta = 8;
			break;
		case NL80211_DFS_UNSET:
		default:
			return -EINVAL;
		}

		pri = event->ts - cur_event->ts;
		if (FUNC1(event->width - cur_event->width) > width_delta ||
		    pri < sw_params->min_pri)
			goto next;

		if (pri > sw_params->max_pri)
			break;

		seq.pri = event->ts - cur_event->ts;
		seq.first_ts = cur_event->ts;
		seq.last_ts = event->ts;
		seq.engine = event->engine;
		seq.count = 2;

		j = FUNC3(i, MT_DFS_EVENT_BUFLEN);
		while (j != end) {
			cur_event = &event_rb->data[j];
			cur_pri = event->ts - cur_event->ts;
			factor = FUNC4(cur_pri, seq.pri,
						sw_params->pri_margin);
			if (factor > 0) {
				seq.first_ts = cur_event->ts;
				seq.count++;
			}

			j = FUNC3(j, MT_DFS_EVENT_BUFLEN);
		}
		if (seq.count <= cur_len)
			goto next;

		seq_p = FUNC5(dev);
		if (!seq_p)
			return -ENOMEM;

		*seq_p = seq;
		FUNC0(&seq_p->head);
		FUNC2(&seq_p->head, &dfs_pd->sequences);
next:
		i = FUNC3(i, MT_DFS_EVENT_BUFLEN);
	}
	return 0;
}