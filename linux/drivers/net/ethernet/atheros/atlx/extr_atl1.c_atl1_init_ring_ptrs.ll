; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_init_ring_ptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_init_ring_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { %struct.atl1_rrd_ring, %struct.atl1_rfd_ring, %struct.atl1_tpd_ring }
%struct.atl1_rrd_ring = type { i32, i64 }
%struct.atl1_rfd_ring = type { i32, i64 }
%struct.atl1_tpd_ring = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_adapter*)* @atl1_init_ring_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_init_ring_ptrs(%struct.atl1_adapter* %0) #0 {
  %2 = alloca %struct.atl1_adapter*, align 8
  %3 = alloca %struct.atl1_tpd_ring*, align 8
  %4 = alloca %struct.atl1_rfd_ring*, align 8
  %5 = alloca %struct.atl1_rrd_ring*, align 8
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %2, align 8
  %6 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %6, i32 0, i32 2
  store %struct.atl1_tpd_ring* %7, %struct.atl1_tpd_ring** %3, align 8
  %8 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %8, i32 0, i32 1
  store %struct.atl1_rfd_ring* %9, %struct.atl1_rfd_ring** %4, align 8
  %10 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %10, i32 0, i32 0
  store %struct.atl1_rrd_ring* %11, %struct.atl1_rrd_ring** %5, align 8
  %12 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %13 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %12, i32 0, i32 1
  %14 = call i32 @atomic_set(i32* %13, i32 0)
  %15 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %16 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %15, i32 0, i32 0
  %17 = call i32 @atomic_set(i32* %16, i32 0)
  %18 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %4, align 8
  %19 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %4, align 8
  %21 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %20, i32 0, i32 0
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  %23 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %5, align 8
  %24 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %5, align 8
  %26 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %25, i32 0, i32 0
  %27 = call i32 @atomic_set(i32* %26, i32 0)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
