; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_put_txbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_put_txbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { %struct.e1000_adapter* }
%struct.e1000_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_buffer = type { i64, i32*, i32, i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_ring*, %struct.e1000_buffer*, i32)* @e1000_put_txbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_put_txbuf(%struct.e1000_ring* %0, %struct.e1000_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca %struct.e1000_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_adapter*, align 8
  store %struct.e1000_ring* %0, %struct.e1000_ring** %4, align 8
  store %struct.e1000_buffer* %1, %struct.e1000_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %8, i32 0, i32 0
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %9, align 8
  store %struct.e1000_adapter* %10, %struct.e1000_adapter** %7, align 8
  %11 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %3
  %16 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %17 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %22 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %26 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %29 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DMA_TO_DEVICE, align 4
  %32 = call i32 @dma_unmap_page(i32* %24, i32 %27, i32 %30, i32 %31)
  br label %46

33:                                               ; preds = %15
  %34 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DMA_TO_DEVICE, align 4
  %45 = call i32 @dma_unmap_single(i32* %37, i32 %40, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %33, %20
  %47 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %3
  %50 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %51 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %59 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @dev_kfree_skb_any(i32* %60)
  br label %67

62:                                               ; preds = %54
  %63 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %64 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @dev_consume_skb_any(i32* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %69 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %67, %49
  %71 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %72 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  ret void
}

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @dev_consume_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
