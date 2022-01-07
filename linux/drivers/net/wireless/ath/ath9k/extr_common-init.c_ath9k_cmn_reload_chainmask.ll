; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-init.c_ath9k_cmn_reload_chainmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_common-init.c_ath9k_cmn_reload_chainmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ath_common = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ATH9K_HW_CAP_HT = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@ATH9K_HW_CAP_5GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_cmn_reload_chainmask(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %4)
  store %struct.ath_common* %5, %struct.ath_common** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ATH9K_HW_CAP_HT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ATH9K_HW_CAP_2GHZ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %25 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @ath9k_cmn_setup_ht_cap(%struct.ath_hw* %23, i32* %29)
  br label %31

31:                                               ; preds = %22, %14
  %32 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ATH9K_HW_CAP_5GHZ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %41 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %42 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @ath9k_cmn_setup_ht_cap(%struct.ath_hw* %40, i32* %46)
  br label %48

48:                                               ; preds = %13, %39, %31
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_cmn_setup_ht_cap(%struct.ath_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
