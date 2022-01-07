; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_unmap_and_free_tx_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_unmap_and_free_tx_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pch_gbe_buffer = type { i32, i32*, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*, %struct.pch_gbe_buffer*)* @pch_gbe_unmap_and_free_tx_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_unmap_and_free_tx_resource(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_buffer* %1) #0 {
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.pch_gbe_buffer*, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %3, align 8
  store %struct.pch_gbe_buffer* %1, %struct.pch_gbe_buffer** %4, align 8
  %5 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DMA_TO_DEVICE, align 4
  %21 = call i32 @dma_unmap_single(i32* %13, i32 %16, i32 %19, i32 %20)
  %22 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %9, %2
  %25 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @dev_kfree_skb_any(i32* %32)
  %34 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
