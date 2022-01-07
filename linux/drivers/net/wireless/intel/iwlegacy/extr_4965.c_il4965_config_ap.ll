; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_config_ap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_config_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_10__, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, %struct.ieee80211_vif* }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32 (%struct.il_priv*)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }

@S_EXIT_PENDING = common dso_local global i32 0, align 4
@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"RXON timing failed - Attempting to continue.\0A\00", align 1
@RXON_FLG_SHORT_PREAMBLE_MSK = common dso_local global i32 0, align 4
@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@RXON_FLG_SHORT_SLOT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*)* @il4965_config_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_config_ap(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca %struct.ieee80211_vif*, align 8
  %4 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %5 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %6 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %5, i32 0, i32 7
  %7 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_vif* %7, %struct.ieee80211_vif** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 6
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load i32, i32* @S_EXIT_PENDING, align 4
  %12 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %13 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %12, i32 0, i32 5
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %131

17:                                               ; preds = %1
  %18 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %19 = call i32 @il_is_associated(%struct.il_priv* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %128, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %25 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %30 = call i32 @il_commit_rxon(%struct.il_priv* %29)
  %31 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %32 = call i32 @il_send_rxon_timing(%struct.il_priv* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = call i32 @IL_WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %21
  %38 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %39 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %43 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %46 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 2
  %48 = call i32 @il_set_rxon_ht(%struct.il_priv* %45, i32* %47)
  %49 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %50 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %52, align 8
  %54 = icmp ne i32 (%struct.il_priv*)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %37
  %56 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %57 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %59, align 8
  %61 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %62 = call i32 %60(%struct.il_priv* %61)
  br label %63

63:                                               ; preds = %55, %37
  %64 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %65 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load i32, i32* @RXON_FLG_SHORT_PREAMBLE_MSK, align 4
  %74 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %75 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 8
  br label %87

79:                                               ; preds = %63
  %80 = load i32, i32* @RXON_FLG_SHORT_PREAMBLE_MSK, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %83 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %81
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %79, %72
  %88 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %89 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %87
  %96 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  %97 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %103 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %104 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %102
  store i32 %107, i32* %105, align 8
  br label %116

108:                                              ; preds = %95
  %109 = load i32, i32* @RXON_FLG_SHORT_SLOT_MSK, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %112 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %110
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %108, %101
  br label %117

117:                                              ; preds = %116, %87
  %118 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %119 = call i32 @il4965_send_beacon_cmd(%struct.il_priv* %118)
  %120 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %121 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %122 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %120
  store i32 %125, i32* %123, align 4
  %126 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %127 = call i32 @il_commit_rxon(%struct.il_priv* %126)
  br label %128

128:                                              ; preds = %117, %17
  %129 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %130 = call i32 @il4965_send_beacon_cmd(%struct.il_priv* %129)
  br label %131

131:                                              ; preds = %128, %16
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @il_is_associated(%struct.il_priv*) #1

declare dso_local i32 @il_commit_rxon(%struct.il_priv*) #1

declare dso_local i32 @il_send_rxon_timing(%struct.il_priv*) #1

declare dso_local i32 @IL_WARN(i8*) #1

declare dso_local i32 @il_set_rxon_ht(%struct.il_priv*, i32*) #1

declare dso_local i32 @il4965_send_beacon_cmd(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
