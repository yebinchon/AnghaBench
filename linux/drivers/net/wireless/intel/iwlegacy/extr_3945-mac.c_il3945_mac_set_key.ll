; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_mac_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_mac_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32 }

@IL_INVALID_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@il3945_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"leave - hwcrypto disabled\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"leave - IBSS RSN\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"leave - station not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"enable hwcrypto key\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"disable hwcrypto key\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"leave ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @il3945_mac_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_mac_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.il_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  %18 = load %struct.il_priv*, %struct.il_priv** %17, align 8
  store %struct.il_priv* %18, %struct.il_priv** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load i64, i64* @IL_INVALID_STATION, align 8
  store i64 %19, i64* %14, align 8
  %20 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @il3945_mod_params, i32 0, i32 0), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %108

27:                                               ; preds = %5
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %35 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %108

44:                                               ; preds = %33, %27
  %45 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %46 = call i32 @il_is_associated(%struct.il_priv* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %44
  %54 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %55 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %56 = call i64 @il_sta_id_or_broadcast(%struct.il_priv* %54, %struct.ieee80211_sta* %55)
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* @IL_INVALID_STATION, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %108

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %44
  %66 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %67 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %66, i32 0, i32 0
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %70 = call i32 @il_scan_cancel_timeout(%struct.il_priv* %69, i32 100)
  %71 = load i32, i32* %8, align 4
  switch i32 %71, label %98 [
    i32 128, label %72
    i32 129, label %86
  ]

72:                                               ; preds = %65
  %73 = load i64, i64* %15, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %77 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %78 = call i32 @il3945_set_static_key(%struct.il_priv* %76, %struct.ieee80211_key_conf* %77)
  store i32 %78, i32* %13, align 4
  br label %84

79:                                               ; preds = %72
  %80 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %81 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @il3945_set_dynamic_key(%struct.il_priv* %80, %struct.ieee80211_key_conf* %81, i64 %82)
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %79, %75
  %85 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %101

86:                                               ; preds = %65
  %87 = load i64, i64* %15, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %91 = call i32 @il3945_remove_static_key(%struct.il_priv* %90)
  store i32 %91, i32* %13, align 4
  br label %96

92:                                               ; preds = %86
  %93 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %94 = load i64, i64* %14, align 8
  %95 = call i32 @il3945_clear_sta_key_info(%struct.il_priv* %93, i64 %94)
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %92, %89
  %97 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %101

98:                                               ; preds = %65
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %98, %96, %84
  %102 = load i32, i32* %13, align 4
  %103 = call i32 (i8*, ...) @D_MAC80211(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  %104 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %105 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %101, %60, %40, %23
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @D_MAC80211(i8*, ...) #1

declare dso_local i32 @il_is_associated(%struct.il_priv*) #1

declare dso_local i64 @il_sta_id_or_broadcast(%struct.il_priv*, %struct.ieee80211_sta*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @il_scan_cancel_timeout(%struct.il_priv*, i32) #1

declare dso_local i32 @il3945_set_static_key(%struct.il_priv*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @il3945_set_dynamic_key(%struct.il_priv*, %struct.ieee80211_key_conf*, i64) #1

declare dso_local i32 @il3945_remove_static_key(%struct.il_priv*) #1

declare dso_local i32 @il3945_clear_sta_key_info(%struct.il_priv*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
