; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_init_drv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_init_drv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32*, i32, i64, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@IWL_MISSED_BEACON_THRESHOLD_DEF = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@IWLAGN_BT_KILL_ACK_MASK_DEFAULT = common dso_local global i32 0, align 4
@IWLAGN_BT_KILL_CTS_MASK_DEFAULT = common dso_local global i32 0, align 4
@IWLAGN_BT_ALL_VALID_MSK = common dso_local global i32 0, align 4
@BT_ON_THRESHOLD_DEF = common dso_local global i32 0, align 4
@BT_DURATION_LIMIT_DEF = common dso_local global i32 0, align 4
@BT_FRAG_THRESHOLD_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_init_drv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_init_drv(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %3 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %3, i32 0, i32 17
  %5 = call i32 @spin_lock_init(i32* %4)
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 16
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %9, i32 0, i32 15
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 14
  store i32 %12, i32* %14, align 8
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 6
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 13
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 11
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @IWL_MISSED_BEACON_THRESHOLD_DEF, align 4
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 10
  store i32 %29, i32* %31, align 8
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %33 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %32, i32 0, i32 9
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @jiffies, align 4
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %36 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i32 @iwlagn_set_rxon_chain(%struct.iwl_priv* %37, i32* %42)
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %45 = call i32 @iwl_init_scan_params(%struct.iwl_priv* %44)
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %47 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %46, i32 0, i32 6
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = icmp ne %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %80

52:                                               ; preds = %1
  %53 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %54 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %53, i32 0, i32 6
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %52
  %62 = load i32, i32* @IWLAGN_BT_KILL_ACK_MASK_DEFAULT, align 4
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %64 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @IWLAGN_BT_KILL_CTS_MASK_DEFAULT, align 4
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %67 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @IWLAGN_BT_ALL_VALID_MSK, align 4
  %69 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %70 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @BT_ON_THRESHOLD_DEF, align 4
  %72 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %73 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @BT_DURATION_LIMIT_DEF, align 4
  %75 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %76 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @BT_FRAG_THRESHOLD_DEF, align 4
  %78 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %79 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %61, %52, %1
  ret i32 0
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @iwlagn_set_rxon_chain(%struct.iwl_priv*, i32*) #1

declare dso_local i32 @iwl_init_scan_params(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
