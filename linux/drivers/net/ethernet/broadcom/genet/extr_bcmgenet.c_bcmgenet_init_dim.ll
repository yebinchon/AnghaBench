; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_init_dim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_init_dim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_rx_ring = type { %struct.bcmgenet_net_dim }
%struct.bcmgenet_net_dim = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.work_struct = type opaque
%struct.work_struct.0 = type opaque

@DIM_CQ_PERIOD_MODE_START_FROM_EQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_rx_ring*, void (%struct.work_struct*)*)* @bcmgenet_init_dim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_init_dim(%struct.bcmgenet_rx_ring* %0, void (%struct.work_struct*)* %1) #0 {
  %3 = alloca %struct.bcmgenet_rx_ring*, align 8
  %4 = alloca void (%struct.work_struct*)*, align 8
  %5 = alloca %struct.bcmgenet_net_dim*, align 8
  store %struct.bcmgenet_rx_ring* %0, %struct.bcmgenet_rx_ring** %3, align 8
  store void (%struct.work_struct*)* %1, void (%struct.work_struct*)** %4, align 8
  %6 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %3, align 8
  %7 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %6, i32 0, i32 0
  store %struct.bcmgenet_net_dim* %7, %struct.bcmgenet_net_dim** %5, align 8
  %8 = load %struct.bcmgenet_net_dim*, %struct.bcmgenet_net_dim** %5, align 8
  %9 = getelementptr inbounds %struct.bcmgenet_net_dim, %struct.bcmgenet_net_dim* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %4, align 8
  %12 = bitcast void (%struct.work_struct*)* %11 to void (%struct.work_struct.0*)*
  %13 = call i32 @INIT_WORK(i32* %10, void (%struct.work_struct.0*)* %12)
  %14 = load i32, i32* @DIM_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  %15 = load %struct.bcmgenet_net_dim*, %struct.bcmgenet_net_dim** %5, align 8
  %16 = getelementptr inbounds %struct.bcmgenet_net_dim, %struct.bcmgenet_net_dim* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.bcmgenet_net_dim*, %struct.bcmgenet_net_dim** %5, align 8
  %19 = getelementptr inbounds %struct.bcmgenet_net_dim, %struct.bcmgenet_net_dim* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.bcmgenet_net_dim*, %struct.bcmgenet_net_dim** %5, align 8
  %21 = getelementptr inbounds %struct.bcmgenet_net_dim, %struct.bcmgenet_net_dim* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.bcmgenet_net_dim*, %struct.bcmgenet_net_dim** %5, align 8
  %23 = getelementptr inbounds %struct.bcmgenet_net_dim, %struct.bcmgenet_net_dim* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.0*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
