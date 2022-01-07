; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_print_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_print_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i32, %struct.ixgbe_tx_buffer* }
%struct.ixgbe_tx_buffer = type { i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c" %5d %5X %5X %016llX %08X %p %016llX\0A\00", align 1
@dma = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*, i32)* @ixgbe_print_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_print_buffer(%struct.ixgbe_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_tx_buffer*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %6, i32 0, i32 2
  %8 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %7, align 8
  %9 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %8, i64 %11
  store %struct.ixgbe_tx_buffer* %12, %struct.ixgbe_tx_buffer** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %5, align 8
  %21 = load i32, i32* @dma, align 4
  %22 = call i64 @dma_unmap_addr(%struct.ixgbe_tx_buffer* %20, i32 %21)
  %23 = trunc i64 %22 to i32
  %24 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %5, align 8
  %25 = load i32, i32* @len, align 4
  %26 = call i32 @dma_unmap_len(%struct.ixgbe_tx_buffer* %24, i32 %25)
  %27 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %5, align 8
  %31 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i64 %19, i32 %23, i32 %26, i32 %29, i32 %33)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i64 @dma_unmap_addr(%struct.ixgbe_tx_buffer*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.ixgbe_tx_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
