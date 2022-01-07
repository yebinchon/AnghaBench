; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_change_iface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_change_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i64 }
%struct.net_device = type { i32 }
%struct.vif_params = type { i32 }
%struct.wil6210_priv = type { i32, i32 }
%struct.wil6210_vif = type { i64 }
%struct.wireless_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"change_iface: type=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"iface validation failed, err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"interface is up. resetting...\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, %struct.vif_params*)* @wil_cfg80211_change_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_change_iface(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, %struct.vif_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vif_params*, align 8
  %10 = alloca %struct.wil6210_priv*, align 8
  %11 = alloca %struct.wil6210_vif*, align 8
  %12 = alloca %struct.wireless_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vif_params* %3, %struct.vif_params** %9, align 8
  %15 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %16 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %15)
  store %struct.wil6210_priv* %16, %struct.wil6210_priv** %10, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %17)
  store %struct.wil6210_vif* %18, %struct.wil6210_vif** %11, align 8
  %19 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %20 = call %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif* %19)
  store %struct.wireless_dev* %20, %struct.wireless_dev** %12, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %25 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %4
  %29 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %30 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @wil_cfg80211_validate_change_iface(%struct.wil6210_priv* %29, %struct.wil6210_vif* %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @wil_err(%struct.wil6210_priv* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %5, align 4
  br label %141

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %4
  %42 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = call i32 @wil_has_other_active_ifaces(%struct.wil6210_priv* %42, %struct.net_device* %43, i32 1, i32 0)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %79, label %46

46:                                               ; preds = %41
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = call i64 @netif_running(%struct.net_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %52 = call i32 @wil_is_recovery_blocked(%struct.wil6210_priv* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %79, label %54

54:                                               ; preds = %50
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %56 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @wil_is_safe_switch(i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %54
  %62 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %63 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %65 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %64, i32 0, i32 1
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %68 = call i32 @__wil_down(%struct.wil6210_priv* %67)
  %69 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %70 = call i32 @__wil_up(%struct.wil6210_priv* %69)
  store i32 %70, i32* %13, align 4
  %71 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %72 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %61
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %141

78:                                               ; preds = %61
  store i32 1, i32* %14, align 4
  br label %79

79:                                               ; preds = %78, %54, %50, %46, %41
  %80 = load i32, i32* %8, align 4
  switch i32 %80, label %94 [
    i32 128, label %81
    i32 132, label %81
    i32 130, label %81
    i32 129, label %81
    i32 131, label %82
  ]

81:                                               ; preds = %79, %79, %79, %79
  br label %97

82:                                               ; preds = %79
  %83 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %84 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.vif_params*, %struct.vif_params** %9, align 8
  %89 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %92 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %87, %82
  br label %97

94:                                               ; preds = %79
  %95 = load i32, i32* @EOPNOTSUPP, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %141

97:                                               ; preds = %93, %81
  %98 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %99 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %137

102:                                              ; preds = %97
  %103 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %104 = call i64 @wil_has_active_ifaces(%struct.wil6210_priv* %103, i32 1, i32 0)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %102
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %111 = call i32 @wil_vif_prepare_stop(%struct.wil6210_vif* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %114 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %115 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @wmi_port_delete(%struct.wil6210_priv* %113, i64 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %5, align 4
  br label %141

122:                                              ; preds = %112
  %123 = load %struct.wil6210_priv*, %struct.wil6210_priv** %10, align 8
  %124 = load %struct.wil6210_vif*, %struct.wil6210_vif** %11, align 8
  %125 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.net_device*, %struct.net_device** %7, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @wmi_port_allocate(%struct.wil6210_priv* %123, i64 %126, i32 %129, i32 %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %122
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %5, align 4
  br label %141

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %136, %102, %97
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %140 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %137, %134, %120, %94, %76, %35
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local %struct.wireless_dev* @vif_to_wdev(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wil_cfg80211_validate_change_iface(%struct.wil6210_priv*, %struct.wil6210_vif*, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @wil_has_other_active_ifaces(%struct.wil6210_priv*, %struct.net_device*, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @wil_is_recovery_blocked(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_is_safe_switch(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__wil_down(%struct.wil6210_priv*) #1

declare dso_local i32 @__wil_up(%struct.wil6210_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @wil_has_active_ifaces(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @wil_vif_prepare_stop(%struct.wil6210_vif*) #1

declare dso_local i32 @wmi_port_delete(%struct.wil6210_priv*, i64) #1

declare dso_local i32 @wmi_port_allocate(%struct.wil6210_priv*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
