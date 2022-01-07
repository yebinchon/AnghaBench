; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_recalc_radar_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_recalc_radar_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to start CAC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_recalc_radar_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_recalc_radar_detection(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %4 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %5 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %4, i32 0, i32 2
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %8 = call i32 @ath10k_stop_cac(%struct.ath10k* %7)
  %9 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %10 = call i32 @ath10k_mac_has_radar_enabled(%struct.ath10k* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %32

19:                                               ; preds = %13
  %20 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %21 = call i32 @ath10k_start_cac(%struct.ath10k* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @ath10k_warn(%struct.ath10k* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %29 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ieee80211_radar_detected(i32 %30)
  br label %32

32:                                               ; preds = %12, %18, %24, %19
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_stop_cac(%struct.ath10k*) #1

declare dso_local i32 @ath10k_mac_has_radar_enabled(%struct.ath10k*) #1

declare dso_local i32 @ath10k_start_cac(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ieee80211_radar_detected(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
