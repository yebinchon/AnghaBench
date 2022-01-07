; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_main.c_p54_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_main.c_p54_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54_common* }
%struct.p54_common = type { i32 (%struct.ieee80211_hw.0*)*, i32, i64, i32, i32, i32, i32* }
%struct.ieee80211_hw.0 = type opaque

@NL80211_IFTYPE_MONITOR = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @p54_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  store %struct.p54_common* %7, %struct.p54_common** %3, align 8
  %8 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %9 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %12 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %11, i32 0, i32 0
  %13 = load i32 (%struct.ieee80211_hw.0*)*, i32 (%struct.ieee80211_hw.0*)** %12, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = bitcast %struct.ieee80211_hw* %14 to %struct.ieee80211_hw.0*
  %16 = call i32 %13(%struct.ieee80211_hw.0* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %75

20:                                               ; preds = %1
  %21 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %22 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @P54_SET_QUEUE(i32 %25, i32 2, i32 3, i32 7, i32 47)
  %27 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %28 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @P54_SET_QUEUE(i32 %31, i32 2, i32 7, i32 15, i32 94)
  %33 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %34 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @P54_SET_QUEUE(i32 %37, i32 3, i32 15, i32 1023, i32 0)
  %39 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %40 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @P54_SET_QUEUE(i32 %43, i32 7, i32 15, i32 1023, i32 0)
  %45 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %46 = call i32 @p54_set_edcf(%struct.p54_common* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %20
  br label %75

50:                                               ; preds = %20
  %51 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %52 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @eth_broadcast_addr(i32 %53)
  %55 = load i32, i32* @NL80211_IFTYPE_MONITOR, align 4
  %56 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %57 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %59 = call i32 @p54_setup_mac(%struct.p54_common* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %64 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %65 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  br label %75

66:                                               ; preds = %50
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %68 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %69 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %68, i32 0, i32 3
  %70 = call i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw* %67, i32* %69, i32 0)
  %71 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %72 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %74 = call i32 @p54_set_leds(%struct.p54_common* %73)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %66, %62, %49, %19
  %76 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %77 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @P54_SET_QUEUE(i32, i32, i32, i32, i32) #1

declare dso_local i32 @p54_set_edcf(%struct.p54_common*) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @p54_setup_mac(%struct.p54_common*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw*, i32*, i32) #1

declare dso_local i32 @p54_set_leds(%struct.p54_common*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
