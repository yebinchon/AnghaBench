; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif-ops.h_ath6kl_hif_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif-ops.h_ath6kl_hif_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.cfg80211_wowlan = type { i32 }

@ATH6KL_DBG_HIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"hif suspend\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, %struct.cfg80211_wowlan*)* @ath6kl_hif_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_hif_suspend(%struct.ath6kl* %0, %struct.cfg80211_wowlan* %1) #0 {
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca %struct.cfg80211_wowlan*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %4, align 8
  %5 = load i32, i32* @ATH6KL_DBG_HIF, align 4
  %6 = call i32 @ath6kl_dbg(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %8 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.ath6kl*, %struct.cfg80211_wowlan*)**
  %12 = load i32 (%struct.ath6kl*, %struct.cfg80211_wowlan*)*, i32 (%struct.ath6kl*, %struct.cfg80211_wowlan*)** %11, align 8
  %13 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %14 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %4, align 8
  %15 = call i32 %12(%struct.ath6kl* %13, %struct.cfg80211_wowlan* %14)
  ret i32 %15
}

declare dso_local i32 @ath6kl_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
