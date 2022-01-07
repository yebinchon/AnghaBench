; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, %struct.TYPE_8__**, i32, %struct.TYPE_5__*, %struct.fec_enet_priv_tx_q**, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.fec_enet_priv_tx_q = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@FEC_MAX_SKB_DESCS = common dso_local global i32 0, align 4
@TSO_HEADER_SIZE = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fec_enet_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_alloc_queue(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fec_enet_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fec_enet_priv_tx_q*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %8)
  store %struct.fec_enet_private* %9, %struct.fec_enet_private** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %89, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %13 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %92

16:                                               ; preds = %10
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i32 20, i32 %17)
  %19 = bitcast i8* %18 to %struct.fec_enet_priv_tx_q*
  store %struct.fec_enet_priv_tx_q* %19, %struct.fec_enet_priv_tx_q** %7, align 8
  %20 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %21 = icmp ne %struct.fec_enet_priv_tx_q* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %152

25:                                               ; preds = %16
  %26 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %27 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %28 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %27, i32 0, i32 5
  %29 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %29, i64 %31
  store %struct.fec_enet_priv_tx_q* %26, %struct.fec_enet_priv_tx_q** %32, align 8
  %33 = load i32, i32* @TX_RING_SIZE, align 4
  %34 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %35 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %38 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %37, i32 0, i32 5
  %39 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %39, i64 %41
  %43 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %42, align 8
  %44 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %48 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* @FEC_MAX_SKB_DESCS, align 4
  %52 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %53 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %55 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %59 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  %62 = sdiv i32 %61, 2
  %63 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %64 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %66 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %65, i32 0, i32 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %70 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TSO_HEADER_SIZE, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %76 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %75, i32 0, i32 3
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i32 @dma_alloc_coherent(i32* %68, i32 %74, i32* %76, i32 %77)
  %79 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %80 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %7, align 8
  %82 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %25
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %152

88:                                               ; preds = %25
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %10

92:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %147, %92
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %96 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %150

99:                                               ; preds = %93
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @kzalloc(i32 8, i32 %100)
  %102 = bitcast i8* %101 to %struct.TYPE_8__*
  %103 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %104 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %103, i32 0, i32 2
  %105 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %105, i64 %107
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %108, align 8
  %109 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %110 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %111, i64 %113
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = icmp ne %struct.TYPE_8__* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %99
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %6, align 4
  br label %152

120:                                              ; preds = %99
  %121 = load i64, i64* @RX_RING_SIZE, align 8
  %122 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %123 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %122, i32 0, i32 2
  %124 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %124, i64 %126
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  store i64 %121, i64* %130, align 8
  %131 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %132 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %131, i32 0, i32 2
  %133 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %133, i64 %135
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %142 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %140
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %142, align 8
  br label %147

147:                                              ; preds = %120
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %93

150:                                              ; preds = %93
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %2, align 4
  br label %156

152:                                              ; preds = %117, %85, %22
  %153 = load %struct.net_device*, %struct.net_device** %3, align 8
  %154 = call i32 @fec_enet_free_queue(%struct.net_device* %153)
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %152, %150
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @fec_enet_free_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
