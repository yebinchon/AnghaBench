; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_tx_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_tx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_channel = type { i32, %struct.xlgmac_ring*, %struct.xlgmac_pdata* }
%struct.xlgmac_ring = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xlgmac_pdata = type { %struct.xlgmac_hw_ops, %struct.xlgmac_desc_ops, %struct.net_device* }
%struct.xlgmac_hw_ops = type { i32 (%struct.xlgmac_desc_data*)*, i64 (%struct.xlgmac_dma_desc*)*, i32 (%struct.xlgmac_dma_desc.0*)* }
%struct.xlgmac_desc_data = type opaque
%struct.xlgmac_dma_desc = type opaque
%struct.xlgmac_dma_desc.0 = type opaque
%struct.xlgmac_desc_ops = type { i32 (%struct.xlgmac_pdata.1*, %struct.xlgmac_desc_data.2*)* }
%struct.xlgmac_pdata.1 = type opaque
%struct.xlgmac_desc_data.2 = type opaque
%struct.net_device = type { i32 }
%struct.xlgmac_desc_data.3 = type { %struct.TYPE_3__, %struct.xlgmac_dma_desc.4* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.xlgmac_dma_desc.4 = type { i32 }
%struct.netdev_queue = type { i32 }

@XLGMAC_TX_DESC_MAX_PROC = common dso_local global i32 0, align 4
@XLGMAC_TX_DESC_MIN_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"processed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_channel*)* @xlgmac_tx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_tx_poll(%struct.xlgmac_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlgmac_channel*, align 8
  %4 = alloca %struct.xlgmac_pdata*, align 8
  %5 = alloca %struct.xlgmac_ring*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xlgmac_desc_data.3*, align 8
  %10 = alloca %struct.xlgmac_dma_desc.4*, align 8
  %11 = alloca %struct.xlgmac_desc_ops*, align 8
  %12 = alloca %struct.xlgmac_hw_ops*, align 8
  %13 = alloca %struct.netdev_queue*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xlgmac_channel* %0, %struct.xlgmac_channel** %3, align 8
  %16 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %17 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %16, i32 0, i32 2
  %18 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %17, align 8
  store %struct.xlgmac_pdata* %18, %struct.xlgmac_pdata** %4, align 8
  %19 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %20 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %19, i32 0, i32 1
  %21 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %20, align 8
  store %struct.xlgmac_ring* %21, %struct.xlgmac_ring** %5, align 8
  %22 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %23 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %22, i32 0, i32 2
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %14, align 4
  %25 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %26 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %25, i32 0, i32 1
  store %struct.xlgmac_desc_ops* %26, %struct.xlgmac_desc_ops** %11, align 8
  %27 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %28 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %27, i32 0, i32 0
  store %struct.xlgmac_hw_ops* %28, %struct.xlgmac_hw_ops** %12, align 8
  %29 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %30 = icmp ne %struct.xlgmac_ring* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %158

32:                                               ; preds = %1
  %33 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %34 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = call i32 (...) @smp_rmb()
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %39 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %37, i32 %40)
  store %struct.netdev_queue* %41, %struct.netdev_queue** %13, align 8
  br label %42

42:                                               ; preds = %108, %32
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @XLGMAC_TX_DESC_MAX_PROC, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %48 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %49, %50
  br label %52

52:                                               ; preds = %46, %42
  %53 = phi i1 [ false, %42 ], [ %51, %46 ]
  br i1 %53, label %54, label %129

