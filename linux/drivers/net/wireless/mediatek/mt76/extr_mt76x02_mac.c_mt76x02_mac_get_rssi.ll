; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_get_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_get_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mt76x02_rx_freq_cal }
%struct.mt76x02_rx_freq_cal = type { i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, i32, i32)* @mt76x02_mac_get_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x02_mac_get_rssi(%struct.mt76x02_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt76x02_rx_freq_cal*, align 8
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.mt76x02_rx_freq_cal* %10, %struct.mt76x02_rx_freq_cal** %7, align 8
  %11 = load %struct.mt76x02_rx_freq_cal*, %struct.mt76x02_rx_freq_cal** %7, align 8
  %12 = getelementptr inbounds %struct.mt76x02_rx_freq_cal, %struct.mt76x02_rx_freq_cal* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.mt76x02_rx_freq_cal*, %struct.mt76x02_rx_freq_cal** %7, align 8
  %23 = getelementptr inbounds %struct.mt76x02_rx_freq_cal, %struct.mt76x02_rx_freq_cal* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
