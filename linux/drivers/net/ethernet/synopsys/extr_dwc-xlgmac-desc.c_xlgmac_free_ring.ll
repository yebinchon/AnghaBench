; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-desc.c_xlgmac_free_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-desc.c_xlgmac_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32 }
%struct.xlgmac_ring = type { i32, i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i64, i64, i64, i32* }
%struct.TYPE_3__ = type { i64, i64, i64, i32* }
%struct.xlgmac_desc_data = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*, %struct.xlgmac_ring*)* @xlgmac_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_free_ring(%struct.xlgmac_pdata* %0, %struct.xlgmac_ring* %1) #0 {
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca %struct.xlgmac_ring*, align 8
  %5 = alloca %struct.xlgmac_desc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %3, align 8
  store %struct.xlgmac_ring* %1, %struct.xlgmac_ring** %4, align 8
  %7 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %8 = icmp ne %struct.xlgmac_ring* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %137

10:                                               ; preds = %2
  %11 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %12 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %19 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %23, i32 %24)
  store %struct.xlgmac_desc_data* %25, %struct.xlgmac_desc_data** %5, align 8
  %26 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %27 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %5, align 8
  %28 = call i32 @xlgmac_unmap_desc_data(%struct.xlgmac_pdata* %26, %struct.xlgmac_desc_data* %27)
  br label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %16

32:                                               ; preds = %16
  %33 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %34 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %38 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %37, i32 0, i32 5
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %10
  %40 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %41 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %76

45:                                               ; preds = %39
  %46 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %47 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %50 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %54 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %58 = call i32 @dma_unmap_page(i32 %48, i64 %52, i64 %56, i32 %57)
  %59 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %60 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @put_page(i32* %62)
  %64 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %65 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  store i32* null, i32** %66, align 8
  %67 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %68 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %71 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %74 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %45, %39
  %77 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %78 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %113

82:                                               ; preds = %76
  %83 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %84 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %87 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %91 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %95 = call i32 @dma_unmap_page(i32 %85, i64 %89, i64 %93, i32 %94)
  %96 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %97 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @put_page(i32* %99)
  %101 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %102 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  store i32* null, i32** %103, align 8
  %104 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %105 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %108 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %111 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %82, %76
  %114 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %115 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %137

118:                                              ; preds = %113
  %119 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %120 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %123 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = zext i32 %124 to i64
  %126 = mul i64 4, %125
  %127 = trunc i64 %126 to i32
  %128 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %129 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %132 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dma_free_coherent(i32 %121, i32 %127, i32* %130, i32 %133)
  %135 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %136 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %135, i32 0, i32 1
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %9, %118, %113
  ret void
}

declare dso_local %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring*, i32) #1

declare dso_local i32 @xlgmac_unmap_desc_data(%struct.xlgmac_pdata*, %struct.xlgmac_desc_data*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_unmap_page(i32, i64, i64, i32) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
