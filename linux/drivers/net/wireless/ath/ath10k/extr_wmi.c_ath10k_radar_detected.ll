; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_radar_detected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_radar_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i64 }

@ATH10K_DBG_REGULATORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"dfs radar detected\0A\00", align 1
@radar_detected = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"DFS Radar detected, but ignored as requested\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_radar_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_radar_detected(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %3 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %4 = load i32, i32* @ATH10K_DBG_REGULATORY, align 4
  %5 = call i32 @ath10k_dbg(%struct.ath10k* %3, i32 %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %7 = load i32, i32* @radar_detected, align 4
  %8 = call i32 @ATH10K_DFS_STAT_INC(%struct.ath10k* %6, i32 %7)
  %9 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %15 = call i32 @ath10k_info(%struct.ath10k* %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ieee80211_radar_detected(i32 %19)
  br label %21

21:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @ATH10K_DFS_STAT_INC(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_info(%struct.ath10k*, i8*) #1

declare dso_local i32 @ieee80211_radar_detected(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
