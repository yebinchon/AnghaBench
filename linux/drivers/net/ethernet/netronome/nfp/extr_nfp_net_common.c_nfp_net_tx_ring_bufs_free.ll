; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_ring_bufs_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_ring_bufs_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i32 }
%struct.nfp_net_tx_ring = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_dp*, %struct.nfp_net_tx_ring*)* @nfp_net_tx_ring_bufs_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_tx_ring_bufs_free(%struct.nfp_net_dp* %0, %struct.nfp_net_tx_ring* %1) #0 {
  %3 = alloca %struct.nfp_net_dp*, align 8
  %4 = alloca %struct.nfp_net_tx_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %3, align 8
  store %struct.nfp_net_tx_ring* %1, %struct.nfp_net_tx_ring** %4, align 8
  %6 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %7 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %53

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %50, %11
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %15 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %12
  %19 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %20 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %53

29:                                               ; preds = %18
  %30 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %3, align 8
  %31 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %32 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nfp_net_dma_unmap_rx(%struct.nfp_net_dp* %30, i32 %38)
  %40 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %4, align 8
  %41 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @virt_to_page(i32 %47)
  %49 = call i32 @__free_page(i32 %48)
  br label %50

50:                                               ; preds = %29
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %12

53:                                               ; preds = %10, %28, %12
  ret void
}

declare dso_local i32 @nfp_net_dma_unmap_rx(%struct.nfp_net_dp*, i32) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @virt_to_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
