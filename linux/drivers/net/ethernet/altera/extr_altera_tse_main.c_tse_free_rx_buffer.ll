; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_free_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_tse_free_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32 }
%struct.tse_buffer = type { i64, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.altera_tse_private*, %struct.tse_buffer*)* @tse_free_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tse_free_rx_buffer(%struct.altera_tse_private* %0, %struct.tse_buffer* %1) #0 {
  %3 = alloca %struct.altera_tse_private*, align 8
  %4 = alloca %struct.tse_buffer*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %3, align 8
  store %struct.tse_buffer* %1, %struct.tse_buffer** %4, align 8
  %7 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %7, i32 0, i32 1
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %9, %struct.sk_buff** %5, align 8
  %10 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %20 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = call i32 @dma_unmap_single(i32 %21, i64 %22, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %18, %15
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %29)
  %31 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %31, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %32, align 8
  %33 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
