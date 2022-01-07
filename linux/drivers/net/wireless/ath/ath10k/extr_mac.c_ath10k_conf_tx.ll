; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_conf_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32, i32 }
%struct.ath10k_vif = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg }
%struct.wmi_wmm_params_arg = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed to set vdev wmm params on vdev %i: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to set wmm params: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to set sta uapsd: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_tx_queue_params*)* @ath10k_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %9 = alloca %struct.ath10k*, align 8
  %10 = alloca %struct.ath10k_vif*, align 8
  %11 = alloca %struct.wmi_wmm_params_arg*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.ath10k*, %struct.ath10k** %14, align 8
  store %struct.ath10k* %15, %struct.ath10k** %9, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %20, %struct.ath10k_vif** %10, align 8
  store %struct.wmi_wmm_params_arg* null, %struct.wmi_wmm_params_arg** %11, align 8
  %21 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %41 [
    i32 128, label %25
    i32 129, label %29
    i32 131, label %33
    i32 130, label %37
  ]

25:                                               ; preds = %4
  %26 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %27 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  store %struct.wmi_wmm_params_arg* %28, %struct.wmi_wmm_params_arg** %11, align 8
  br label %41

29:                                               ; preds = %4
  %30 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %31 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store %struct.wmi_wmm_params_arg* %32, %struct.wmi_wmm_params_arg** %11, align 8
  br label %41

33:                                               ; preds = %4
  %34 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %35 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store %struct.wmi_wmm_params_arg* %36, %struct.wmi_wmm_params_arg** %11, align 8
  br label %41

37:                                               ; preds = %4
  %38 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %39 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store %struct.wmi_wmm_params_arg* %40, %struct.wmi_wmm_params_arg** %11, align 8
  br label %41

41:                                               ; preds = %4, %37, %33, %29, %25
  %42 = load %struct.wmi_wmm_params_arg*, %struct.wmi_wmm_params_arg** %11, align 8
  %43 = icmp ne %struct.wmi_wmm_params_arg* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %125

51:                                               ; preds = %41
  %52 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %53 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wmi_wmm_params_arg*, %struct.wmi_wmm_params_arg** %11, align 8
  %56 = getelementptr inbounds %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %58 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wmi_wmm_params_arg*, %struct.wmi_wmm_params_arg** %11, align 8
  %61 = getelementptr inbounds %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %63 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.wmi_wmm_params_arg*, %struct.wmi_wmm_params_arg** %11, align 8
  %66 = getelementptr inbounds %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %68 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 32
  %71 = load %struct.wmi_wmm_params_arg*, %struct.wmi_wmm_params_arg** %11, align 8
  %72 = getelementptr inbounds %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %74 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %51
  %81 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %82 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %83 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %86 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %85, i32 0, i32 0
  %87 = call i32 @ath10k_wmi_vdev_wmm_conf(%struct.ath10k* %81, i32 %84, %struct.TYPE_7__* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %80
  %91 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %92 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %93 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %91, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95)
  br label %125

97:                                               ; preds = %80
  br label %110

98:                                               ; preds = %51
  %99 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %100 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %101 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %100, i32 0, i32 0
  %102 = call i32 @ath10k_wmi_pdev_set_wmm_params(%struct.ath10k* %99, %struct.TYPE_7__* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %125

109:                                              ; preds = %98
  br label %110

110:                                              ; preds = %109, %97
  %111 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %112 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %115 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ath10k_conf_tx_uapsd(%struct.ath10k* %111, %struct.ieee80211_vif* %112, i32 %113, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %120, %110
  br label %125

125:                                              ; preds = %124, %105, %90, %48
  %126 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %127 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %126, i32 0, i32 0
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load i32, i32* %12, align 4
  ret i32 %129
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath10k_wmi_vdev_wmm_conf(%struct.ath10k*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @ath10k_wmi_pdev_set_wmm_params(%struct.ath10k*, %struct.TYPE_7__*) #1

declare dso_local i32 @ath10k_conf_tx_uapsd(%struct.ath10k*, %struct.ieee80211_vif*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
