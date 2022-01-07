; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_release_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_release_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_rx_tid = type { i32, i32, i64* }
%struct.sk_buff_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_rx_tid*, %struct.sk_buff_head*)* @mt76_rx_aggr_release_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_rx_aggr_release_head(%struct.mt76_rx_tid* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.mt76_rx_tid*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca i32, align 4
  store %struct.mt76_rx_tid* %0, %struct.mt76_rx_tid** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %6 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %7 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %10 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = srem i32 %8, %11
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %22, %2
  %14 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %15 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %13
  %23 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %24 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @mt76_aggr_release(%struct.mt76_rx_tid* %23, %struct.sk_buff_head* %24, i32 %25)
  %27 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %28 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %31 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %29, %32
  store i32 %33, i32* %5, align 4
  br label %13

34:                                               ; preds = %13
  ret void
}

declare dso_local i32 @mt76_aggr_release(%struct.mt76_rx_tid*, %struct.sk_buff_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
