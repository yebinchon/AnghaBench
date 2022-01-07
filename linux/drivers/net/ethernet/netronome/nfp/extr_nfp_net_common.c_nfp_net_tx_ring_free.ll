; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_ring_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_tx_ring = type { i32, i32, i32*, i32*, i64, %struct.nfp_net_r_vector* }
%struct.nfp_net_r_vector = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nfp_net_dp }
%struct.nfp_net_dp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_tx_ring*)* @nfp_net_tx_ring_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_tx_ring_free(%struct.nfp_net_tx_ring* %0) #0 {
  %2 = alloca %struct.nfp_net_tx_ring*, align 8
  %3 = alloca %struct.nfp_net_r_vector*, align 8
  %4 = alloca %struct.nfp_net_dp*, align 8
  store %struct.nfp_net_tx_ring* %0, %struct.nfp_net_tx_ring** %2, align 8
  %5 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %2, align 8
  %6 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %5, i32 0, i32 5
  %7 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %6, align 8
  store %struct.nfp_net_r_vector* %7, %struct.nfp_net_r_vector** %3, align 8
  %8 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %3, align 8
  %9 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.nfp_net_dp* %11, %struct.nfp_net_dp** %4, align 8
  %12 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %2, align 8
  %13 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @kvfree(i32* %14)
  %16 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %2, align 8
  %17 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %4, align 8
  %22 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %2, align 8
  %25 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %2, align 8
  %28 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %2, align 8
  %31 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dma_free_coherent(i32 %23, i32 %26, i32* %29, i32 %32)
  br label %34

34:                                               ; preds = %20, %1
  %35 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %2, align 8
  %36 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %2, align 8
  %38 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %2, align 8
  %40 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %2, align 8
  %42 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %2, align 8
  %44 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  ret void
}

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
