; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_set_flags_for_band.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_set_flags_for_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@RXON_FLG_AUTO_DETECT_MSK = common dso_local global i32 0, align 4
@RXON_FLG_CCK_MSK = common dso_local global i32 0, align 4
@RXON_FLG_SHORT_SLOT_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_set_flags_for_band(%struct.il_priv* %0, i32 %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_vif*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  %11 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %12 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %18 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %16
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %23 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  br label %72

28:                                               ; preds = %3
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %30 = icmp ne %struct.ieee80211_vif* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %39 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %40 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 4
  br label %52

44:                                               ; preds = %31, %28
  %45 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %46
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %44, %37
  %53 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %54 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %55 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @RXON_FLG_AUTO_DETECT_MSK, align 4
  %60 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %61 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @RXON_FLG_CCK_MSK, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %68 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %66
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %52, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
