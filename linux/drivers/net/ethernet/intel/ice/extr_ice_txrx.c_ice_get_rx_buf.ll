; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_get_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_get_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_rx_buf = type { i32, i32, i32, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.ice_ring = type { i64, i32, %struct.ice_rx_buf* }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ice_rx_buf* (%struct.ice_ring*, %struct.sk_buff**, i32)* @ice_get_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ice_rx_buf* @ice_get_rx_buf(%struct.ice_ring* %0, %struct.sk_buff** %1, i32 %2) #0 {
  %4 = alloca %struct.ice_rx_buf*, align 8
  %5 = alloca %struct.ice_ring*, align 8
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_rx_buf*, align 8
  store %struct.ice_ring* %0, %struct.ice_ring** %5, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %10 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %9, i32 0, i32 2
  %11 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %10, align 8
  %12 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %13 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %11, i64 %14
  store %struct.ice_rx_buf* %15, %struct.ice_rx_buf** %8, align 8
  %16 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %8, align 8
  %17 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @prefetchw(i32 %18)
  %20 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %8, align 8
  %21 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %20, i32 0, i32 3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %23 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %8, align 8
  store %struct.ice_rx_buf* %27, %struct.ice_rx_buf** %4, align 8
  br label %46

28:                                               ; preds = %3
  %29 = load %struct.ice_ring*, %struct.ice_ring** %5, align 8
  %30 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %8, align 8
  %33 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %8, align 8
  %36 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %40 = call i32 @dma_sync_single_range_for_cpu(i32 %31, i32 %34, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %8, align 8
  %42 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %8, align 8
  store %struct.ice_rx_buf* %45, %struct.ice_rx_buf** %4, align 8
  br label %46

46:                                               ; preds = %28, %26
  %47 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %4, align 8
  ret %struct.ice_rx_buf* %47
}

declare dso_local i32 @prefetchw(i32) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
