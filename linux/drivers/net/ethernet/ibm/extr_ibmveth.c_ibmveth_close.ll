; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmveth_adapter = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, %struct.TYPE_8__*, %struct.TYPE_5__, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"close starting\0A\00", align 1
@VIO_IRQ_DISABLE = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"h_free_logical_lan failed with %lx, continuing with close\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@IBMVETH_NUM_BUFF_POOLS = common dso_local global i32 0, align 4
@IBMVETH_BUFF_OH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"close complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ibmveth_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ibmveth_adapter*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ibmveth_adapter* %8, %struct.ibmveth_adapter** %3, align 8
  %9 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netdev_dbg(%struct.net_device* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %15, i32 0, i32 11
  %17 = call i32 @napi_disable(i32* %16)
  %18 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 @netif_stop_queue(%struct.net_device* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VIO_IRQ_DISABLE, align 4
  %32 = call i32 @h_vio_signal(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %48, %25
  %34 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @h_free_logical_lan(i32 %38)
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @H_IS_LONG_BUSY(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @H_BUSY, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ true, %40 ], [ %47, %44 ]
  br i1 %49, label %33, label %50

50:                                               ; preds = %48
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @H_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @netdev_err(%struct.net_device* %55, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call i32 @free_irq(i32 %61, %struct.net_device* %62)
  %64 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %65 = call i32 @ibmveth_update_rx_no_buffer(%struct.ibmveth_adapter* %64)
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %71 = call i32 @dma_unmap_single(%struct.device* %66, i32 %69, i32 4096, i32 %70)
  %72 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @free_page(i64 %74)
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %81 = call i32 @dma_unmap_single(%struct.device* %76, i32 %79, i32 4096, i32 %80)
  %82 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @free_page(i64 %84)
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dma_free_coherent(%struct.device* %86, i32 %90, i32 %94, i32 %98)
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %124, %58
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %100
  %105 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %105, i32 0, i32 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %104
  %115 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %116 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %116, i32 0, i32 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %120
  %122 = call i32 @ibmveth_free_buffer_pool(%struct.ibmveth_adapter* %115, %struct.TYPE_8__* %121)
  br label %123

123:                                              ; preds = %114, %104
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %100

127:                                              ; preds = %100
  %128 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %128, i32 0, i32 3
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %135, i32 0, i32 1
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @IBMVETH_BUFF_OH, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %143 = call i32 @dma_unmap_single(%struct.device* %131, i32 %134, i32 %141, i32 %142)
  %144 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @kfree(i32 %146)
  %148 = load %struct.net_device*, %struct.net_device** %2, align 8
  %149 = call i32 @netdev_dbg(%struct.net_device* %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @h_vio_signal(i32, i32) #1

declare dso_local i64 @h_free_logical_lan(i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @ibmveth_update_rx_no_buffer(%struct.ibmveth_adapter*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @ibmveth_free_buffer_pool(%struct.ibmveth_adapter*, %struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
