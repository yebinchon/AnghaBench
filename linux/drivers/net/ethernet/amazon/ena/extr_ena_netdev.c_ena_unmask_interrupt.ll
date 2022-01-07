; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_unmask_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_unmask_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i32, i32, i32 }
%struct.ena_eth_io_intr_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_ring*, %struct.ena_ring*)* @ena_unmask_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_unmask_interrupt(%struct.ena_ring* %0, %struct.ena_ring* %1) #0 {
  %3 = alloca %struct.ena_ring*, align 8
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca %struct.ena_eth_io_intr_reg, align 4
  %6 = alloca i32, align 4
  store %struct.ena_ring* %0, %struct.ena_ring** %3, align 8
  store %struct.ena_ring* %1, %struct.ena_ring** %4, align 8
  %7 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %8 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @ena_com_get_adaptive_moderation_enabled(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %14 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %18 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ena_com_get_nonadaptive_moderation_interval_rx(i32 %19)
  br label %21

21:                                               ; preds = %16, %12
  %22 = phi i32 [ %15, %12 ], [ %20, %16 ]
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %25 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ena_com_update_intr_reg(%struct.ena_eth_io_intr_reg* %5, i32 %23, i32 %26, i32 1)
  %28 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %29 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ena_com_unmask_intr(i32 %30, %struct.ena_eth_io_intr_reg* %5)
  ret void
}

declare dso_local i64 @ena_com_get_adaptive_moderation_enabled(i32) #1

declare dso_local i32 @ena_com_get_nonadaptive_moderation_interval_rx(i32) #1

declare dso_local i32 @ena_com_update_intr_reg(%struct.ena_eth_io_intr_reg*, i32, i32, i32) #1

declare dso_local i32 @ena_com_unmask_intr(i32, %struct.ena_eth_io_intr_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
