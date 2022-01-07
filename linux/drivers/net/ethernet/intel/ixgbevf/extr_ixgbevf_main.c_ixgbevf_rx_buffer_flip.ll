; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_rx_buffer_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_rx_buffer_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i32 }
%struct.ixgbevf_rx_buffer = type { i32 }

@IXGBEVF_SKB_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_ring*, %struct.ixgbevf_rx_buffer*, i32)* @ixgbevf_rx_buffer_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_rx_buffer_flip(%struct.ixgbevf_ring* %0, %struct.ixgbevf_rx_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca %struct.ixgbevf_rx_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %4, align 8
  store %struct.ixgbevf_rx_buffer* %1, %struct.ixgbevf_rx_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %9 = call i32 @ixgbevf_rx_pg_size(%struct.ixgbevf_ring* %8)
  %10 = sdiv i32 %9, 2
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %14, %11
  store i32 %15, i32* %13, align 4
  ret void
}

declare dso_local i32 @ixgbevf_rx_pg_size(%struct.ixgbevf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
