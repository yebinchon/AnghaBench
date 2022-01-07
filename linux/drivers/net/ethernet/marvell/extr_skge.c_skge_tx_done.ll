; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.skge_port = type { i64, %struct.skge_ring, i32, %struct.TYPE_3__* }
%struct.skge_ring = type { i32, %struct.skge_element*, %struct.skge_element* }
%struct.skge_element = type { %struct.TYPE_4__*, i64, %struct.skge_element* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.skge_tx_desc = type { i32 }

@txqaddr = common dso_local global i32* null, align 8
@Q_CSR = common dso_local global i32 0, align 4
@CSR_IRQ_CL_F = common dso_local global i32 0, align 4
@BMU_OWN = common dso_local global i32 0, align 4
@BMU_EOF = common dso_local global i32 0, align 4
@tx_done = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"tx done slot %td\0A\00", align 1
@TX_LOW_WATER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @skge_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_tx_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.skge_port*, align 8
  %4 = alloca %struct.skge_ring*, align 8
  %5 = alloca %struct.skge_element*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.skge_port* @netdev_priv(%struct.net_device* %9)
  store %struct.skge_port* %10, %struct.skge_port** %3, align 8
  %11 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %12 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %11, i32 0, i32 1
  store %struct.skge_ring* %12, %struct.skge_ring** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %14 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32*, i32** @txqaddr, align 8
  %17 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %18 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @Q_CSR, align 4
  %23 = call i32 @Q_ADDR(i32 %21, i32 %22)
  %24 = load i32, i32* @CSR_IRQ_CL_F, align 4
  %25 = call i32 @skge_write8(%struct.TYPE_3__* %15, i32 %23, i32 %24)
  %26 = load %struct.skge_ring*, %struct.skge_ring** %4, align 8
  %27 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %26, i32 0, i32 1
  %28 = load %struct.skge_element*, %struct.skge_element** %27, align 8
  store %struct.skge_element* %28, %struct.skge_element** %5, align 8
  br label %29

29:                                               ; preds = %92, %1
  %30 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %31 = load %struct.skge_ring*, %struct.skge_ring** %4, align 8
  %32 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %31, i32 0, i32 2
  %33 = load %struct.skge_element*, %struct.skge_element** %32, align 8
  %34 = icmp ne %struct.skge_element* %30, %33
  br i1 %34, label %35, label %96

35:                                               ; preds = %29
  %36 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %37 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.skge_tx_desc*
  %40 = getelementptr inbounds %struct.skge_tx_desc, %struct.skge_tx_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @BMU_OWN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %96

47:                                               ; preds = %35
  %48 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %49 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @skge_tx_unmap(i32 %52, %struct.skge_element* %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @BMU_EOF, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %47
  %61 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %62 = load i32, i32* @tx_done, align 4
  %63 = load i32, i32* @KERN_DEBUG, align 4
  %64 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %65 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %68 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %69 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = sub i64 0, %72
  %74 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %67, i64 %73
  %75 = call i32 @netif_printk(%struct.skge_port* %61, i32 %62, i32 %63, i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.skge_element* %74)
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %79 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %6, align 4
  %87 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %88 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = call i32 @dev_consume_skb_any(%struct.TYPE_4__* %89)
  br label %91

91:                                               ; preds = %60, %47
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %94 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %93, i32 0, i32 2
  %95 = load %struct.skge_element*, %struct.skge_element** %94, align 8
  store %struct.skge_element* %95, %struct.skge_element** %5, align 8
  br label %29

96:                                               ; preds = %46, %29
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @netdev_completed_queue(%struct.net_device* %97, i32 %98, i32 %99)
  %101 = load %struct.skge_element*, %struct.skge_element** %5, align 8
  %102 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %103 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %103, i32 0, i32 1
  store %struct.skge_element* %101, %struct.skge_element** %104, align 8
  %105 = call i32 (...) @smp_mb()
  %106 = load %struct.net_device*, %struct.net_device** %2, align 8
  %107 = call i64 @netif_queue_stopped(%struct.net_device* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %96
  %110 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %111 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %110, i32 0, i32 1
  %112 = call i64 @skge_avail(%struct.skge_ring* %111)
  %113 = load i64, i64* @TX_LOW_WATER, align 8
  %114 = icmp sgt i64 %112, %113
  br label %115

115:                                              ; preds = %109, %96
  %116 = phi i1 [ false, %96 ], [ %114, %109 ]
  %117 = zext i1 %116 to i32
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %115
  %121 = load %struct.net_device*, %struct.net_device** %2, align 8
  %122 = call i32 @netif_tx_lock(%struct.net_device* %121)
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = call i64 @netif_queue_stopped(%struct.net_device* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %128 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %127, i32 0, i32 1
  %129 = call i64 @skge_avail(%struct.skge_ring* %128)
  %130 = load i64, i64* @TX_LOW_WATER, align 8
  %131 = icmp sgt i64 %129, %130
  br label %132

132:                                              ; preds = %126, %120
  %133 = phi i1 [ false, %120 ], [ %131, %126 ]
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load %struct.net_device*, %struct.net_device** %2, align 8
  %139 = call i32 @netif_wake_queue(%struct.net_device* %138)
  br label %140

140:                                              ; preds = %137, %132
  %141 = load %struct.net_device*, %struct.net_device** %2, align 8
  %142 = call i32 @netif_tx_unlock(%struct.net_device* %141)
  br label %143

143:                                              ; preds = %140, %115
  ret void
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skge_write8(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @skge_tx_unmap(i32, %struct.skge_element*, i32) #1

declare dso_local i32 @netif_printk(%struct.skge_port*, i32, i32, i32, i8*, %struct.skge_element*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.TYPE_4__*) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @skge_avail(%struct.skge_ring*) #1

declare dso_local i32 @netif_tx_lock(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_tx_unlock(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
