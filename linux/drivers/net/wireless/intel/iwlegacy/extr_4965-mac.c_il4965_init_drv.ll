; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_init_drv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_init_drv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32*, %struct.TYPE_6__*, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { {}* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@IL_MISSED_BEACON_THRESHOLD_DEF = common dso_local global i32 0, align 4
@IL_DELAY_NEXT_FORCE_FW_RELOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"initializing regulatory failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"initializing geos failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il4965_init_drv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_init_drv(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %5 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %6 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %5, i32 0, i32 11
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 10
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 9
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 8
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %18 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %17, i32 0, i32 7
  store i32* null, i32** %18, align 8
  %19 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %22 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %23 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %25 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  %28 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %29 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @IL_MISSED_BEACON_THRESHOLD_DEF, align 4
  %32 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @IL_DELAY_NEXT_FORCE_FW_RELOAD, align 4
  %35 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %36 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %39 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i32 (%struct.il_priv*)**
  %43 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %42, align 8
  %44 = icmp ne i32 (%struct.il_priv*)* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %1
  %46 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = bitcast {}** %49 to i32 (%struct.il_priv*)**
  %51 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %50, align 8
  %52 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %53 = call i32 %51(%struct.il_priv* %52)
  br label %54

54:                                               ; preds = %45, %1
  %55 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %56 = call i32 @il_init_scan_params(%struct.il_priv* %55)
  %57 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %58 = call i32 @il_init_channel_map(%struct.il_priv* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @IL_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %81

64:                                               ; preds = %54
  %65 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %66 = call i32 @il_init_geos(%struct.il_priv* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @IL_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %78

72:                                               ; preds = %64
  %73 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %74 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %75 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @il4965_init_hw_rates(%struct.il_priv* %73, i32* %76)
  store i32 0, i32* %2, align 4
  br label %83

78:                                               ; preds = %69
  %79 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %80 = call i32 @il_free_channel_map(%struct.il_priv* %79)
  br label %81

81:                                               ; preds = %78, %61
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %72
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @il_init_scan_params(%struct.il_priv*) #1

declare dso_local i32 @il_init_channel_map(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

declare dso_local i32 @il_init_geos(%struct.il_priv*) #1

declare dso_local i32 @il4965_init_hw_rates(%struct.il_priv*, i32*) #1

declare dso_local i32 @il_free_channel_map(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
