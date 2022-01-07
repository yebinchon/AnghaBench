; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_add_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_add_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { %struct.ixgbevf_ring* }
%struct.ixgbevf_ring_container = type { i32, %struct.ixgbevf_ring* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_ring*, %struct.ixgbevf_ring_container*)* @ixgbevf_add_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_add_ring(%struct.ixgbevf_ring* %0, %struct.ixgbevf_ring_container* %1) #0 {
  %3 = alloca %struct.ixgbevf_ring*, align 8
  %4 = alloca %struct.ixgbevf_ring_container*, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %3, align 8
  store %struct.ixgbevf_ring_container* %1, %struct.ixgbevf_ring_container** %4, align 8
  %5 = load %struct.ixgbevf_ring_container*, %struct.ixgbevf_ring_container** %4, align 8
  %6 = getelementptr inbounds %struct.ixgbevf_ring_container, %struct.ixgbevf_ring_container* %5, i32 0, i32 1
  %7 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %6, align 8
  %8 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %8, i32 0, i32 0
  store %struct.ixgbevf_ring* %7, %struct.ixgbevf_ring** %9, align 8
  %10 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %11 = load %struct.ixgbevf_ring_container*, %struct.ixgbevf_ring_container** %4, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_ring_container, %struct.ixgbevf_ring_container* %11, i32 0, i32 1
  store %struct.ixgbevf_ring* %10, %struct.ixgbevf_ring** %12, align 8
  %13 = load %struct.ixgbevf_ring_container*, %struct.ixgbevf_ring_container** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_ring_container, %struct.ixgbevf_ring_container* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
