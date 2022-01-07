; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_unmap_rdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_unmap_rdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_ring_data = type { %struct.TYPE_15__, i64, i64, %struct.TYPE_16__, %struct.TYPE_16__, i32*, i64, i64 }
%struct.TYPE_15__ = type { i64, i64, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, %struct.xgbe_ring_data*)* @xgbe_unmap_rdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_unmap_rdata(%struct.xgbe_prv_data* %0, %struct.xgbe_ring_data* %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_ring_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store %struct.xgbe_ring_data* %1, %struct.xgbe_ring_data** %4, align 8
  %5 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %6 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %11 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %19 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %22 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = call i32 @dma_unmap_page(i32 %17, i64 %20, i64 %23, i32 %24)
  br label %38

26:                                               ; preds = %9
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %28 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %31 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %34 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i32 @dma_unmap_single(i32 %29, i64 %32, i64 %35, i32 %36)
  br label %38

38:                                               ; preds = %26, %14
  %39 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %40 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %42 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %2
  %44 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %45 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %50 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @dev_kfree_skb_any(i32* %51)
  %53 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %54 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %53, i32 0, i32 5
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %57 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %65 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @put_page(i64 %69)
  br label %71

71:                                               ; preds = %63, %55
  %72 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %73 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %71
  %80 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %81 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %84 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %90 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %96 = call i32 @dma_unmap_page(i32 %82, i64 %88, i64 %94, i32 %95)
  %97 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %98 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @put_page(i64 %102)
  br label %104

104:                                              ; preds = %79, %71
  %105 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %106 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %104
  %113 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %114 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @put_page(i64 %118)
  br label %120

120:                                              ; preds = %112, %104
  %121 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %122 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %120
  %129 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %130 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %133 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %139 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %145 = call i32 @dma_unmap_page(i32 %131, i64 %137, i64 %143, i32 %144)
  %146 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %147 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @put_page(i64 %151)
  br label %153

153:                                              ; preds = %128, %120
  %154 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %155 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %154, i32 0, i32 4
  %156 = call i32 @memset(%struct.TYPE_16__* %155, i32 0, i32 64)
  %157 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %158 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %157, i32 0, i32 3
  %159 = call i32 @memset(%struct.TYPE_16__* %158, i32 0, i32 64)
  %160 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %161 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %160, i32 0, i32 2
  store i64 0, i64* %161, align 8
  %162 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %163 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %153
  %167 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %168 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %167, i32 0, i32 1
  store i64 0, i64* %168, align 8
  %169 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %170 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  store i32* null, i32** %171, align 8
  %172 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %173 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  %175 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %176 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %166, %153
  ret void
}

declare dso_local i32 @dma_unmap_page(i32, i64, i64, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @put_page(i64) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
