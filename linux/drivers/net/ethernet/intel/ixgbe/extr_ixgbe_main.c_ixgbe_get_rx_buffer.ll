; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_get_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_get_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_rx_buffer = type { i32, i32, i32, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.ixgbe_ring = type { i64, i32, %struct.ixgbe_rx_buffer* }
%union.ixgbe_adv_rx_desc = type { i32 }

@IXGBE_RXD_STAT_EOP = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ixgbe_rx_buffer* (%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff**, i32)* @ixgbe_get_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ixgbe_rx_buffer* @ixgbe_get_rx_buffer(%struct.ixgbe_ring* %0, %union.ixgbe_adv_rx_desc* %1, %struct.sk_buff** %2, i32 %3) #0 {
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_rx_buffer*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %5, align 8
  store %union.ixgbe_adv_rx_desc* %1, %union.ixgbe_adv_rx_desc** %6, align 8
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %11 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %10, i32 0, i32 2
  %12 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %11, align 8
  %13 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %14 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %12, i64 %15
  store %struct.ixgbe_rx_buffer* %16, %struct.ixgbe_rx_buffer** %9, align 8
  %17 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %9, align 8
  %18 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @prefetchw(i32 %19)
  %21 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %9, align 8
  %22 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %21, i32 0, i32 3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %24 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %24, align 8
  %25 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %6, align 8
  %26 = load i32, i32* @IXGBE_RXD_STAT_EOP, align 4
  %27 = call i32 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %4
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %58

34:                                               ; preds = %29
  br label %45

35:                                               ; preds = %4
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %41 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %41, align 8
  %43 = call i32 @ixgbe_dma_sync_frag(%struct.ixgbe_ring* %40, %struct.sk_buff* %42)
  br label %44

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %44, %34
  %46 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %47 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %9, align 8
  %50 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %9, align 8
  %53 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %57 = call i32 @dma_sync_single_range_for_cpu(i32 %48, i32 %51, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %45, %33
  %59 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %9, align 8
  %60 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %9, align 8
  ret %struct.ixgbe_rx_buffer* %63
}

declare dso_local i32 @prefetchw(i32) #1

declare dso_local i32 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

declare dso_local i32 @ixgbe_dma_sync_frag(%struct.ixgbe_ring*, %struct.sk_buff*) #1

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
