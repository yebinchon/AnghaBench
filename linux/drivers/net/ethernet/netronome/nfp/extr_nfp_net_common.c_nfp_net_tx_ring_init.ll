; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_tx_ring = type { i32, i32, i32, i64, %struct.nfp_net_r_vector* }
%struct.nfp_net_r_vector = type { i32, %struct.nfp_net* }
%struct.nfp_net = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_tx_ring*, %struct.nfp_net_r_vector*, i32, i32)* @nfp_net_tx_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_tx_ring_init(%struct.nfp_net_tx_ring* %0, %struct.nfp_net_r_vector* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfp_net_tx_ring*, align 8
  %6 = alloca %struct.nfp_net_r_vector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_net*, align 8
  store %struct.nfp_net_tx_ring* %0, %struct.nfp_net_tx_ring** %5, align 8
  store %struct.nfp_net_r_vector* %1, %struct.nfp_net_r_vector** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %6, align 8
  %11 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %10, i32 0, i32 1
  %12 = load %struct.nfp_net*, %struct.nfp_net** %11, align 8
  store %struct.nfp_net* %12, %struct.nfp_net** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %5, align 8
  %15 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %6, align 8
  %17 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %17, i32 0, i32 4
  store %struct.nfp_net_r_vector* %16, %struct.nfp_net_r_vector** %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %5, align 8
  %21 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %5, align 8
  %23 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %22, i32 0, i32 4
  %24 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %23, align 8
  %25 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %24, i32 0, i32 0
  %26 = call i32 @u64_stats_init(i32* %25)
  %27 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %5, align 8
  %28 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %31 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul i32 %29, %32
  %34 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %5, align 8
  %35 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.nfp_net*, %struct.nfp_net** %9, align 8
  %37 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %5, align 8
  %40 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @NFP_QCP_QUEUE_OFF(i32 %41)
  %43 = add nsw i64 %38, %42
  %44 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %5, align 8
  %45 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
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
