; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_give_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_give_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_dp = type { i64 }
%struct.nfp_net_rx_ring = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i8* }

@NFP_NET_FL_BATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net_dp*, %struct.nfp_net_rx_ring*, i8*, i64)* @nfp_net_rx_give_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_rx_give_one(%struct.nfp_net_dp* %0, %struct.nfp_net_rx_ring* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.nfp_net_dp*, align 8
  %6 = alloca %struct.nfp_net_rx_ring*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_net_dp* %0, %struct.nfp_net_dp** %5, align 8
  store %struct.nfp_net_rx_ring* %1, %struct.nfp_net_rx_ring** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %6, align 8
  %11 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %6, align 8
  %12 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @D_IDX(%struct.nfp_net_rx_ring* %10, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @nfp_net_dma_sync_dev_rx(%struct.nfp_net_dp* %15, i64 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %6, align 8
  %20 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i8* %18, i8** %25, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %6, align 8
  %28 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 %26, i64* %33, align 8
  %34 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %6, align 8
  %35 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %6, align 8
  %43 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %6, align 8
  %51 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %59 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = call i32 @nfp_desc_set_dma_addr(%struct.TYPE_6__* %56, i64 %61)
  %63 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %6, align 8
  %64 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %6, align 8
  %68 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @NFP_NET_FL_BATCH, align 4
  %71 = srem i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %4
  %74 = call i32 (...) @wmb()
  %75 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %6, align 8
  %76 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @NFP_NET_FL_BATCH, align 4
  %79 = call i32 @nfp_qcp_wr_ptr_add(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %4
  ret void
}

declare dso_local i32 @D_IDX(%struct.nfp_net_rx_ring*, i32) #1

declare dso_local i32 @nfp_net_dma_sync_dev_rx(%struct.nfp_net_dp*, i64) #1

declare dso_local i32 @nfp_desc_set_dma_addr(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @nfp_qcp_wr_ptr_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
