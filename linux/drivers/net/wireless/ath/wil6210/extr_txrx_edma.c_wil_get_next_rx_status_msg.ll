; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_get_next_rx_status_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_get_next_rx_status_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil_status_ring = type { i32, i32, i64 }
%struct.wil_rx_status_compressed = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil_status_ring*, i32*, i8*)* @wil_get_next_rx_status_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_get_next_rx_status_msg(%struct.wil_status_ring* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.wil_status_ring*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wil_rx_status_compressed*, align 8
  store %struct.wil_status_ring* %0, %struct.wil_status_ring** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %9 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %12 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %15 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %10, %18
  %20 = inttoptr i64 %19 to %struct.wil_rx_status_compressed*
  store %struct.wil_rx_status_compressed* %20, %struct.wil_rx_status_compressed** %7, align 8
  %21 = load %struct.wil_rx_status_compressed*, %struct.wil_rx_status_compressed** %7, align 8
  %22 = getelementptr inbounds %struct.wil_rx_status_compressed, %struct.wil_rx_status_compressed* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @WIL_GET_BITS(i32 %23, i32 31, i32 31)
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = call i32 (...) @rmb()
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.wil_rx_status_compressed*, %struct.wil_rx_status_compressed** %7, align 8
  %29 = bitcast %struct.wil_rx_status_compressed* %28 to i8*
  %30 = load %struct.wil_status_ring*, %struct.wil_status_ring** %4, align 8
  %31 = getelementptr inbounds %struct.wil_status_ring, %struct.wil_status_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memcpy(i8* %27, i8* %29, i32 %32)
  ret void
}

declare dso_local i32 @WIL_GET_BITS(i32, i32, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
