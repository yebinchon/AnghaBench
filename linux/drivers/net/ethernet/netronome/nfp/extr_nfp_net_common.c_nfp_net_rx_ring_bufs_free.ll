; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_ring_bufs_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_ring_bufs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32 }
%struct.nfp_net_rx_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_dp*, %struct.nfp_net_rx_ring*)* @nfp_net_rx_ring_bufs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_rx_ring_bufs_free(%struct.nfp_net_dp* %0, %struct.nfp_net_rx_ring* %1) #0 {
  %3 = alloca %struct.nfp_net_dp*, align 8
  %4 = alloca %struct.nfp_net_rx_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %3, align 8
  store %struct.nfp_net_rx_ring* %1, %struct.nfp_net_rx_ring** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %61, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %64

13:                                               ; preds = %6
  %14 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %15 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %61

24:                                               ; preds = %13
  %25 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %3, align 8
  %26 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %27 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @nfp_net_dma_unmap_rx(%struct.nfp_net_dp* %25, i64 %33)
  %35 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %36 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %3, align 8
  %44 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nfp_net_free_frag(i32* %42, i32 %45)
  %47 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %48 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %4, align 8
  %55 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %24, %23
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %6

64:                                               ; preds = %6
  ret void
}

declare dso_local i32 @nfp_net_dma_unmap_rx(%struct.nfp_net_dp*, i64) #1

declare dso_local i32 @nfp_net_free_frag(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
