; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_..mt76x02.h_mt76x02_rx_get_sta_wcid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_..mt76x02.h_mt76x02_rx_get_sta_wcid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_wcid = type { i32 }
%struct.mt76x02_sta = type { %struct.TYPE_2__*, %struct.mt76_wcid }
%struct.TYPE_2__ = type { %struct.mt76_wcid }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mt76_wcid* (%struct.mt76x02_sta*, i32)* @mt76x02_rx_get_sta_wcid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mt76_wcid* @mt76x02_rx_get_sta_wcid(%struct.mt76x02_sta* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76_wcid*, align 8
  %4 = alloca %struct.mt76x02_sta*, align 8
  %5 = alloca i32, align 4
  store %struct.mt76x02_sta* %0, %struct.mt76x02_sta** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mt76x02_sta*, %struct.mt76x02_sta** %4, align 8
  %7 = icmp ne %struct.mt76x02_sta* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.mt76_wcid* null, %struct.mt76_wcid** %3, align 8
  br label %20

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load %struct.mt76x02_sta*, %struct.mt76x02_sta** %4, align 8
  %14 = getelementptr inbounds %struct.mt76x02_sta, %struct.mt76x02_sta* %13, i32 0, i32 1
  store %struct.mt76_wcid* %14, %struct.mt76_wcid** %3, align 8
  br label %20

15:                                               ; preds = %9
  %16 = load %struct.mt76x02_sta*, %struct.mt76x02_sta** %4, align 8
  %17 = getelementptr inbounds %struct.mt76x02_sta, %struct.mt76x02_sta* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.mt76_wcid* %19, %struct.mt76_wcid** %3, align 8
  br label %20

20:                                               ; preds = %15, %12, %8
  %21 = load %struct.mt76_wcid*, %struct.mt76_wcid** %3, align 8
  ret %struct.mt76_wcid* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
