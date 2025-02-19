; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_free_tx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_free_tx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32 }
%struct.tse_buffer = type { i32*, i64, i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_tse_private*, %struct.tse_buffer*)* @tse_free_tx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tse_free_tx_buffer(%struct.altera_tse_private* %0, %struct.tse_buffer* %1) #0 {
  %3 = alloca %struct.altera_tse_private*, align 8
  %4 = alloca %struct.tse_buffer*, align 8
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %3, align 8
  store %struct.tse_buffer* %1, %struct.tse_buffer** %4, align 8
  %5 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %16 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = call i32 @dma_unmap_page(i32 %17, i64 %20, i32 %23, i32 %24)
  br label %38

26:                                               ; preds = %9
  %27 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %28 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i32 @dma_unmap_single(i32 %29, i64 %32, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %26, %14
  %39 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %2
  %42 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %48 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @dev_kfree_skb_any(i32* %49)
  %51 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @dma_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
