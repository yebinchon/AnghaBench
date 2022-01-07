; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_set_operating_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_set_operating_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i64, i64, %struct.ath_common }
%struct.ath_common = type { i32*, i32* }
%struct.ieee80211_vif = type { i32 }

@AR9170_MAC_CAM_DEFAULTS = common dso_local global i32 0, align 4
@AR9170_MAC_ENCRYPTION_DEFAULTS = common dso_local global i32 0, align 4
@AR9170_MAC_ENCRYPTION_MGMT_RX_SOFTWARE = common dso_local global i32 0, align 4
@AR9170_MAC_RX_CTRL_DEAGG = common dso_local global i32 0, align 4
@AR9170_MAC_RX_CTRL_SHORT_FILTER = common dso_local global i32 0, align 4
@AR9170_MAC_SNIFFER_DEFAULTS = common dso_local global i32 0, align 4
@AR9170_MAC_CAM_IBSS = common dso_local global i32 0, align 4
@AR9170_MAC_CAM_AP = common dso_local global i32 0, align 4
@AR9170_MAC_RX_CTRL_PASS_TO_HOST = common dso_local global i32 0, align 4
@AR9170_MAC_CAM_AP_WDS = common dso_local global i32 0, align 4
@AR9170_MAC_CAM_STA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unsupported operation mode %x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@AR9170_MAC_ENCRYPTION_RX_SOFTWARE = common dso_local global i32 0, align 4
@AR9170_MAC_REG_MAC_ADDR_L = common dso_local global i32 0, align 4
@AR9170_MAC_REG_BSSID_L = common dso_local global i32 0, align 4
@AR9170_MAC_REG_SNIFFER = common dso_local global i32 0, align 4
@AR9170_MAC_REG_CAM_MODE = common dso_local global i32 0, align 4
@AR9170_MAC_REG_ENCRYPTION = common dso_local global i32 0, align 4
@AR9170_MAC_REG_RX_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_set_operating_mode(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  %13 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %14 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %13, i32 0, i32 2
  store %struct.ath_common* %14, %struct.ath_common** %5, align 8
  %15 = load i32, i32* @AR9170_MAC_CAM_DEFAULTS, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @AR9170_MAC_ENCRYPTION_DEFAULTS, align 4
  %17 = load i32, i32* @AR9170_MAC_ENCRYPTION_MGMT_RX_SOFTWARE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @AR9170_MAC_RX_CTRL_DEAGG, align 4
  %20 = load i32, i32* @AR9170_MAC_RX_CTRL_SHORT_FILTER, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @AR9170_MAC_SNIFFER_DEFAULTS, align 4
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %25 = call %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170* %24)
  store %struct.ieee80211_vif* %25, %struct.ieee80211_vif** %4, align 8
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %27 = icmp ne %struct.ieee80211_vif* %26, null
  br i1 %27, label %28, label %71

28:                                               ; preds = %1
  %29 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %30 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %6, align 8
  %32 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %33 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %7, align 8
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %63 [
    i32 132, label %38
    i32 130, label %42
    i32 131, label %42
    i32 128, label %49
    i32 129, label %56
  ]

38:                                               ; preds = %28
  %39 = load i32, i32* @AR9170_MAC_CAM_IBSS, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %70

42:                                               ; preds = %28, %28
  %43 = load i32, i32* @AR9170_MAC_CAM_AP, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @AR9170_MAC_RX_CTRL_PASS_TO_HOST, align 4
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %70

49:                                               ; preds = %28
  %50 = load i32, i32* @AR9170_MAC_CAM_AP_WDS, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @AR9170_MAC_RX_CTRL_PASS_TO_HOST, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %70

56:                                               ; preds = %28
  %57 = load i32, i32* @AR9170_MAC_CAM_STA, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @AR9170_MAC_RX_CTRL_PASS_TO_HOST, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  br label %70

63:                                               ; preds = %28
  %64 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %63, %56, %49, %42, %38
  br label %81

71:                                               ; preds = %1
  %72 = load i32, i32* @AR9170_MAC_CAM_STA, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @AR9170_MAC_RX_CTRL_PASS_TO_HOST, align 4
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %10, align 4
  %78 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %79 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %6, align 8
  store i32* null, i32** %7, align 8
  br label %81

81:                                               ; preds = %71, %70
  %82 = call i32 (...) @rcu_read_unlock()
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %2, align 4
  br label %140

87:                                               ; preds = %81
  %88 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %89 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @AR9170_MAC_ENCRYPTION_RX_SOFTWARE, align 4
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %98 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @AR9170_MAC_ENCRYPTION_RX_SOFTWARE, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %107 = load i32, i32* @AR9170_MAC_REG_MAC_ADDR_L, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @carl9170_set_mac_reg(%struct.ar9170* %106, i32 %107, i32* %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %2, align 4
  br label %140

114:                                              ; preds = %105
  %115 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %116 = load i32, i32* @AR9170_MAC_REG_BSSID_L, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @carl9170_set_mac_reg(%struct.ar9170* %115, i32 %116, i32* %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %2, align 4
  br label %140

123:                                              ; preds = %114
  %124 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %125 = call i32 @carl9170_regwrite_begin(%struct.ar9170* %124)
  %126 = load i32, i32* @AR9170_MAC_REG_SNIFFER, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @carl9170_regwrite(i32 %126, i32 %127)
  %129 = load i32, i32* @AR9170_MAC_REG_CAM_MODE, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @carl9170_regwrite(i32 %129, i32 %130)
  %132 = load i32, i32* @AR9170_MAC_REG_ENCRYPTION, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @carl9170_regwrite(i32 %132, i32 %133)
  %135 = load i32, i32* @AR9170_MAC_REG_RX_CONTROL, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @carl9170_regwrite(i32 %135, i32 %136)
  %138 = call i32 (...) @carl9170_regwrite_finish()
  %139 = call i32 (...) @carl9170_regwrite_result()
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %123, %121, %112, %85
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @carl9170_set_mac_reg(%struct.ar9170*, i32, i32*) #1

declare dso_local i32 @carl9170_regwrite_begin(%struct.ar9170*) #1

declare dso_local i32 @carl9170_regwrite(i32, i32) #1

declare dso_local i32 @carl9170_regwrite_finish(...) #1

declare dso_local i32 @carl9170_regwrite_result(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
