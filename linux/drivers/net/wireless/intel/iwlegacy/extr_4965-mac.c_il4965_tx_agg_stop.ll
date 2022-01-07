; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_tx_agg_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_tx_agg_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.il_tid_data* }
%struct.il_tid_data = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }

@IL_INVALID_STATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid station for AGG tid %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"AGG stop before setup done\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Stopping AGG while state not ON or starting\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Stopping a non empty AGG HW QUEUE\0A\00", align 1
@IL_EMPTYING_HW_QUEUE_DELBA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"HW queue is empty\0A\00", align 1
@IL_AGG_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_tx_agg_stop(%struct.il_priv* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.il_tid_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @il4965_get_fifo_from_tid(i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %159

27:                                               ; preds = %4
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %29 = call i32 @il_sta_id(%struct.ieee80211_sta* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @IL_INVALID_STATION, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @IL_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @ENXIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %159

38:                                               ; preds = %27
  %39 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %40 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %39, i32 0, i32 1
  %41 = load i64, i64* %17, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %44 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %43, i32 0, i32 2
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.il_tid_data*, %struct.il_tid_data** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %50, i64 %51
  store %struct.il_tid_data* %52, %struct.il_tid_data** %14, align 8
  %53 = load %struct.il_tid_data*, %struct.il_tid_data** %14, align 8
  %54 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %57 = and i32 %55, %56
  %58 = ashr i32 %57, 4
  store i32 %58, i32* %13, align 4
  %59 = load %struct.il_tid_data*, %struct.il_tid_data** %14, align 8
  %60 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  %63 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %64 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.il_tid_data*, %struct.il_tid_data** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %70, i64 %71
  %73 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %79 [
    i32 128, label %76
    i32 129, label %78
  ]

76:                                               ; preds = %38
  %77 = call i32 @D_HT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %124

78:                                               ; preds = %38
  br label %81

79:                                               ; preds = %38
  %80 = call i32 @IL_WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %78
  %82 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %83 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %15, align 4
  %91 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %92 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %91, i32 0, i32 3
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %81
  %104 = call i32 @D_HT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @IL_EMPTYING_HW_QUEUE_DELBA, align 4
  %106 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %107 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %106, i32 0, i32 2
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.il_tid_data*, %struct.il_tid_data** %112, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %113, i64 %114
  %116 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  store i32 %105, i32* %117, align 4
  %118 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %119 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %118, i32 0, i32 1
  %120 = load i64, i64* %17, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  store i32 0, i32* %5, align 4
  br label %159

122:                                              ; preds = %81
  %123 = call i32 @D_HT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %76
  %125 = load i32, i32* @IL_AGG_OFF, align 4
  %126 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %127 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %126, i32 0, i32 2
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.il_tid_data*, %struct.il_tid_data** %132, align 8
  %134 = load i64, i64* %9, align 8
  %135 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %133, i64 %134
  %136 = getelementptr inbounds %struct.il_tid_data, %struct.il_tid_data* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  store i32 %125, i32* %137, align 4
  %138 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %139 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %138, i32 0, i32 1
  %140 = call i32 @spin_unlock(i32* %139)
  %141 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %142 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %141, i32 0, i32 0
  %143 = call i32 @spin_lock(i32* %142)
  %144 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @il4965_txq_agg_disable(%struct.il_priv* %144, i32 %145, i32 %146, i32 %147)
  %149 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %150 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %149, i32 0, i32 0
  %151 = load i64, i64* %17, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  %153 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %154 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %155 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i64, i64* %9, align 8
  %158 = call i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif* %153, i32 %156, i64 %157)
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %124, %103, %33, %25
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @il4965_get_fifo_from_tid(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @il_sta_id(%struct.ieee80211_sta*) #1

declare dso_local i32 @IL_ERR(i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @D_HT(i8*) #1

declare dso_local i32 @IL_WARN(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @il4965_txq_agg_disable(%struct.il_priv*, i32, i32, i32) #1

declare dso_local i32 @ieee80211_stop_tx_ba_cb_irqsafe(%struct.ieee80211_vif*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
