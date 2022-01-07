; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_vif = type { i32, i32, i64 }
%struct.ath9k_htc_vif = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_target_vif = type { i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@HTC_M_STA = common dso_local global i32 0, align 4
@HTC_M_IBSS = common dso_local global i32 0, align 4
@HTC_M_HOSTAP = common dso_local global i32 0, align 4
@HTC_M_WDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Interface type %d not yet supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WMI_VAP_CREATE_CMDID = common dso_local global i32 0, align 4
@WMI_VAP_REMOVE_CMDID = common dso_local global i32 0, align 4
@ATH_OP_ANI_RUN = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Attach a VIF of type: %d at idx: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @ath9k_htc_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca %struct.ath9k_htc_vif*, align 8
  %7 = alloca %struct.ath_common*, align 8
  %8 = alloca %struct.ath9k_htc_target_vif, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %12, align 8
  store %struct.ath9k_htc_priv* %13, %struct.ath9k_htc_priv** %5, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.ath9k_htc_vif*
  store %struct.ath9k_htc_vif* %18, %struct.ath9k_htc_vif** %6, align 8
  %19 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %20 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_3__* %21)
  store %struct.ath_common* %22, %struct.ath_common** %7, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %24 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %27 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %26)
  %28 = call i32 @memset(%struct.ath9k_htc_target_vif* %8, i32 0, i32 16)
  %29 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 3
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @memcpy(i32* %29, i32 %32, i32 %33)
  %35 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %50 [
    i32 128, label %38
    i32 131, label %41
    i32 130, label %44
    i32 129, label %47
  ]

38:                                               ; preds = %2
  %39 = load i32, i32* @HTC_M_STA, align 4
  %40 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  br label %58

41:                                               ; preds = %2
  %42 = load i32, i32* @HTC_M_IBSS, align 4
  %43 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  br label %58

44:                                               ; preds = %2
  %45 = load i32, i32* @HTC_M_HOSTAP, align 4
  %46 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  br label %58

47:                                               ; preds = %2
  %48 = load i32, i32* @HTC_M_WDS, align 4
  %49 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  br label %58

50:                                               ; preds = %2
  %51 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ath_err(%struct.ath_common* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %9, align 4
  br label %153

58:                                               ; preds = %47, %44, %41, %38
  %59 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %60 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ffz(i32 %61)
  %63 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %6, align 8
  %65 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = call i32 @cpu_to_be16(i32 2304)
  %67 = getelementptr inbounds %struct.ath9k_htc_target_vif, %struct.ath9k_htc_target_vif* %8, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @WMI_VAP_CREATE_CMDID, align 4
  %69 = call i32 @WMI_CMD_BUF(i32 %68, %struct.ath9k_htc_target_vif* %8)
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %153

73:                                               ; preds = %58
  %74 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %75 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %76 = call i32 @ath9k_htc_add_station(%struct.ath9k_htc_priv* %74, %struct.ieee80211_vif* %75, i32* null)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @WMI_VAP_REMOVE_CMDID, align 4
  %81 = call i32 @WMI_CMD_BUF(i32 %80, %struct.ath9k_htc_target_vif* %8)
  br label %153

82:                                               ; preds = %73
  %83 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %84 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %85 = call i32 @ath9k_htc_set_mac_bssid_mask(%struct.ath9k_htc_priv* %83, %struct.ieee80211_vif* %84)
  %86 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %6, align 8
  %87 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 1, %88
  %90 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %91 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %95 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %99 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %100 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @INC_VIF(%struct.ath9k_htc_priv* %98, i32 %101)
  %103 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %104 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 130
  br i1 %106, label %117, label %107

107:                                              ; preds = %82
  %108 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %109 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 129
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %114 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 131
  br i1 %116, label %117, label %121

117:                                              ; preds = %112, %107, %82
  %118 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %119 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %120 = call i32 @ath9k_htc_assign_bslot(%struct.ath9k_htc_priv* %118, %struct.ieee80211_vif* %119)
  br label %121

121:                                              ; preds = %117, %112
  %122 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %123 = call i32 @ath9k_htc_set_opmode(%struct.ath9k_htc_priv* %122)
  %124 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %125 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %124, i32 0, i32 2
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 130
  br i1 %129, label %130, label %143

130:                                              ; preds = %121
  %131 = load i32, i32* @ATH_OP_ANI_RUN, align 4
  %132 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %133 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %132, i32 0, i32 0
  %134 = call i32 @test_bit(i32 %131, i32* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %130
  %137 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %138 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %137, i32 0, i32 2
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = call i32 @ath9k_hw_set_tsfadjust(%struct.TYPE_3__* %139, i32 1)
  %141 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %142 = call i32 @ath9k_htc_start_ani(%struct.ath9k_htc_priv* %141)
  br label %143

143:                                              ; preds = %136, %130, %121
  %144 = load %struct.ath_common*, %struct.ath_common** %7, align 8
  %145 = load i32, i32* @CONFIG, align 4
  %146 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %147 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %6, align 8
  %150 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ath_dbg(%struct.ath_common* %144, i32 %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %143, %79, %72, %50
  %154 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %155 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %154)
  %156 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %157 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %156, i32 0, i32 1
  %158 = call i32 @mutex_unlock(i32* %157)
  %159 = load i32, i32* %9, align 4
  ret i32 %159
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @memset(%struct.ath9k_htc_target_vif*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, %struct.ath9k_htc_target_vif*) #1

declare dso_local i32 @ath9k_htc_add_station(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, i32*) #1

declare dso_local i32 @ath9k_htc_set_mac_bssid_mask(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @INC_VIF(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @ath9k_htc_assign_bslot(%struct.ath9k_htc_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @ath9k_htc_set_opmode(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ath9k_hw_set_tsfadjust(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ath9k_htc_start_ani(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
