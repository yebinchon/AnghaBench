; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_ring_alloc_desc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx_edma.c_wil_ring_alloc_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.wil_ring = type { i32, i32*, i32*, i32, i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"alloc_desc_ring:\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s ring[%d] 0x%p:%pad 0x%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, %struct.wil_ring*)* @wil_ring_alloc_desc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_ring_alloc_desc_ring(%struct.wil6210_priv* %0, %struct.wil_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca %struct.wil_ring*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %4, align 8
  store %struct.wil_ring* %1, %struct.wil_ring** %5, align 8
  %8 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %9 = call %struct.device* @wil_to_dev(%struct.wil6210_priv* %8)
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %11 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  store i64 %14, i64* %7, align 8
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %16 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @BUILD_BUG_ON(i32 1)
  %18 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %19 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %21 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %23 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kcalloc(i32 %24, i32 4, i32 %25)
  %27 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %28 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %30 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %117

34:                                               ; preds = %2
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %38 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %37, i32 0, i32 3
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @dma_alloc_coherent(%struct.device* %35, i64 %36, i32* %38, i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %43 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %45 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %34
  br label %110

49:                                               ; preds = %34
  %50 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %51 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  store i64 1, i64* %7, align 8
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %58 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @dma_alloc_coherent(%struct.device* %55, i64 %56, i32* %59, i32 %60)
  %62 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %63 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %66 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %54
  br label %92

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %49
  %73 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %74 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %75 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %80 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %81 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %84 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %87 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %86, i32 0, i32 3
  %88 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %89 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_misc(%struct.wil6210_priv* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %82, i32* %85, i32* %87, i32* %90)
  store i32 0, i32* %3, align 4
  br label %120

92:                                               ; preds = %70
  %93 = load %struct.device*, %struct.device** %6, align 8
  %94 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %95 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %101 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = bitcast i32* %102 to i8*
  %104 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %105 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dma_free_coherent(%struct.device* %93, i32 %99, i8* %103, i32 %106)
  %108 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %109 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %108, i32 0, i32 2
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %92, %48
  %111 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %112 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @kfree(i32* %113)
  %115 = load %struct.wil_ring*, %struct.wil_ring** %5, align 8
  %116 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %115, i32 0, i32 1
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %110, %33
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %72
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.device* @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
