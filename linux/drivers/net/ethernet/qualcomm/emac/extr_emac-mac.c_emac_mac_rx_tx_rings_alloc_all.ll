; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_tx_rings_alloc_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_tx_rings_alloc_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_14__, %struct.TYPE_12__, %struct.emac_ring_header }
%struct.TYPE_13__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.emac_ring_header = type { i32, i64, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error: Tx Queue alloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error: Rx Queue alloc failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emac_mac_rx_tx_rings_alloc_all(%struct.emac_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emac_adapter*, align 8
  %4 = alloca %struct.emac_ring_header*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %3, align 8
  %9 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %9, i32 0, i32 8
  store %struct.emac_ring_header* %10, %struct.emac_ring_header** %4, align 8
  %11 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %11, i32 0, i32 5
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 8
  %30 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 4
  %49 = mul i32 %44, %48
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 4
  %55 = mul i32 %50, %54
  %56 = add i32 %49, %55
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %60, 4
  %62 = mul i32 %57, %61
  %63 = add i32 %56, %62
  %64 = add i32 %63, 8
  %65 = add i32 %64, 16
  %66 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %67 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %69 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %72 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %75 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %74, i32 0, i32 2
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i32* @dma_alloc_coherent(%struct.device* %70, i32 %73, i64* %75, i32 %76)
  %78 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %79 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %78, i32 0, i32 3
  store i32* %77, i32** %79, align 8
  %80 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %81 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %1
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %144

87:                                               ; preds = %1
  %88 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %89 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @ALIGN(i64 %90, i32 8)
  %92 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %93 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %97 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  %98 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %99 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %99, i32 0, i32 6
  %101 = call i32 @emac_tx_q_desc_alloc(%struct.emac_adapter* %98, %struct.TYPE_14__* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %87
  %105 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %105, i32 0, i32 5
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = call i32 @netdev_err(%struct.TYPE_13__* %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %123

109:                                              ; preds = %87
  %110 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %111 = call i32 @emac_rx_descs_alloc(%struct.emac_adapter* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %115, i32 0, i32 5
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = call i32 @netdev_err(%struct.TYPE_13__* %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %120

119:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %144

120:                                              ; preds = %114
  %121 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %122 = call i32 @emac_tx_q_bufs_free(%struct.emac_adapter* %121)
  br label %123

123:                                              ; preds = %120, %104
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %126 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %129 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %132 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @dma_free_coherent(%struct.device* %124, i32 %127, i32* %130, i64 %133)
  %135 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %136 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %135, i32 0, i32 3
  store i32* null, i32** %136, align 8
  %137 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %138 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %137, i32 0, i32 2
  store i64 0, i64* %138, align 8
  %139 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %140 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %139, i32 0, i32 0
  store i32 0, i32* %140, align 8
  %141 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %142 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = load i32, i32* %8, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %123, %119, %84
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32* @dma_alloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @emac_tx_q_desc_alloc(%struct.emac_adapter*, %struct.TYPE_14__*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @emac_rx_descs_alloc(%struct.emac_adapter*) #1

declare dso_local i32 @emac_tx_q_bufs_free(%struct.emac_adapter*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
