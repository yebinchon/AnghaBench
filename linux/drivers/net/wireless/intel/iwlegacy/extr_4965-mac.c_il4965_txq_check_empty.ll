; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_txq_check_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_txq_check_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.il_tid_data*, %struct.TYPE_8__ }
%struct.il_tid_data = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_6__ = type { %struct.il_queue }
%struct.il_queue = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"HW queue empty: continue DELBA flow\0A\00", align 1
@IL_AGG_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"HW queue empty: continue ADDBA flow\0A\00", align 1
@IL_AGG_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_txq_check_empty(%struct.il_priv* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.il_queue*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.il_tid_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.il_queue* %20, %struct.il_queue** %9, align 8
  %21 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %22 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %10, align 8
  %31 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %32 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.il_tid_data*, %struct.il_tid_data** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %38, i64 %39
  store %struct.il_tid_data* %40, %struct.il_tid_data** %11, align 8
  %41 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %42 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %41, i32 0, i32 2
  %43 = call i32 @lockdep_assert_held(i32* %42)
  %44 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %45 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.il_tid_data*, %struct.il_tid_data** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %51, i64 %52
  %54 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %114 [
    i32 128, label %57
    i32 129, label %96
  ]

57:                                               ; preds = %4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.il_tid_data*, %struct.il_tid_data** %11, align 8
  %60 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %58, %62
  br i1 %63, label %64, label %95

64:                                               ; preds = %57
  %65 = load %struct.il_queue*, %struct.il_queue** %9, align 8
  %66 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.il_queue*, %struct.il_queue** %9, align 8
  %69 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %64
  %73 = load %struct.il_tid_data*, %struct.il_tid_data** %11, align 8
  %74 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @IEEE80211_SEQ_TO_SN(i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @il4965_get_fifo_from_tid(i64 %77)
  store i32 %78, i32* %13, align 4
  %79 = call i32 @D_HT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @il4965_txq_agg_disable(%struct.il_priv* %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* @IL_AGG_OFF, align 4
  %86 = load %struct.il_tid_data*, %struct.il_tid_data** %11, align 8
  %87 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %90 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i64*, i64** %10, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(i32 %91, i64* %92, i64 %93)
  br label %95

95:                                               ; preds = %72, %64, %57
  br label %114

96:                                               ; preds = %4
  %97 = load %struct.il_tid_data*, %struct.il_tid_data** %11, align 8
  %98 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = call i32 @D_HT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %103 = load i32, i32* @IL_AGG_ON, align 4
  %104 = load %struct.il_tid_data*, %struct.il_tid_data** %11, align 8
  %105 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  %107 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %108 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i64*, i64** %10, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @ieee80211_start_tx_ba_cb_irqsafe(i32 %109, i64* %110, i64 %111)
  br label %113

113:                                              ; preds = %101, %96
  br label %114

114:                                              ; preds = %4, %113, %95
  ret i32 0
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IEEE80211_SEQ_TO_SN(i32) #1

declare dso_local i32 @il4965_get_fifo_from_tid(i64) #1

declare dso_local i32 @D_HT(i8*) #1

declare dso_local i32 @il4965_txq_agg_disable(%struct.il_priv*, i32, i32, i32) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(i32, i64*, i64) #1

declare dso_local i32 @ieee80211_start_tx_ba_cb_irqsafe(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
