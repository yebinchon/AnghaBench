; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_free_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_free_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, %struct.TYPE_5__*, %struct.tx_ring, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.tx_ring = type { i64, %struct.tcb*, %struct.tcb*, %struct.tx_desc* }
%struct.tx_desc = type { i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.tcb = type { %struct.tcb*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@NUM_DESC_PER_RING_TX = common dso_local global i64 0, align 8
@ET_DMA10_MASK = common dso_local global i32 0, align 4
@ET_DMA10_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et131x_adapter*, %struct.tcb*)* @free_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_send_packet(%struct.et131x_adapter* %0, %struct.tcb* %1) #0 {
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca %struct.tcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tx_desc*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.tx_ring*, align 8
  %9 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %3, align 8
  store %struct.tcb* %1, %struct.tcb** %4, align 8
  store %struct.tx_desc* null, %struct.tx_desc** %6, align 8
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %7, align 8
  %14 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %14, i32 0, i32 2
  store %struct.tx_ring* %15, %struct.tx_ring** %8, align 8
  %16 = load %struct.tcb*, %struct.tcb** %4, align 8
  %17 = getelementptr inbounds %struct.tcb, %struct.tcb* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %99

20:                                               ; preds = %2
  %21 = load %struct.tcb*, %struct.tcb** %4, align 8
  %22 = getelementptr inbounds %struct.tcb, %struct.tcb* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %27 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  br label %32

32:                                               ; preds = %83, %20
  %33 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %34 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %33, i32 0, i32 3
  %35 = load %struct.tx_desc*, %struct.tx_desc** %34, align 8
  %36 = load %struct.tcb*, %struct.tcb** %4, align 8
  %37 = getelementptr inbounds %struct.tcb, %struct.tcb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @INDEX10(i32 %38)
  %40 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %35, i64 %39
  store %struct.tx_desc* %40, %struct.tx_desc** %6, align 8
  %41 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %42 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %45 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = shl i32 %47, 32
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %57 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i32 @dma_unmap_single(i32* %54, i32 %55, i32 %58, i32 %59)
  %61 = load %struct.tcb*, %struct.tcb** %4, align 8
  %62 = getelementptr inbounds %struct.tcb, %struct.tcb* %61, i32 0, i32 2
  %63 = call i32 @add_10bit(i32* %62, i32 1)
  %64 = load %struct.tcb*, %struct.tcb** %4, align 8
  %65 = getelementptr inbounds %struct.tcb, %struct.tcb* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @INDEX10(i32 %66)
  %68 = load i64, i64* @NUM_DESC_PER_RING_TX, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %32
  %71 = load i32, i32* @ET_DMA10_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.tcb*, %struct.tcb** %4, align 8
  %74 = getelementptr inbounds %struct.tcb, %struct.tcb* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* @ET_DMA10_WRAP, align 4
  %78 = load %struct.tcb*, %struct.tcb** %4, align 8
  %79 = getelementptr inbounds %struct.tcb, %struct.tcb* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = xor i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %70, %32
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %85 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %86 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %85, i32 0, i32 3
  %87 = load %struct.tx_desc*, %struct.tx_desc** %86, align 8
  %88 = load %struct.tcb*, %struct.tcb** %4, align 8
  %89 = getelementptr inbounds %struct.tcb, %struct.tcb* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @INDEX10(i32 %90)
  %92 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %87, i64 %91
  %93 = icmp ne %struct.tx_desc* %84, %92
  br i1 %93, label %32, label %94

94:                                               ; preds = %83
  %95 = load %struct.tcb*, %struct.tcb** %4, align 8
  %96 = getelementptr inbounds %struct.tcb, %struct.tcb* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = call i32 @dev_kfree_skb_any(%struct.TYPE_6__* %97)
  br label %99

99:                                               ; preds = %94, %2
  %100 = load %struct.tcb*, %struct.tcb** %4, align 8
  %101 = call i32 @memset(%struct.tcb* %100, i32 0, i32 24)
  %102 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %102, i32 0, i32 0
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @spin_lock_irqsave(i32* %103, i64 %104)
  %106 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %107 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %111 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %110, i32 0, i32 1
  %112 = load %struct.tcb*, %struct.tcb** %111, align 8
  %113 = icmp ne %struct.tcb* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %99
  %115 = load %struct.tcb*, %struct.tcb** %4, align 8
  %116 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %117 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %116, i32 0, i32 1
  %118 = load %struct.tcb*, %struct.tcb** %117, align 8
  %119 = getelementptr inbounds %struct.tcb, %struct.tcb* %118, i32 0, i32 0
  store %struct.tcb* %115, %struct.tcb** %119, align 8
  br label %124

120:                                              ; preds = %99
  %121 = load %struct.tcb*, %struct.tcb** %4, align 8
  %122 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %123 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %122, i32 0, i32 2
  store %struct.tcb* %121, %struct.tcb** %123, align 8
  br label %124

124:                                              ; preds = %120, %114
  %125 = load %struct.tcb*, %struct.tcb** %4, align 8
  %126 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %127 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %126, i32 0, i32 1
  store %struct.tcb* %125, %struct.tcb** %127, align 8
  %128 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %128, i32 0, i32 0
  %130 = load i64, i64* %5, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32* %129, i64 %130)
  %132 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %133 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @WARN_ON(i32 %136)
  ret void
}

declare dso_local i64 @INDEX10(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @add_10bit(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(%struct.tcb*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
