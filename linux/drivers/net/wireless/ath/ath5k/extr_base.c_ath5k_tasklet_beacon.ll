; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_tasklet_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_tasklet_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32, i32, i64 }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@ATH5K_DEBUG_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SWBA nexttbtt: %x hw_tu: %x TSF: %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ath5k_tasklet_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_tasklet_beacon(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.ath5k_hw*
  store %struct.ath5k_hw* %6, %struct.ath5k_hw** %3, align 8
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %14 = call i64 @ath5k_hw_get_tsf64(%struct.ath5k_hw* %13)
  store i64 %14, i64* %4, align 8
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %19 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %25 = load i32, i32* @ATH5K_DEBUG_BEACON, align 4
  %26 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %27 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @TSF_TO_TU(i64 %29)
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %24, i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i64 %31)
  br label %42

33:                                               ; preds = %1
  %34 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %34, i32 0, i32 1
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %38 = call i32 @ath5k_beacon_send(%struct.ath5k_hw* %37)
  %39 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %40 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock(i32* %40)
  br label %42

42:                                               ; preds = %33, %12
  ret void
}

declare dso_local i64 @ath5k_hw_get_tsf64(%struct.ath5k_hw*) #1

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i32, i32, i64) #1

declare dso_local i32 @TSF_TO_TU(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ath5k_beacon_send(%struct.ath5k_hw*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
