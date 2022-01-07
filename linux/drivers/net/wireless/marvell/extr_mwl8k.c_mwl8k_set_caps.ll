; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_set_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_set_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i32, i32 }

@MWL8K_CAP_2GHZ4 = common dso_local global i32 0, align 4
@MWL8K_CAP_BAND_MASK = common dso_local global i32 0, align 4
@MWL8K_CAP_MIMO = common dso_local global i32 0, align 4
@MWL8K_CAP_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @mwl8k_set_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_set_caps(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwl8k_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %7, align 8
  store %struct.mwl8k_priv* %8, %struct.mwl8k_priv** %5, align 8
  %9 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %61

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MWL8K_CAP_2GHZ4, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MWL8K_CAP_BAND_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %26 = call i32 @mwl8k_setup_2ghz_band(%struct.ieee80211_hw* %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MWL8K_CAP_MIMO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %33 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %34 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @mwl8k_set_ht_caps(%struct.ieee80211_hw* %32, i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %24
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MWL8K_CAP_5GHZ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %45 = call i32 @mwl8k_setup_5ghz_band(%struct.ieee80211_hw* %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @MWL8K_CAP_MIMO, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %52 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %53 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @mwl8k_set_ht_caps(%struct.ieee80211_hw* %51, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %43
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %60 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %13
  ret void
}

declare dso_local i32 @mwl8k_setup_2ghz_band(%struct.ieee80211_hw*) #1

declare dso_local i32 @mwl8k_set_ht_caps(%struct.ieee80211_hw*, i32*, i32) #1

declare dso_local i32 @mwl8k_setup_5ghz_band(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
