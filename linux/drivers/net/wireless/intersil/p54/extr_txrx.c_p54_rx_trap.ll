; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_txrx.c_p54_rx_trap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_txrx.c_p54_rx_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.p54_hdr = type { i64 }
%struct.p54_trap = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"radar (freq:%d MHz)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"received event:%x freq:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p54_common*, %struct.sk_buff*)* @p54_rx_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54_rx_trap(%struct.p54_common* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54_hdr*, align 8
  %6 = alloca %struct.p54_trap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.p54_hdr*
  store %struct.p54_hdr* %12, %struct.p54_hdr** %5, align 8
  %13 = load %struct.p54_hdr*, %struct.p54_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.p54_hdr, %struct.p54_hdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.p54_trap*
  store %struct.p54_trap* %16, %struct.p54_trap** %6, align 8
  %17 = load %struct.p54_trap*, %struct.p54_trap** %6, align 8
  %18 = getelementptr inbounds %struct.p54_trap, %struct.p54_trap* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.p54_trap*, %struct.p54_trap** %6, align 8
  %22 = getelementptr inbounds %struct.p54_trap, %struct.p54_trap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %63 [
    i32 135, label %26
    i32 131, label %27
    i32 132, label %35
    i32 130, label %46
    i32 129, label %47
    i32 128, label %48
    i32 134, label %49
    i32 133, label %56
  ]

26:                                               ; preds = %2
  br label %72

27:                                               ; preds = %2
  %28 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %29 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i32, i8*, i32, ...) @wiphy_info(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %72

35:                                               ; preds = %2
  %36 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %37 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %42 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ieee80211_beacon_loss(i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  br label %72

46:                                               ; preds = %2
  br label %72

47:                                               ; preds = %2
  br label %72

48:                                               ; preds = %2
  br label %72

49:                                               ; preds = %2
  %50 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %51 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @wiphy_rfkill_set_hw_state(i32 %54, i32 1)
  br label %72

56:                                               ; preds = %2
  %57 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %58 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @wiphy_rfkill_set_hw_state(i32 %61, i32 0)
  br label %72

63:                                               ; preds = %2
  %64 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %65 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 (i32, i8*, i32, ...) @wiphy_info(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %56, %49, %48, %47, %46, %45, %27, %26
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @wiphy_info(i32, i8*, i32, ...) #1

declare dso_local i32 @ieee80211_beacon_loss(i32) #1

declare dso_local i32 @wiphy_rfkill_set_hw_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
