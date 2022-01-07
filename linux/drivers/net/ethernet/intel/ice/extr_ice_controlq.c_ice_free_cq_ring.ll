; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_free_cq_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_free_cq_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_ctl_q_ring = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*, %struct.ice_ctl_q_ring*)* @ice_free_cq_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_free_cq_ring(%struct.ice_hw* %0, %struct.ice_ctl_q_ring* %1) #0 {
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_ctl_q_ring*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store %struct.ice_ctl_q_ring* %1, %struct.ice_ctl_q_ring** %4, align 8
  %5 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %6 = call i32 @ice_hw_to_dev(%struct.ice_hw* %5)
  %7 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %4, align 8
  %8 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %4, align 8
  %12 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %4, align 8
  %16 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dmam_free_coherent(i32 %6, i64 %10, i32* %14, i64 %18)
  %20 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %4, align 8
  %21 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %4, align 8
  %24 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.ice_ctl_q_ring*, %struct.ice_ctl_q_ring** %4, align 8
  %27 = getelementptr inbounds %struct.ice_ctl_q_ring, %struct.ice_ctl_q_ring* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  ret void
}

declare dso_local i32 @dmam_free_coherent(i32, i64, i32*, i64) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
