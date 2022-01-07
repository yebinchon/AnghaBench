; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_sta_rx_agg_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_sta_rx_agg_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.il_addsta_cmd = type { i32 }

@IL_INVALID_STATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid station for AGG tid %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@STA_MODIFY_DELBA_TID_MSK = common dso_local global i32 0, align 4
@STA_CONTROL_MODIFY_MSK = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_sta_rx_agg_stop(%struct.il_priv* %0, %struct.ieee80211_sta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.il_addsta_cmd, align 4
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 2
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %15 = call i32 @il_sta_id(%struct.ieee80211_sta* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @IL_INVALID_STATION, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @IL_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %26 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %30 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @STA_MODIFY_DELBA_TID_MSK, align 4
  %38 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %39 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %37, i32* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %50 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i64 %48, i64* %56, align 8
  %57 = load i32, i32* @STA_CONTROL_MODIFY_MSK, align 4
  %58 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %59 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %57, i32* %65, align 8
  %66 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %67 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @memcpy(%struct.il_addsta_cmd* %10, %struct.TYPE_6__* %72, i32 4)
  %74 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %75 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %79 = load i32, i32* @CMD_SYNC, align 4
  %80 = call i32 @il_send_add_sta(%struct.il_priv* %78, %struct.il_addsta_cmd* %10, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %24, %19
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @il_sta_id(%struct.ieee80211_sta*) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.il_addsta_cmd*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @il_send_add_sta(%struct.il_priv*, %struct.il_addsta_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
