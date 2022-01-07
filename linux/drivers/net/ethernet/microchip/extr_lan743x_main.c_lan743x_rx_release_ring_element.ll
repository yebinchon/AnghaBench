; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_release_ring_element.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_release_ring_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_rx = type { %struct.TYPE_4__*, %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.lan743x_rx_descriptor = type { i32*, i64, i32 }
%struct.lan743x_rx_buffer_info = type { i32*, i64, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_rx*, i32)* @lan743x_rx_release_ring_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_rx_release_ring_element(%struct.lan743x_rx* %0, i32 %1) #0 {
  %3 = alloca %struct.lan743x_rx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lan743x_rx_buffer_info*, align 8
  %6 = alloca %struct.lan743x_rx_descriptor*, align 8
  store %struct.lan743x_rx* %0, %struct.lan743x_rx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %8 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %7, i32 0, i32 2
  %9 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %9, i64 %11
  store %struct.lan743x_rx_descriptor* %12, %struct.lan743x_rx_descriptor** %6, align 8
  %13 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %14 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %13, i32 0, i32 1
  %15 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.lan743x_rx_descriptor, %struct.lan743x_rx_descriptor* %15, i64 %17
  %19 = bitcast %struct.lan743x_rx_descriptor* %18 to %struct.lan743x_rx_buffer_info*
  store %struct.lan743x_rx_buffer_info* %19, %struct.lan743x_rx_buffer_info** %5, align 8
  %20 = load %struct.lan743x_rx_descriptor*, %struct.lan743x_rx_descriptor** %6, align 8
  %21 = call i32 @memset(%struct.lan743x_rx_descriptor* %20, i32 0, i32 24)
  %22 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %23 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %2
  %27 = load %struct.lan743x_rx*, %struct.lan743x_rx** %3, align 8
  %28 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %34 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %37 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %40 = call i32 @dma_unmap_single(i32* %32, i64 %35, i32 %38, i32 %39)
  %41 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %42 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %26, %2
  %44 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %45 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %50 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @dev_kfree_skb(i32* %51)
  %53 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %54 = getelementptr inbounds %struct.lan743x_rx_buffer_info, %struct.lan743x_rx_buffer_info* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.lan743x_rx_buffer_info*, %struct.lan743x_rx_buffer_info** %5, align 8
  %57 = bitcast %struct.lan743x_rx_buffer_info* %56 to %struct.lan743x_rx_descriptor*
  %58 = call i32 @memset(%struct.lan743x_rx_descriptor* %57, i32 0, i32 24)
  ret void
}

declare dso_local i32 @memset(%struct.lan743x_rx_descriptor*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
