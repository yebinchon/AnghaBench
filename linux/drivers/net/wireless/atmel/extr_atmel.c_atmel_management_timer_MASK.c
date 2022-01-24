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
struct timer_list {int dummy; } ;
struct atmel_private {int station_state; int CurrentAuthentTransactionSeqNum; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  management_timer; int /*<<< orphan*/  ReAssociationRequestRetryCnt; int /*<<< orphan*/  station_is_associated; int /*<<< orphan*/  AssociationRequestRetryCnt; int /*<<< orphan*/  exclude_unencrypted; int /*<<< orphan*/  wep_is_on; int /*<<< orphan*/  AuthenticationRequestRetryCnt; scalar_t__ card; int /*<<< orphan*/  (* present_callback ) (scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_ASSOCIATION_RETRIES ; 
 int /*<<< orphan*/  MAX_AUTHENTICATION_RETRIES ; 
 scalar_t__ MGMT_JIFFIES ; 
#define  STATION_STATE_ASSOCIATING 130 
#define  STATION_STATE_AUTHENTICATING 129 
 int /*<<< orphan*/  STATION_STATE_MGMT_ERROR ; 
#define  STATION_STATE_REASSOCIATING 128 
 int WLAN_AUTH_OPEN ; 
 int WLAN_AUTH_SHARED_KEY ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_private*,int /*<<< orphan*/ ) ; 
 struct atmel_private* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  management_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct atmel_private* priv ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_private*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_private*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct atmel_private *priv = FUNC1(priv, t, management_timer);
	unsigned long flags;

	/* Check if the card has been yanked. */
	if (priv->card && priv->present_callback &&
		!(*priv->present_callback)(priv->card))
		return;

	FUNC6(&priv->irqlock, flags);

	switch (priv->station_state) {

	case STATION_STATE_AUTHENTICATING:
		if (priv->AuthenticationRequestRetryCnt >= MAX_AUTHENTICATION_RETRIES) {
			FUNC0(priv, STATION_STATE_MGMT_ERROR);
			priv->station_is_associated = 0;
			priv->AuthenticationRequestRetryCnt = 0;
			FUNC3(priv);
		} else {
			int auth = WLAN_AUTH_OPEN;
			priv->AuthenticationRequestRetryCnt++;
			priv->CurrentAuthentTransactionSeqNum = 0x0001;
			FUNC2(&priv->management_timer, jiffies + MGMT_JIFFIES);
			if (priv->wep_is_on && priv->exclude_unencrypted)
				auth = WLAN_AUTH_SHARED_KEY;
			FUNC5(priv, auth, NULL, 0);
	  }
	  break;

	case STATION_STATE_ASSOCIATING:
		if (priv->AssociationRequestRetryCnt == MAX_ASSOCIATION_RETRIES) {
			FUNC0(priv, STATION_STATE_MGMT_ERROR);
			priv->station_is_associated = 0;
			priv->AssociationRequestRetryCnt = 0;
			FUNC3(priv);
		} else {
			priv->AssociationRequestRetryCnt++;
			FUNC2(&priv->management_timer, jiffies + MGMT_JIFFIES);
			FUNC4(priv, 0);
		}
	  break;

	case STATION_STATE_REASSOCIATING:
		if (priv->ReAssociationRequestRetryCnt == MAX_ASSOCIATION_RETRIES) {
			FUNC0(priv, STATION_STATE_MGMT_ERROR);
			priv->station_is_associated = 0;
			priv->ReAssociationRequestRetryCnt = 0;
			FUNC3(priv);
		} else {
			priv->ReAssociationRequestRetryCnt++;
			FUNC2(&priv->management_timer, jiffies + MGMT_JIFFIES);
			FUNC4(priv, 1);
		}
		break;

	default:
		break;
	}

	FUNC7(&priv->irqlock, flags);
}