; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_rx_descs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_rx_descs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32, i32, %struct.emac_rx_queue, %struct.TYPE_6__*, %struct.emac_ring_header }
%struct.emac_rx_queue = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.emac_ring_header = type { i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_adapter*)* @emac_rx_descs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_rx_descs_alloc(%struct.emac_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emac_adapter*, align 8
  %4 = alloca %struct.emac_ring_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.emac_rx_queue*, align 8
  %7 = alloca i64, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %3, align 8
  %8 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %8, i32 0, i32 4
  store %struct.emac_ring_header* %9, %struct.emac_ring_header** %4, align 8
  %10 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_to_node(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %17, i32 0, i32 2
  store %struct.emac_rx_queue* %18, %struct.emac_rx_queue** %6, align 8
  %19 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %20 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @kzalloc_node(i64 %25, i32 %26, i32 %27)
  %29 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %30 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 6
  store i32 %28, i32* %31, align 8
  %32 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %33 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %135

40:                                               ; preds = %1
  %41 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %42 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 4
  %49 = mul nsw i32 %44, %48
  %50 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %51 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %54 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 4
  %61 = mul nsw i32 %56, %60
  %62 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %63 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %66 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %69 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %73 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 5
  store i64 %71, i64* %74, align 8
  %75 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %76 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %79 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %83 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 4
  store i64 %81, i64* %84, align 8
  %85 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %86 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @ALIGN(i32 %88, i32 8)
  %90 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %91 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, %89
  store i64 %93, i64* %91, align 8
  %94 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %95 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %98 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %96, %99
  %101 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %102 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 5
  store i64 %100, i64* %103, align 8
  %104 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %105 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %108 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %112 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  store i64 %110, i64* %113, align 8
  %114 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %115 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @ALIGN(i32 %117, i32 8)
  %119 = load %struct.emac_ring_header*, %struct.emac_ring_header** %4, align 8
  %120 = getelementptr inbounds %struct.emac_ring_header, %struct.emac_ring_header* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, %118
  store i64 %122, i64* %120, align 8
  %123 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %124 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  store i64 0, i64* %125, align 8
  %126 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %127 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %130 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.emac_rx_queue*, %struct.emac_rx_queue** %6, align 8
  %133 = getelementptr inbounds %struct.emac_rx_queue, %struct.emac_rx_queue* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  store i64 0, i64* %134, align 8
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %40, %37
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @dev_to_node(i32) #1

declare dso_local i32 @kzalloc_node(i64, i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
