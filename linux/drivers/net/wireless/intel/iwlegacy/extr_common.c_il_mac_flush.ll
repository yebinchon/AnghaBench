; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_mac_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_mac_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.il_queue }
%struct.il_queue = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_vif = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to flush queue %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_mac_flush(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.il_priv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.il_queue*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.il_priv*, %struct.il_priv** %14, align 8
  store %struct.il_priv* %15, %struct.il_priv** %9, align 8
  %16 = load i64, i64* @jiffies, align 8
  %17 = call i64 @msecs_to_jiffies(i32 500)
  %18 = add i64 %16, %17
  store i64 %18, i64* %10, align 8
  %19 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = call i32 @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp eq %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %75

28:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %71, %28
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %32 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %39 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %71

43:                                               ; preds = %36
  %44 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %45 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store %struct.il_queue* %50, %struct.il_queue** %12, align 8
  %51 = load %struct.il_queue*, %struct.il_queue** %12, align 8
  %52 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.il_queue*, %struct.il_queue** %12, align 8
  %55 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %71

59:                                               ; preds = %43
  %60 = load i64, i64* @jiffies, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @time_after(i64 %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.il_queue*, %struct.il_queue** %12, align 8
  %66 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @IL_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %74

69:                                               ; preds = %59
  %70 = call i32 @msleep(i32 20)
  br label %71

71:                                               ; preds = %69, %58, %42
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %29

74:                                               ; preds = %64, %29
  br label %75

75:                                               ; preds = %74, %27
  %76 = call i32 @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %78 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @D_MAC80211(i8*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