54:                                               ; preds = %52
  %55 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %56 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %57 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.xlgmac_desc_data.3* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %55, i32 %58)
  store %struct.xlgmac_desc_data.3* %59, %struct.xlgmac_desc_data.3** %9, align 8
  %60 = load %struct.xlgmac_desc_data.3*, %struct.xlgmac_desc_data.3** %9, align 8
  %61 = getelementptr inbounds %struct.xlgmac_desc_data.3, %struct.xlgmac_desc_data.3* %60, i32 0, i32 1
  %62 = load %struct.xlgmac_dma_desc.4*, %struct.xlgmac_dma_desc.4** %61, align 8
  store %struct.xlgmac_dma_desc.4* %62, %struct.xlgmac_dma_desc.4** %10, align 8
  %63 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %12, align 8
  %64 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %63, i32 0, i32 2
  %65 = load i32 (%struct.xlgmac_dma_desc.0*)*, i32 (%struct.xlgmac_dma_desc.0*)** %64, align 8
  %66 = load %struct.xlgmac_dma_desc.4*, %struct.xlgmac_dma_desc.4** %10, align 8
  %67 = bitcast %struct.xlgmac_dma_desc.4* %66 to %struct.xlgmac_dma_desc.0*
  %68 = call i32 %65(%struct.xlgmac_dma_desc.0* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %54
  br label %129

71:                                               ; preds = %54
  %72 = call i32 (...) @dma_rmb()
  %73 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %74 = call i64 @netif_msg_tx_done(%struct.xlgmac_pdata* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %78 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %79 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %80 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @xlgmac_dump_tx_desc(%struct.xlgmac_pdata* %77, %struct.xlgmac_ring* %78, i32 %81, i32 1, i32 0)
  br label %83

83:                                               ; preds = %76, %71
  %84 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %12, align 8
  %85 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %84, i32 0, i32 1
  %86 = load i64 (%struct.xlgmac_dma_desc*)*, i64 (%struct.xlgmac_dma_desc*)** %85, align 8
  %87 = load %struct.xlgmac_dma_desc.4*, %struct.xlgmac_dma_desc.4** %10, align 8
  %88 = bitcast %struct.xlgmac_dma_desc.4* %87 to %struct.xlgmac_dma_desc*
  %89 = call i64 %86(%struct.xlgmac_dma_desc* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %83
  %92 = load %struct.xlgmac_desc_data.3*, %struct.xlgmac_desc_data.3** %9, align 8
  %93 = getelementptr inbounds %struct.xlgmac_desc_data.3, %struct.xlgmac_desc_data.3* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %7, align 4
  %100 = load %struct.xlgmac_desc_data.3*, %struct.xlgmac_desc_data.3** %9, align 8
  %101 = getelementptr inbounds %struct.xlgmac_desc_data.3, %struct.xlgmac_desc_data.3* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %91, %83
  %109 = load %struct.xlgmac_desc_ops*, %struct.xlgmac_desc_ops** %11, align 8
  %110 = getelementptr inbounds %struct.xlgmac_desc_ops, %struct.xlgmac_desc_ops* %109, i32 0, i32 0
  %111 = load i32 (%struct.xlgmac_pdata.1*, %struct.xlgmac_desc_data.2*)*, i32 (%struct.xlgmac_pdata.1*, %struct.xlgmac_desc_data.2*)** %110, align 8
  %112 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %113 = bitcast %struct.xlgmac_pdata* %112 to %struct.xlgmac_pdata.1*
  %114 = load %struct.xlgmac_desc_data.3*, %struct.xlgmac_desc_data.3** %9, align 8
  %115 = bitcast %struct.xlgmac_desc_data.3* %114 to %struct.xlgmac_desc_data.2*
  %116 = call i32 %111(%struct.xlgmac_pdata.1* %113, %struct.xlgmac_desc_data.2* %115)
  %117 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %12, align 8
  %118 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %117, i32 0, i32 0
  %119 = load i32 (%struct.xlgmac_desc_data*)*, i32 (%struct.xlgmac_desc_data*)** %118, align 8
  %120 = load %struct.xlgmac_desc_data.3*, %struct.xlgmac_desc_data.3** %9, align 8
  %121 = bitcast %struct.xlgmac_desc_data.3* %120 to %struct.xlgmac_desc_data*
  %122 = call i32 %119(%struct.xlgmac_desc_data* %121)
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  %125 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %126 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %42

129:                                              ; preds = %70, %52
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  store i32 0, i32* %2, align 4
  br label %158

133:                                              ; preds = %129
  %134 = load %struct.netdev_queue*, %struct.netdev_queue** %13, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %134, i32 %135, i32 %136)
  %138 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %139 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %154

143:                                              ; preds = %133
  %144 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %145 = call i64 @xlgmac_tx_avail_desc(%struct.xlgmac_ring* %144)
  %146 = load i64, i64* @XLGMAC_TX_DESC_MIN_FREE, align 8
  %147 = icmp sgt i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %150 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 0, i32* %151, align 4
  %152 = load %struct.netdev_queue*, %struct.netdev_queue** %13, align 8
  %153 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %152)
  br label %154

154:                                              ; preds = %148, %143, %133
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @XLGMAC_PR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %14, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %154, %132, %31
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.xlgmac_desc_data.3* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring*, i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i64 @netif_msg_tx_done(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_dump_tx_desc(%struct.xlgmac_pdata*, %struct.xlgmac_ring*, i32, i32, i32) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i64 @xlgmac_tx_avail_desc(%struct.xlgmac_ring*) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @XLGMAC_PR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
