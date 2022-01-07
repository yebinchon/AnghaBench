; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i64, i64 }
%struct.cfg80211_wowlan = type { i32 }
%struct.ath6kl_sdio = type { %struct.sdio_func* }
%struct.sdio_func = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@WLAN_POWER_STATE_WOW = common dso_local global i64 0, align 8
@ATH6KL_CFG_SUSPEND_WOW = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"wow suspend failed: %d\0A\00", align 1
@WLAN_POWER_STATE_DEEP_SLEEP = common dso_local global i64 0, align 8
@WLAN_POWER_STATE_CUT_PWR = common dso_local global i64 0, align 8
@MMC_PM_KEEP_POWER = common dso_local global i32 0, align 4
@MMC_PM_WAKE_SDIO_IRQ = common dso_local global i32 0, align 4
@ATH6KL_CFG_SUSPEND_DEEPSLEEP = common dso_local global i32 0, align 4
@ATH6KL_CFG_SUSPEND_CUTPOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, %struct.cfg80211_wowlan*)* @ath6kl_sdio_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_suspend(%struct.ath6kl* %0, %struct.cfg80211_wowlan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca %struct.cfg80211_wowlan*, align 8
  %6 = alloca %struct.ath6kl_sdio*, align 8
  %7 = alloca %struct.sdio_func*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %4, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %5, align 8
  %11 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %12 = call %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl* %11)
  store %struct.ath6kl_sdio* %12, %struct.ath6kl_sdio** %6, align 8
  %13 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %6, align 8
  %14 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %13, i32 0, i32 0
  %15 = load %struct.sdio_func*, %struct.sdio_func** %14, align 8
  store %struct.sdio_func* %15, %struct.sdio_func** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %17 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WLAN_POWER_STATE_WOW, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %23 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %81, label %26

26:                                               ; preds = %21
  %27 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %28 = icmp ne %struct.cfg80211_wowlan* %27, null
  br i1 %28, label %29, label %81

29:                                               ; preds = %26, %2
  %30 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %31 = call i32 @ath6kl_set_sdio_pm_caps(%struct.ath6kl* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %132

35:                                               ; preds = %29
  %36 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %37 = load i32, i32* @ATH6KL_CFG_SUSPEND_WOW, align 4
  %38 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %39 = call i32 @ath6kl_cfg80211_suspend(%struct.ath6kl* %36, i32 %37, %struct.cfg80211_wowlan* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @ENOTCONN, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @ath6kl_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %42, %35
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %55 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %60 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @WLAN_POWER_STATE_DEEP_SLEEP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %53
  store i32 1, i32* %9, align 4
  br label %76

65:                                               ; preds = %58, %50
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %70 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @WLAN_POWER_STATE_CUT_PWR, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %132

75:                                               ; preds = %68, %65
  br label %76

76:                                               ; preds = %75, %64
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %159

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %26, %21
  %82 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %83 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @WLAN_POWER_STATE_DEEP_SLEEP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %81
  %88 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %89 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %131

95:                                               ; preds = %92, %87, %81
  %96 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %97 = call i32 @sdio_get_host_pm_caps(%struct.sdio_func* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %95
  br label %132

103:                                              ; preds = %95
  %104 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %105 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %106 = call i32 @sdio_set_host_pm_flags(%struct.sdio_func* %104, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %132

110:                                              ; preds = %103
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @MMC_PM_WAKE_SDIO_IRQ, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %117 = load i32, i32* @MMC_PM_WAKE_SDIO_IRQ, align 4
  %118 = call i32 @sdio_set_host_pm_flags(%struct.sdio_func* %116, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %132

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %110
  %124 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %125 = load i32, i32* @ATH6KL_CFG_SUSPEND_DEEPSLEEP, align 4
  %126 = call i32 @ath6kl_cfg80211_suspend(%struct.ath6kl* %124, i32 %125, %struct.cfg80211_wowlan* null)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %132

130:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %159

131:                                              ; preds = %92
  br label %132

132:                                              ; preds = %131, %129, %121, %109, %102, %74, %34
  %133 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %134 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = icmp ne %struct.TYPE_4__* %135, null
  br i1 %136, label %137, label %155

137:                                              ; preds = %132
  %138 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %139 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = icmp ne %struct.TYPE_3__* %142, null
  br i1 %143, label %144, label %155

144:                                              ; preds = %137
  %145 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %146 = xor i32 %145, -1
  %147 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %148 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, %146
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %144, %137, %132
  %156 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %157 = load i32, i32* @ATH6KL_CFG_SUSPEND_CUTPOWER, align 4
  %158 = call i32 @ath6kl_cfg80211_suspend(%struct.ath6kl* %156, i32 %157, %struct.cfg80211_wowlan* null)
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %155, %130, %79
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_set_sdio_pm_caps(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_cfg80211_suspend(%struct.ath6kl*, i32, %struct.cfg80211_wowlan*) #1

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local i32 @sdio_get_host_pm_caps(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_host_pm_flags(%struct.sdio_func*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
