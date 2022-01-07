; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_thermal.c_ath10k_thermal_set_cur_throttle_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_thermal.c_ath10k_thermal_set_cur_throttle_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.ath10k* }
%struct.ath10k = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ATH10K_THERMAL_THROTTLE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"throttle state %ld is exceeding the limit %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @ath10k_thermal_set_cur_throttle_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_thermal_set_cur_throttle_state(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ath10k*, align 8
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %8 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %7, i32 0, i32 0
  %9 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  store %struct.ath10k* %9, %struct.ath10k** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @ATH10K_THERMAL_THROTTLE_MAX, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @ATH10K_THERMAL_THROTTLE_MAX, align 8
  %17 = call i32 @ath10k_warn(%struct.ath10k* %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %26 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %29 = call i32 @ath10k_thermal_set_throttling(%struct.ath10k* %28)
  %30 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %20, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath10k_thermal_set_throttling(%struct.ath10k*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
