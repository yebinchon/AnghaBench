; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-rs.c_il3945_rate_scale_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-rs.c_il3945_rate_scale_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.il3945_rs_sta = type { i32, i64, i32, i32 }
%struct.ieee80211_sta = type { i64 }
%struct.il3945_sta_priv = type { %struct.il3945_rs_sta }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Unable to find station to initialize rate scaling.\0A\00", align 1
@RXON_FLG_TGG_PROTECT_MSK = common dso_local global i32 0, align 4
@il3945_expected_tpt_g_prot = common dso_local global i32 0, align 4
@il3945_expected_tpt_g = common dso_local global i32 0, align 4
@il3945_expected_tpt_a = common dso_local global i32 0, align 4
@IL_MIN_RSSI_VAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Network RSSI: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"leave: rssi %d assign rate idx: %d (plcp 0x%x)\0A\00", align 1
@il3945_rates = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il3945_rate_scale_init(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.il3945_rs_sta*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.il3945_sta_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  store %struct.il_priv* %13, %struct.il_priv** %5, align 8
  store i64 0, i64* %6, align 8
  %14 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @rcu_read_lock()
  %16 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ieee80211_sta* @ieee80211_find_sta(i32 %18, i32 %27)
  store %struct.ieee80211_sta* %28, %struct.ieee80211_sta** %9, align 8
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %30 = icmp ne %struct.ieee80211_sta* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 (...) @rcu_read_unlock()
  br label %112

34:                                               ; preds = %2
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.il3945_sta_priv*
  store %struct.il3945_sta_priv* %39, %struct.il3945_sta_priv** %10, align 8
  %40 = load %struct.il3945_sta_priv*, %struct.il3945_sta_priv** %10, align 8
  %41 = getelementptr inbounds %struct.il3945_sta_priv, %struct.il3945_sta_priv* %40, i32 0, i32 0
  store %struct.il3945_rs_sta* %41, %struct.il3945_rs_sta** %8, align 8
  %42 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %8, align 8
  %43 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %42, i32 0, i32 2
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %8, align 8
  %47 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %49 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %74 [
    i32 129, label %51
    i32 128, label %70
  ]

51:                                               ; preds = %34
  %52 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @RXON_FLG_TGG_PROTECT_MSK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %8, align 8
  %61 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i32, i32* @il3945_expected_tpt_g_prot, align 4
  %63 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %8, align 8
  %64 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  br label %69

65:                                               ; preds = %51
  %66 = load i32, i32* @il3945_expected_tpt_g, align 4
  %67 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %8, align 8
  %68 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %59
  br label %76

70:                                               ; preds = %34
  %71 = load i32, i32* @il3945_expected_tpt_a, align 4
  %72 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %8, align 8
  %73 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %76

74:                                               ; preds = %34
  %75 = call i32 (...) @BUG()
  br label %76

76:                                               ; preds = %74, %70, %69
  %77 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %8, align 8
  %78 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %77, i32 0, i32 2
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %82 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i64, i64* @IL_MIN_RSSI_VAL, align 8
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %87, %76
  %90 = load i64, i64* %6, align 8
  %91 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %90)
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %94 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @il3945_get_rate_idx_by_rssi(i64 %92, i32 %95)
  %97 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %8, align 8
  %98 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %8, align 8
  %101 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** @il3945_rates, align 8
  %104 = load %struct.il3945_rs_sta*, %struct.il3945_rs_sta** %8, align 8
  %105 = getelementptr inbounds %struct.il3945_rs_sta, %struct.il3945_rs_sta* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %99, i64 %102, i32 %109)
  %111 = call i32 (...) @rcu_read_unlock()
  br label %112

112:                                              ; preds = %89, %31
  ret void
}

declare dso_local i32 @D_RATE(i8*, ...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @il3945_get_rate_idx_by_rssi(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
