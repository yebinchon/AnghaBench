; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_get_passive_dwell_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_get_passive_dwell_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_vif = type { i32 }

@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IL_PASSIVE_DWELL_BASE = common dso_local global i32 0, align 4
@IL_PASSIVE_DWELL_TIME_24 = common dso_local global i32 0, align 4
@IL_PASSIVE_DWELL_TIME_52 = common dso_local global i32 0, align 4
@IL_CHANNEL_TUNE_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_get_passive_dwell_time(%struct.il_priv* %0, i32 %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @IL_PASSIVE_DWELL_BASE, align 4
  %14 = load i32, i32* @IL_PASSIVE_DWELL_TIME_24, align 4
  %15 = add nsw i32 %13, %14
  br label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @IL_PASSIVE_DWELL_BASE, align 4
  %18 = load i32, i32* @IL_PASSIVE_DWELL_TIME_52, align 4
  %19 = add nsw i32 %17, %18
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %15, %12 ], [ %19, %16 ]
  store i32 %21, i32* %8, align 4
  %22 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %23 = call i64 @il_is_any_associated(%struct.il_priv* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %32 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  br label %38

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %30
  %39 = phi i32 [ %36, %30 ], [ 0, %37 ]
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @IL_PASSIVE_DWELL_BASE, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* @IL_PASSIVE_DWELL_BASE, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, 98
  %51 = sdiv i32 %50, 100
  %52 = load i32, i32* @IL_CHANNEL_TUNE_TIME, align 4
  %53 = mul nsw i32 %52, 2
  %54 = sub nsw i32 %51, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @min(i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %48, %20
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i64 @il_is_any_associated(%struct.il_priv*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
