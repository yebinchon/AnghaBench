; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_init_ring_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_init_ring_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { %struct.TYPE_4__, %struct.atl1e_rx_ring, i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.atl1e_rx_ring = type { i32*, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@ETH_HLEN = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1e_adapter*)* @atl1e_init_ring_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_init_ring_resources(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca %struct.atl1e_adapter*, align 8
  %3 = alloca %struct.atl1e_rx_ring*, align 8
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %2, align 8
  store %struct.atl1e_rx_ring* null, %struct.atl1e_rx_ring** %3, align 8
  %4 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %4, i32 0, i32 1
  store %struct.atl1e_rx_ring* %5, %struct.atl1e_rx_ring** %3, align 8
  %6 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %9, %13
  %15 = load i64, i64* @ETH_HLEN, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @VLAN_HLEN, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @ETH_FCS_LEN, align 8
  %20 = add nsw i64 %18, %19
  %21 = load %struct.atl1e_rx_ring*, %struct.atl1e_rx_ring** %3, align 8
  %22 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.atl1e_rx_ring*, %struct.atl1e_rx_ring** %3, align 8
  %24 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @roundup(i64 %25, i32 32)
  %27 = load %struct.atl1e_rx_ring*, %struct.atl1e_rx_ring** %3, align 8
  %28 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %30 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %30, i32 0, i32 3
  %32 = call i32 @atl1e_cal_ring_size(%struct.atl1e_adapter* %29, i32* %31)
  %33 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.atl1e_rx_ring, %struct.atl1e_rx_ring* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @rwlock_init(i32* %40)
  ret void
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @atl1e_cal_ring_size(%struct.atl1e_adapter*, i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
