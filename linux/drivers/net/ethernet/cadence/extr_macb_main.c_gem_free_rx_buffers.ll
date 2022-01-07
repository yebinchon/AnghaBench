; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_free_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_free_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32, i32, i32, %struct.TYPE_2__*, %struct.macb_queue* }
%struct.TYPE_2__ = type { i32 }
%struct.macb_queue = type { %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.macb_dma_desc = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*)* @gem_free_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_free_rx_buffers(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.macb_dma_desc*, align 8
  %5 = alloca %struct.macb_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %2, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.macb*, %struct.macb** %2, align 8
  %10 = getelementptr inbounds %struct.macb, %struct.macb* %9, i32 0, i32 4
  %11 = load %struct.macb_queue*, %struct.macb_queue** %10, align 8
  store %struct.macb_queue* %11, %struct.macb_queue** %5, align 8
  br label %12

12:                                               ; preds = %71, %1
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.macb*, %struct.macb** %2, align 8
  %15 = getelementptr inbounds %struct.macb, %struct.macb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %12
  %19 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %20 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %19, i32 0, i32 0
  %21 = load %struct.sk_buff**, %struct.sk_buff*** %20, align 8
  %22 = icmp ne %struct.sk_buff** %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %71

24:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %61, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.macb*, %struct.macb** %2, align 8
  %28 = getelementptr inbounds %struct.macb, %struct.macb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %25
  %32 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %33 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %32, i32 0, i32 0
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %34, i64 %36
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %3, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  br label %61

42:                                               ; preds = %31
  %43 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.macb_dma_desc* @macb_rx_desc(%struct.macb_queue* %43, i32 %44)
  store %struct.macb_dma_desc* %45, %struct.macb_dma_desc** %4, align 8
  %46 = load %struct.macb*, %struct.macb** %2, align 8
  %47 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %4, align 8
  %48 = call i32 @macb_get_addr(%struct.macb* %46, %struct.macb_dma_desc* %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.macb*, %struct.macb** %2, align 8
  %50 = getelementptr inbounds %struct.macb, %struct.macb* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.macb*, %struct.macb** %2, align 8
  %55 = getelementptr inbounds %struct.macb, %struct.macb* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %58 = call i32 @dma_unmap_single(i32* %52, i32 %53, i32 %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %60 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %59)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %61

61:                                               ; preds = %42, %41
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %25

64:                                               ; preds = %25
  %65 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %66 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %65, i32 0, i32 0
  %67 = load %struct.sk_buff**, %struct.sk_buff*** %66, align 8
  %68 = call i32 @kfree(%struct.sk_buff** %67)
  %69 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %70 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %69, i32 0, i32 0
  store %struct.sk_buff** null, %struct.sk_buff*** %70, align 8
  br label %71

71:                                               ; preds = %64, %23
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = load %struct.macb_queue*, %struct.macb_queue** %5, align 8
  %75 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %74, i32 1
  store %struct.macb_queue* %75, %struct.macb_queue** %5, align 8
  br label %12

76:                                               ; preds = %12
  ret void
}

declare dso_local %struct.macb_dma_desc* @macb_rx_desc(%struct.macb_queue*, i32) #1

declare dso_local i32 @macb_get_addr(%struct.macb*, %struct.macb_dma_desc*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
