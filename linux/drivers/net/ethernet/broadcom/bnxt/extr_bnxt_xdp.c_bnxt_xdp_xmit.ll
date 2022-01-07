; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_xdp.c_bnxt_xdp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_xdp.c_bnxt_xdp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xdp_frame = type { i32, i32 }
%struct.bnxt = type { i32, %struct.TYPE_2__**, %struct.bnxt_tx_ring_info*, i32, %struct.pci_dev*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_tx_ring_info = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.bpf_prog = type { i32 }

@BNXT_STATE_OPEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BNXT_NAPI_FLAG_XDP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@XDP_XMIT_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_xdp_xmit(%struct.net_device* %0, i32 %1, %struct.xdp_frame** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_frame**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnxt*, align 8
  %11 = alloca %struct.bpf_prog*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca %struct.bnxt_tx_ring_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.xdp_frame*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xdp_frame** %2, %struct.xdp_frame*** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call %struct.bnxt* @netdev_priv(%struct.net_device* %19)
  store %struct.bnxt* %20, %struct.bnxt** %10, align 8
  %21 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %22 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.bpf_prog* @READ_ONCE(i32 %23)
  store %struct.bpf_prog* %24, %struct.bpf_prog** %11, align 8
  %25 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  store %struct.pci_dev* %27, %struct.pci_dev** %12, align 8
  store i32 0, i32* %15, align 4
  %28 = load i32, i32* @BNXT_STATE_OPEN, align 4
  %29 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %30 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %29, i32 0, i32 3
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %4
  %34 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %35 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  %40 = icmp ne %struct.bpf_prog* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38, %33, %4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %142

44:                                               ; preds = %38
  %45 = call i32 (...) @smp_processor_id()
  %46 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %47 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = srem i32 %45, %48
  store i32 %49, i32* %16, align 4
  %50 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %51 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %50, i32 0, i32 2
  %52 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %51, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %52, i64 %54
  store %struct.bnxt_tx_ring_info* %55, %struct.bnxt_tx_ring_info** %13, align 8
  store i32 0, i32* %17, align 4
  br label %56

56:                                               ; preds = %121, %44
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %124

60:                                               ; preds = %56
  %61 = load %struct.xdp_frame**, %struct.xdp_frame*** %8, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.xdp_frame*, %struct.xdp_frame** %61, i64 %63
  %65 = load %struct.xdp_frame*, %struct.xdp_frame** %64, align 8
  store %struct.xdp_frame* %65, %struct.xdp_frame** %18, align 8
  %66 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %13, align 8
  %67 = icmp ne %struct.bnxt_tx_ring_info* %66, null
  br i1 %67, label %68, label %86

68:                                               ; preds = %60
  %69 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %70 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %13, align 8
  %71 = call i32 @bnxt_tx_avail(%struct.bnxt* %69, %struct.bnxt_tx_ring_info* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %75 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %76, i64 %78
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BNXT_NAPI_FLAG_XDP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %73, %68, %60
  %87 = load %struct.xdp_frame*, %struct.xdp_frame** %18, align 8
  %88 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %87)
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %121

91:                                               ; preds = %73
  %92 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = load %struct.xdp_frame*, %struct.xdp_frame** %18, align 8
  %95 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.xdp_frame*, %struct.xdp_frame** %18, align 8
  %98 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @DMA_TO_DEVICE, align 4
  %101 = call i32 @dma_map_single(i32* %93, i32 %96, i32 %99, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %14, align 4
  %105 = call i64 @dma_mapping_error(i32* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %91
  %108 = load %struct.xdp_frame*, %struct.xdp_frame** %18, align 8
  %109 = call i32 @xdp_return_frame_rx_napi(%struct.xdp_frame* %108)
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %121

112:                                              ; preds = %91
  %113 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %114 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %13, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.xdp_frame*, %struct.xdp_frame** %18, align 8
  %117 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.xdp_frame*, %struct.xdp_frame** %18, align 8
  %120 = call i32 @__bnxt_xmit_xdp_redirect(%struct.bnxt* %113, %struct.bnxt_tx_ring_info* %114, i32 %115, i32 %118, %struct.xdp_frame* %119)
  br label %121

121:                                              ; preds = %112, %107, %86
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %17, align 4
  br label %56

124:                                              ; preds = %56
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @XDP_XMIT_FLUSH, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %124
  %130 = call i32 (...) @wmb()
  %131 = load %struct.bnxt*, %struct.bnxt** %10, align 8
  %132 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %13, align 8
  %133 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %132, i32 0, i32 1
  %134 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %13, align 8
  %135 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @bnxt_db_write(%struct.bnxt* %131, i32* %133, i32 %136)
  br label %138

138:                                              ; preds = %129, %124
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %15, align 4
  %141 = sub nsw i32 %139, %140
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %138, %41
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @bnxt_tx_avail(%struct.bnxt*, %struct.bnxt_tx_ring_info*) #1

declare dso_local i32 @xdp_return_frame_rx_napi(%struct.xdp_frame*) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @__bnxt_xmit_xdp_redirect(%struct.bnxt*, %struct.bnxt_tx_ring_info*, i32, i32, %struct.xdp_frame*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @bnxt_db_write(%struct.bnxt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
