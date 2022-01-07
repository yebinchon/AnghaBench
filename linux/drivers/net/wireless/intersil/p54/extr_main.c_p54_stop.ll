; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_main.c_p54_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_main.c_p54_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54_common* }
%struct.p54_common = type { i32, i64, i64, i32, %struct.TYPE_2__*, i32, i32, i32 (%struct.ieee80211_hw.0*)*, i32, i64, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ieee80211_hw.0 = type opaque

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@P54_QUEUE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @p54_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  store %struct.p54_common* %7, %struct.p54_common** %3, align 8
  %8 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %9 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %10 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %9, i32 0, i32 10
  store i32 %8, i32* %10, align 8
  %11 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %12 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %11, i32 0, i32 9
  store i64 0, i64* %12, align 8
  %13 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %14 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %13, i32 0, i32 8
  %15 = call i32 @cancel_delayed_work_sync(i32* %14)
  %16 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %17 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %20 = call i32 @p54_set_leds(%struct.p54_common* %19)
  %21 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %22 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %21, i32 0, i32 7
  %23 = load i32 (%struct.ieee80211_hw.0*)*, i32 (%struct.ieee80211_hw.0*)** %22, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = bitcast %struct.ieee80211_hw* %24 to %struct.ieee80211_hw.0*
  %26 = call i32 %23(%struct.ieee80211_hw.0* %25)
  %27 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %28 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %27, i32 0, i32 6
  %29 = call i32 @skb_queue_purge(i32* %28)
  %30 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %31 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %30, i32 0, i32 5
  %32 = call i32 @skb_queue_purge(i32* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %52, %1
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @P54_QUEUE_NUM, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %39 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %46 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %33

55:                                               ; preds = %33
  %56 = call i32 @cpu_to_le32(i32 0)
  %57 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %58 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %60 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %62 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %64 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @p54_set_leds(%struct.p54_common*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
