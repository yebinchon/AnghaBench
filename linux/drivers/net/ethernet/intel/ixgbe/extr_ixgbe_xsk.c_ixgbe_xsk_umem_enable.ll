; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_umem_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_xsk_umem_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i64, %struct.net_device*, i32, %struct.TYPE_2__** }
%struct.net_device = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.xdp_umem = type { i32 }
%struct.xdp_umem_fq_reuse = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XDP_WAKEUP_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, %struct.xdp_umem*, i64)* @ixgbe_xsk_umem_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_xsk_umem_enable(%struct.ixgbe_adapter* %0, %struct.xdp_umem* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca %struct.xdp_umem*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.xdp_umem_fq_reuse*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store %struct.xdp_umem* %1, %struct.xdp_umem** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 1
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %107

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %107

38:                                               ; preds = %29
  %39 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.xdp_umem_fq_reuse* @xsk_reuseq_prepare(i32 %45)
  store %struct.xdp_umem_fq_reuse* %46, %struct.xdp_umem_fq_reuse** %9, align 8
  %47 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %9, align 8
  %48 = icmp ne %struct.xdp_umem_fq_reuse* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %107

52:                                               ; preds = %38
  %53 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %54 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %9, align 8
  %55 = call i32 @xsk_reuseq_swap(%struct.xdp_umem* %53, %struct.xdp_umem_fq_reuse* %54)
  %56 = call i32 @xsk_reuseq_free(i32 %55)
  %57 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %58 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %59 = call i32 @ixgbe_xsk_umem_dma_map(%struct.ixgbe_adapter* %57, %struct.xdp_umem* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %4, align 4
  br label %107

64:                                               ; preds = %52
  %65 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %65, i32 0, i32 1
  %67 = load %struct.net_device*, %struct.net_device** %66, align 8
  %68 = call i64 @netif_running(%struct.net_device* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %72 = call i64 @ixgbe_enabled_xdp_adapter(%struct.ixgbe_adapter* %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %70, %64
  %75 = phi i1 [ false, %64 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @ixgbe_txrx_ring_disable(%struct.ixgbe_adapter* %80, i64 %81)
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %86 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @set_bit(i64 %84, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %83
  %92 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @ixgbe_txrx_ring_enable(%struct.ixgbe_adapter* %92, i64 %93)
  %95 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %96 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %95, i32 0, i32 1
  %97 = load %struct.net_device*, %struct.net_device** %96, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i32, i32* @XDP_WAKEUP_RX, align 4
  %100 = call i32 @ixgbe_xsk_wakeup(%struct.net_device* %97, i64 %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %4, align 4
  br label %107

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %83
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %103, %62, %49, %35, %20
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.xdp_umem_fq_reuse* @xsk_reuseq_prepare(i32) #1

declare dso_local i32 @xsk_reuseq_free(i32) #1

declare dso_local i32 @xsk_reuseq_swap(%struct.xdp_umem*, %struct.xdp_umem_fq_reuse*) #1

declare dso_local i32 @ixgbe_xsk_umem_dma_map(%struct.ixgbe_adapter*, %struct.xdp_umem*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @ixgbe_enabled_xdp_adapter(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_txrx_ring_disable(%struct.ixgbe_adapter*, i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @ixgbe_txrx_ring_enable(%struct.ixgbe_adapter*, i64) #1

declare dso_local i32 @ixgbe_xsk_wakeup(%struct.net_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
