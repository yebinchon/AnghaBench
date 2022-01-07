; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_rx_ring = type { i32, i32, i64, %struct.nfp_net_r_vector* }
%struct.nfp_net_r_vector = type { i32, %struct.nfp_net* }
%struct.nfp_net = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_rx_ring*, %struct.nfp_net_r_vector*, i32)* @nfp_net_rx_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_rx_ring_init(%struct.nfp_net_rx_ring* %0, %struct.nfp_net_r_vector* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_net_rx_ring*, align 8
  %5 = alloca %struct.nfp_net_r_vector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_net*, align 8
  store %struct.nfp_net_rx_ring* %0, %struct.nfp_net_rx_ring** %4, align 8
  store %struct.nfp_net_r_vector* %1, %struct.nfp_net_r_vector** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %9 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %8, i32 0, i32 1
  %10 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  store %struct.nfp_net* %10, %struct.nfp_net** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %15 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %15, i32 0, i32 3
  store %struct.nfp_net_r_vector* %14, %struct.nfp_net_r_vector** %16, align 8
  %17 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %18 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %17, i32 0, i32 3
  %19 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %18, align 8
  %20 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %19, i32 0, i32 0
  %21 = call i32 @u64_stats_init(i32* %20)
  %22 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %23 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %26 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul i32 %24, %27
  %29 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %30 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %32 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %35 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @NFP_QCP_QUEUE_OFF(i32 %36)
  %38 = add nsw i64 %33, %37
  %39 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %40 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  ret void
}

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i64 @NFP_QCP_QUEUE_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
