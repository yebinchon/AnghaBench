; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_set_ht_add_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_set_ht_add_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_sta = type { i32, %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i64, i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"spatial multiplexing power save mode: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@STA_FLG_RTS_MIMO_PROT_MSK = common dso_local global i32 0, align 4
@STA_FLG_MIMO_DIS_MSK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid MIMO PS mode %d\0A\00", align 1
@STA_FLG_MAX_AGG_SIZE_POS = common dso_local global i32 0, align 4
@STA_FLG_AGG_MPDU_DENSITY_POS = common dso_local global i32 0, align 4
@STA_FLG_HT40_EN_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, i64, %struct.ieee80211_sta*)* @il_set_ht_add_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il_set_ht_add_station(%struct.il_priv* %0, i64 %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %8 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %9 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %9, i32 0, i32 1
  store %struct.ieee80211_sta_ht_cap* %10, %struct.ieee80211_sta_ht_cap** %7, align 8
  %11 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %12 = icmp ne %struct.ieee80211_sta* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %3
  br label %108

19:                                               ; preds = %13
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %32

25:                                               ; preds = %19
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 130
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  br label %32

32:                                               ; preds = %25, %24
  %33 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %24 ], [ %31, %25 ]
  %34 = call i32 @D_ASSOC(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %36 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @STA_FLG_RTS_MIMO_PROT_MSK, align 4
  %44 = load i32, i32* @STA_FLG_MIMO_DIS_MSK, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %61 [
    i32 128, label %52
    i32 130, label %56
    i32 129, label %60
  ]

52:                                               ; preds = %32
  %53 = load i32, i32* @STA_FLG_MIMO_DIS_MSK, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %66

56:                                               ; preds = %32
  %57 = load i32, i32* @STA_FLG_RTS_MIMO_PROT_MSK, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %66

60:                                               ; preds = %32
  br label %66

61:                                               ; preds = %32
  %62 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @IL_WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %60, %56, %52
  %67 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @STA_FLG_MAX_AGG_SIZE_POS, align 4
  %72 = shl i32 %70, %71
  %73 = call i32 @cpu_to_le32(i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* @STA_FLG_AGG_MPDU_DENSITY_POS, align 4
  %81 = shl i32 %79, %80
  %82 = call i32 @cpu_to_le32(i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %86 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %87 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %86, i32 0, i32 1
  %88 = call i64 @il_is_ht40_tx_allowed(%struct.il_priv* %85, %struct.ieee80211_sta_ht_cap* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %66
  %91 = load i32, i32* @STA_FLG_HT40_EN_MSK, align 4
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  br label %99

94:                                               ; preds = %66
  %95 = load i32, i32* @STA_FLG_HT40_EN_MSK, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %94, %90
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %102 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i64, i64* %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 %100, i32* %107, align 4
  br label %108

108:                                              ; preds = %99, %18
  ret void
}

declare dso_local i32 @D_ASSOC(i8*, i8*) #1

declare dso_local i32 @IL_WARN(i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @il_is_ht40_tx_allowed(%struct.il_priv*, %struct.ieee80211_sta_ht_cap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
