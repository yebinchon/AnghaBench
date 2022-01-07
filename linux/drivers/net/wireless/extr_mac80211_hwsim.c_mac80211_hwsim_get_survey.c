
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct survey_info {int filled; int noise; int time; int time_busy; int channel; } ;
struct mac80211_hwsim_data {int mutex; TYPE_1__* survey_data; } ;
struct ieee80211_hw {struct mac80211_hwsim_data* priv; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; int channel; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOENT ;
 int SURVEY_INFO_NOISE_DBM ;
 int SURVEY_INFO_TIME ;
 int SURVEY_INFO_TIME_BUSY ;
 int jiffies_to_msecs (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mac80211_hwsim_get_survey(struct ieee80211_hw *hw, int idx,
         struct survey_info *survey)
{
 struct mac80211_hwsim_data *hwsim = hw->priv;

 if (idx < 0 || idx >= ARRAY_SIZE(hwsim->survey_data))
  return -ENOENT;

 mutex_lock(&hwsim->mutex);
 survey->channel = hwsim->survey_data[idx].channel;
 if (!survey->channel) {
  mutex_unlock(&hwsim->mutex);
  return -ENOENT;
 }







 survey->filled = SURVEY_INFO_NOISE_DBM |
    SURVEY_INFO_TIME |
    SURVEY_INFO_TIME_BUSY;
 survey->noise = -92;
 survey->time =
  jiffies_to_msecs(hwsim->survey_data[idx].end -
     hwsim->survey_data[idx].start);

 survey->time_busy = survey->time/8;
 mutex_unlock(&hwsim->mutex);

 return 0;
}
