; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_sw_scan_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_sw_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i32, i64, i64, i32 }
%struct.ieee80211_vif = type { i32 }

@BBU_RXRDY_CNT_REG = common dso_local global i64 0, align 8
@NOK_CCA_CNT_REG = common dso_local global i64 0, align 8
@BBU_AVG_NOISE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @mwl8k_sw_scan_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_sw_scan_complete(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.mwl8k_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %8, align 8
  store %struct.mwl8k_priv* %9, %struct.mwl8k_priv** %5, align 8
  %10 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %17 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %19 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %21 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BBU_RXRDY_CNT_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @ioread32(i64 %24)
  %26 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %27 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NOK_CCA_CNT_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @ioread32(i64 %30)
  %32 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %5, align 8
  %33 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BBU_AVG_NOISE_VAL, align 4
  %36 = call i32 @mwl8k_cmd_bbp_reg_access(i32 %34, i32 0, i32 %35, i32* %6)
  br label %37

37:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @mwl8k_cmd_bbp_reg_access(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
