; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_config_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_config_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_4__, i32, %struct.ieee80211_vif* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.ieee80211_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@S_EXIT_PENDING = common dso_local global i32 0, align 4
@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"C_RXON_TIMING failed - Attempting to continue.\0A\00", align 1
@RXON_FLG_SHORT_PREAMBLE_MSK = common dso_local global i32 0, align 4
@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@RXON_FLG_SHORT_SLOT_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il3945_config_ap(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca %struct.ieee80211_vif*, align 8
  %4 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %5 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %6 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %5, i32 0, i32 2
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_vif* %7, %struct.ieee80211_vif** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @S_EXIT_PENDING, align 4
  %9 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %100

14:                                               ; preds = %1
  %15 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %16 = call i32 @il_is_associated(%struct.il_priv* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %97, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %22 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %27 = call i32 @il3945_commit_rxon(%struct.il_priv* %26)
  %28 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %29 = call i32 @il_send_rxon_timing(%struct.il_priv* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = call i32 @IL_WARN(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %18
  %35 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %36 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i32, i32* @RXON_FLG_SHORT_PREAMBLE_MSK, align 4
  %45 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %46 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 8
  br label %58

50:                                               ; preds = %34
  %51 = load i32, i32* @RXON_FLG_SHORT_PREAMBLE_MSK, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %54 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %52
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %50, %43
  %59 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %60 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %58
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %74 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %75 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 8
  br label %87

79:                                               ; preds = %66
  %80 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %83 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %81
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %79, %72
  br label %88

88:                                               ; preds = %87, %58
  %89 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %90 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %91 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %96 = call i32 @il3945_commit_rxon(%struct.il_priv* %95)
  br label %97

97:                                               ; preds = %88, %14
  %98 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %99 = call i32 @il3945_send_beacon_cmd(%struct.il_priv* %98)
  br label %100

100:                                              ; preds = %97, %13
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @il_is_associated(%struct.il_priv*) #1

declare dso_local i32 @il3945_commit_rxon(%struct.il_priv*) #1

declare dso_local i32 @il_send_rxon_timing(%struct.il_priv*) #1

declare dso_local i32 @IL_WARN(i8*) #1

declare dso_local i32 @il3945_send_beacon_cmd(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
