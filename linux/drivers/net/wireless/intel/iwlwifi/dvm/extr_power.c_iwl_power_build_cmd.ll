; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_power.c_iwl_power_build_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_power.c_iwl_power_build_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.iwl_priv = type { %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_powertable_cmd = type { i32 }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@force_cam = common dso_local global i64 0, align 8
@IWL_POWER_INDEX_5 = common dso_local global i64 0, align 8
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@IWL_POWER_INDEX_1 = common dso_local global i64 0, align 8
@IWL_POWER_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_powertable_cmd*)* @iwl_power_build_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_power_build_cmd(%struct.iwl_priv* %0, %struct.iwl_powertable_cmd* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_powertable_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_powertable_cmd* %1, %struct.iwl_powertable_cmd** %4, align 8
  %7 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* @force_cam, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %19 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %20 = call i32 @iwl_power_sleep_cam_cmd(%struct.iwl_priv* %18, %struct.iwl_powertable_cmd* %19)
  br label %125

21:                                               ; preds = %2
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i64 [ %27, %29 ], [ 1, %30 ]
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %40 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %41 = load i64, i64* @IWL_POWER_INDEX_5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @iwl_static_sleep_cmd(%struct.iwl_priv* %39, %struct.iwl_powertable_cmd* %40, i64 %41, i32 %42)
  br label %125

44:                                               ; preds = %31
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %44
  %52 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %53 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %63 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %64 = load i64, i64* @IWL_POWER_INDEX_5, align 8
  %65 = call i32 @iwl_static_sleep_cmd(%struct.iwl_priv* %62, %struct.iwl_powertable_cmd* %63, i64 %64, i32 20)
  br label %124

66:                                               ; preds = %51, %44
  %67 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %68 = call i64 @iwl_tt_is_low_power_state(%struct.iwl_priv* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %72 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %74 = call i64 @iwl_tt_current_power_mode(%struct.iwl_priv* %73)
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @iwl_static_sleep_cmd(%struct.iwl_priv* %71, %struct.iwl_powertable_cmd* %72, i64 %74, i32 %75)
  br label %123

77:                                               ; preds = %66
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %82 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %83 = call i32 @iwl_power_sleep_cam_cmd(%struct.iwl_priv* %81, %struct.iwl_powertable_cmd* %82)
  br label %122

84:                                               ; preds = %77
  %85 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %86 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %92 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %93 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %94 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @iwl_static_sleep_cmd(%struct.iwl_priv* %91, %struct.iwl_powertable_cmd* %92, i64 %96, i32 %97)
  br label %121

99:                                               ; preds = %84
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %101 = load i64, i64* @IWL_POWER_INDEX_1, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %105 = load i64, i64* @IWL_POWER_NUM, align 8
  %106 = icmp sle i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %109 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %111 = sub nsw i64 %110, 1
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @iwl_static_sleep_cmd(%struct.iwl_priv* %108, %struct.iwl_powertable_cmd* %109, i64 %111, i32 %112)
  br label %120

114:                                              ; preds = %103, %99
  %115 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %116 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %4, align 8
  %117 = load i64, i64* @IWL_POWER_INDEX_1, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @iwl_static_sleep_cmd(%struct.iwl_priv* %115, %struct.iwl_powertable_cmd* %116, i64 %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %107
  br label %121

121:                                              ; preds = %120, %90
  br label %122

122:                                              ; preds = %121, %80
  br label %123

123:                                              ; preds = %122, %70
  br label %124

124:                                              ; preds = %123, %61
  br label %125

125:                                              ; preds = %17, %124, %38
  ret void
}

declare dso_local i32 @iwl_power_sleep_cam_cmd(%struct.iwl_priv*, %struct.iwl_powertable_cmd*) #1

declare dso_local i32 @iwl_static_sleep_cmd(%struct.iwl_priv*, %struct.iwl_powertable_cmd*, i64, i32) #1

declare dso_local i64 @iwl_tt_is_low_power_state(%struct.iwl_priv*) #1

declare dso_local i64 @iwl_tt_current_power_mode(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
