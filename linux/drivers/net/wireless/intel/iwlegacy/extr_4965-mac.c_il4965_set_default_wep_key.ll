; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_set_default_wep_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_set_default_wep_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_8__, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32, i32, i32 }

@WEP_KEY_LEN_128 = common dso_local global i32 0, align 4
@WEP_KEY_LEN_64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Bad WEP key length %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@HW_KEY_DEFAULT = common dso_local global i32 0, align 4
@IL_AP_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Set default WEP key: len=%d idx=%d ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_set_default_wep_key(%struct.il_priv* %0, %struct.ieee80211_key_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.ieee80211_key_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.ieee80211_key_conf* %1, %struct.ieee80211_key_conf** %5, align 8
  %9 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %16 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %15, i32 0, i32 2
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @WEP_KEY_LEN_128, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @WEP_KEY_LEN_64, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, ...) @D_WEP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %80

32:                                               ; preds = %21, %2
  %33 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @HW_KEY_DEFAULT, align 4
  %40 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %46 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i64, i64* @IL_AP_ID, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %54 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %52, i32* %60, align 4
  %61 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %62 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %69, i32 0, i32 2
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @memcpy(i32* %68, i32* %70, i32 %71)
  %73 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %74 = call i32 @il4965_static_wepkey_cmd(%struct.il_priv* %73, i32 0)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (i8*, i32, ...) @D_WEP(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %32, %25
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @D_WEP(i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @il4965_static_wepkey_cmd(%struct.il_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
