; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_is_rx_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_is_rx_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { %struct.wil_ring }
%struct.wil_ring = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vring_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@RX_DMA_STATUS_DU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*)* @wil_is_rx_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_is_rx_idle(%struct.wil6210_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca %struct.vring_rx_desc*, align 8
  %5 = alloca %struct.wil_ring*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %3, align 8
  %6 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %7 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %6, i32 0, i32 0
  store %struct.wil_ring* %7, %struct.wil_ring** %5, align 8
  %8 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %9 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %12 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = bitcast i32* %16 to %struct.vring_rx_desc*
  store %struct.vring_rx_desc* %17, %struct.vring_rx_desc** %4, align 8
  %18 = load %struct.vring_rx_desc*, %struct.vring_rx_desc** %4, align 8
  %19 = getelementptr inbounds %struct.vring_rx_desc, %struct.vring_rx_desc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RX_DMA_STATUS_DU, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
