; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.ath9k_htc_priv* }
%struct.ieee80211_conf = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.ath9k_htc_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.ath_common = type { i32 }

@IEEE80211_CONF_CHANGE_IDLE = common dso_local global i32 0, align 4
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_CONF_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Set channel: %d MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Unable to set channel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@ATH9K_PM_NETWORK_SLEEP = common dso_local global i32 0, align 4
@ATH9K_PM_AWAKE = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @ath9k_htc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ieee80211_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 1
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  store %struct.ath9k_htc_priv* %14, %struct.ath9k_htc_priv** %5, align 8
  %15 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %16 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %15, i32 0, i32 5
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_5__* %17)
  store %struct.ath_common* %18, %struct.ath_common** %6, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  store %struct.ieee80211_conf* %20, %struct.ieee80211_conf** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %21, i32 0, i32 3
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %25 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IEEE80211_CONF_CHANGE_IDLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %2
  %31 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %32 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %31, i32 0, i32 7
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %44 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %46 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %52 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %51, i32 0, i32 7
  %53 = call i32 @mutex_unlock(i32* %52)
  br label %54

54:                                               ; preds = %50, %2
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @IEEE80211_CONF_CHANGE_MONITOR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %54
  %60 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %68 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %67, i32 0, i32 5
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %75 = call i32 @ath9k_htc_add_monitor_interface(%struct.ath9k_htc_priv* %74)
  br label %87

76:                                               ; preds = %66, %59
  %77 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %78 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %77, i32 0, i32 5
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %85 = call i32 @ath9k_htc_remove_monitor_interface(%struct.ath9k_htc_priv* %84)
  br label %86

86:                                               ; preds = %83, %76
  br label %87

87:                                               ; preds = %86, %73
  br label %88

88:                                               ; preds = %87, %54
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %137

96:                                               ; preds = %93, %88
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %98 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %100, align 8
  store %struct.ieee80211_channel* %101, %struct.ieee80211_channel** %10, align 8
  %102 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %103 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %11, align 4
  %105 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %106 = load i32, i32* @CONFIG, align 4
  %107 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %108 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ath_dbg(%struct.ath_common* %105, i32 %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %112 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %113 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %112, i32 0, i32 5
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %116 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %116, i32 0, i32 2
  %118 = call i32 @ath9k_cmn_get_channel(%struct.ieee80211_hw* %111, %struct.TYPE_5__* %114, %struct.TYPE_6__* %117)
  %119 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %121 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %122 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %121, i32 0, i32 5
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = call i64 @ath9k_htc_set_channel(%struct.ath9k_htc_priv* %119, %struct.ieee80211_hw* %120, i32* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %96
  %132 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %133 = call i32 @ath_err(%struct.ath_common* %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %9, align 4
  br label %190

136:                                              ; preds = %96
  br label %137

137:                                              ; preds = %136, %93
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %165

142:                                              ; preds = %137
  %143 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %144 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %151 = load i32, i32* @ATH9K_PM_NETWORK_SLEEP, align 4
  %152 = call i32 @ath9k_htc_setpower(%struct.ath9k_htc_priv* %150, i32 %151)
  %153 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %154 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  br label %164

155:                                              ; preds = %142
  %156 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %157 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %156, i32 0, i32 1
  store i32 0, i32* %157, align 4
  %158 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %159 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %158, i32 0, i32 6
  %160 = call i32 @cancel_work_sync(i32* %159)
  %161 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %162 = load i32, i32* @ATH9K_PM_AWAKE, align 4
  %163 = call i32 @ath9k_htc_setpower(%struct.ath9k_htc_priv* %161, i32 %162)
  br label %164

164:                                              ; preds = %155, %149
  br label %165

165:                                              ; preds = %164, %137
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %189

170:                                              ; preds = %165
  %171 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %7, align 8
  %172 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 2, %173
  %175 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %176 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %178 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %177, i32 0, i32 5
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %181 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %184 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %187 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %186, i32 0, i32 4
  %188 = call i32 @ath9k_cmn_update_txpow(%struct.TYPE_5__* %179, i32 %182, i32 %185, i32* %187)
  br label %189

189:                                              ; preds = %170, %165
  br label %190

190:                                              ; preds = %189, %131
  %191 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %192 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %191)
  %193 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %194 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %193, i32 0, i32 3
  %195 = call i32 @mutex_unlock(i32* %194)
  %196 = load i32, i32* %9, align 4
  ret i32 %196
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ath9k_htc_add_monitor_interface(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_remove_monitor_interface(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @ath9k_cmn_get_channel(%struct.ieee80211_hw*, %struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i64 @ath9k_htc_set_channel(%struct.ath9k_htc_priv*, %struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_htc_setpower(%struct.ath9k_htc_priv*, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ath9k_cmn_update_txpow(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
