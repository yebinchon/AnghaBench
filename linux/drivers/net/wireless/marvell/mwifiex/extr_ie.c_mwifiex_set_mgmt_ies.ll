; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_set_mgmt_ies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_ie.c_mwifiex_set_mgmt_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.cfg80211_beacon_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_set_mgmt_ies(%struct.mwifiex_private* %0, %struct.cfg80211_beacon_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.cfg80211_beacon_data*, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.cfg80211_beacon_data* %1, %struct.cfg80211_beacon_data** %5, align 8
  %7 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %8 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %9 = call i32 @mwifiex_uap_parse_tail_ies(%struct.mwifiex_private* %7, %struct.cfg80211_beacon_data* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %16 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %5, align 8
  %17 = call i32 @mwifiex_set_mgmt_beacon_data_ies(%struct.mwifiex_private* %15, %struct.cfg80211_beacon_data* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @mwifiex_uap_parse_tail_ies(%struct.mwifiex_private*, %struct.cfg80211_beacon_data*) #1

declare dso_local i32 @mwifiex_set_mgmt_beacon_data_ies(%struct.mwifiex_private*, %struct.cfg80211_beacon_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
