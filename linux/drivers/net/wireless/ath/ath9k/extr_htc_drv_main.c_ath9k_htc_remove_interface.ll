; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_remove_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_remove_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, i64, i32, i32, i32, %struct.ieee80211_vif*, i32, i32 }
%struct.ieee80211_vif = type { i32, i32, i64 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_vif = type { i32 }
%struct.ath9k_htc_target_vif = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WMI_VAP_REMOVE_CMDID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to remove interface at idx: %d\0A\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@ath9k_htc_vif_iter = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Detach Interface at idx: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath9k_htc_remove_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_remove_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath9k_htc_vif*, align 8
  %8 = alloca %struct.ath9k_htc_target_vif, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %12, align 8
  store %struct.ath9k_htc_priv* %13, %struct.ath9k_htc_priv** %5, align 8
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ath_common* @ath9k_hw_common(i32 %16)
  store %struct.ath_common* %17, %struct.ath_common** %6, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.ath9k_htc_vif*
  store %struct.ath9k_htc_vif* %22, %struct.ath9k_htc_vif** %7, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %24 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %23, i32 0, i32 3
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %27 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %26)
  %28 = call i32 @memset(%struct.ath9k_htc_target_vif* %8, i32 0, i32 8)
  %29 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 1
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @memcpy(i32* %29, i32 %32, i32 %33)
  %35 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %7, align 8
  %36 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @WMI_VAP_REMOVE_CMDID, align 4
  %40 = call i32 @WMI_CMD_BUF(i32 %39, %struct.ath9k_htc_target_vif* %8)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %2
  %44 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %45 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %7, align 8
  %46 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ath_err(%struct.ath_common* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %2
  %50 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %51 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %7, align 8
  %55 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 1, %56
  %58 = xor i32 %57, -1
  %59 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %60 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %64 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %63, i32 0, i32 5
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %64, align 8
  %66 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %67 = icmp eq %struct.ieee80211_vif* %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %49
  %69 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %70 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %69, i32 0, i32 5
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %70, align 8
  br label %71

71:                                               ; preds = %68, %49
  %72 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %73 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %74 = call i32 @ath9k_htc_remove_station(%struct.ath9k_htc_priv* %72, %struct.ieee80211_vif* %73, i32* null)
  %75 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %77 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @DEC_VIF(%struct.ath9k_htc_priv* %75, i32 %78)
  %80 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %71
  %86 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %87 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %93 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91, %85, %71
  %98 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %99 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %100 = call i32 @ath9k_htc_remove_bslot(%struct.ath9k_htc_priv* %98, %struct.ieee80211_vif* %99)
  br label %101

101:                                              ; preds = %97, %91
  %102 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %103 = call i32 @ath9k_htc_set_opmode(%struct.ath9k_htc_priv* %102)
  %104 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %105 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %106 = call i32 @ath9k_htc_set_mac_bssid_mask(%struct.ath9k_htc_priv* %104, %struct.ieee80211_vif* %105)
  %107 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %108 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %135

112:                                              ; preds = %101
  %113 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %114 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %112
  %118 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %119 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %118, i32 0, i32 2
  store i32 0, i32* %119, align 8
  %120 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %121 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %124 = load i32, i32* @ath9k_htc_vif_iter, align 4
  %125 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %126 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %122, i32 %123, i32 %124, %struct.ath9k_htc_priv* %125)
  %127 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %128 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %117
  %132 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %133 = call i32 @ath9k_htc_stop_ani(%struct.ath9k_htc_priv* %132)
  br label %134

134:                                              ; preds = %131, %117
  br label %135

135:                                              ; preds = %134, %112, %101
  %136 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %137 = load i32, i32* @CONFIG, align 4
  %138 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %7, align 8
  %139 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ath_dbg(%struct.ath_common* %136, i32 %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  %142 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %143 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %142)
  %144 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %145 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %144, i32 0, i32 3
  %146 = call i32 @mutex_unlock(i32* %145)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @memset(%struct.ath9k_htc_target_vif*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, %struct.ath9k_htc_target_vif*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32) #1

declare dso_local i32 @ath9k_htc_remove_station(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, i32*) #1

declare dso_local i32 @DEC_VIF(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @ath9k_htc_remove_bslot(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_htc_set_opmode(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_set_mac_bssid_mask(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_stop_ani(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
