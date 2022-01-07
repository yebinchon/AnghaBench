; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c_dma64_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c_dma64_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { i64, i64, i32, i64, i64, i64, i64, %struct.dma64desc*, i32, i32, i64, i64, i64, i64, %struct.dma64desc* }
%struct.dma64desc = type { i32 }

@DMA_TX = common dso_local global i64 0, align 8
@D64RINGALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: DMA_ALLOC_CONSISTENT(ntxd) failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: DMA_ALLOC_CONSISTENT(nrxd) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_info*, i64)* @dma64_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma64_alloc(%struct.dma_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dma_info* %0, %struct.dma_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %9, align 8
  store i64 4, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @DMA_TX, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %17 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = mul nsw i64 %18, %19
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %23 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = mul nsw i64 %24, %25
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i64 [ %20, %15 ], [ %26, %21 ]
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %31 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = shl i32 1, %33
  store i32 %34, i32* %10, align 4
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @DMA_TX, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %89

38:                                               ; preds = %27
  %39 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %40 = load i32, i32* @D64RINGALIGN, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %43 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %42, i32 0, i32 12
  %44 = call i8* @dma_ringalloc(%struct.dma_info* %39, i32 %40, i32 %41, i32* %11, i64* %9, i64* %43)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %49 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %52 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @brcms_dbg_dma(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 0, i32* %3, align 4
  br label %141

55:                                               ; preds = %38
  %56 = load i32, i32* %11, align 4
  %57 = shl i32 1, %56
  store i32 %57, i32* %10, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @roundup(i64 %59, i32 %60)
  %62 = inttoptr i64 %61 to %struct.dma64desc*
  %63 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %64 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %63, i32 0, i32 14
  store %struct.dma64desc* %62, %struct.dma64desc** %64, align 8
  %65 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %66 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %65, i32 0, i32 14
  %67 = load %struct.dma64desc*, %struct.dma64desc** %66, align 8
  %68 = bitcast %struct.dma64desc* %67 to i32*
  %69 = load i8*, i8** %8, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = ptrtoint i32* %68 to i64
  %72 = ptrtoint i32* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sdiv exact i64 %73, 4
  %75 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %76 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %75, i32 0, i32 11
  store i64 %74, i64* %76, align 8
  %77 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %78 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %77, i32 0, i32 12
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %81 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %80, i32 0, i32 11
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %85 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %84, i32 0, i32 13
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %88 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %87, i32 0, i32 10
  store i64 %86, i64* %88, align 8
  br label %140

89:                                               ; preds = %27
  %90 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %91 = load i32, i32* @D64RINGALIGN, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %94 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %93, i32 0, i32 5
  %95 = call i8* @dma_ringalloc(%struct.dma_info* %90, i32 %91, i32 %92, i32* %11, i64* %9, i64* %94)
  store i8* %95, i8** %8, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %89
  %99 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %100 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %103 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @brcms_dbg_dma(i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  store i32 0, i32* %3, align 4
  br label %141

106:                                              ; preds = %89
  %107 = load i32, i32* %11, align 4
  %108 = shl i32 1, %107
  store i32 %108, i32* %10, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = load i32, i32* %10, align 4
  %112 = call i64 @roundup(i64 %110, i32 %111)
  %113 = inttoptr i64 %112 to %struct.dma64desc*
  %114 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %115 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %114, i32 0, i32 7
  store %struct.dma64desc* %113, %struct.dma64desc** %115, align 8
  %116 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %117 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %116, i32 0, i32 7
  %118 = load %struct.dma64desc*, %struct.dma64desc** %117, align 8
  %119 = bitcast %struct.dma64desc* %118 to i32*
  %120 = load i8*, i8** %8, align 8
  %121 = bitcast i8* %120 to i32*
  %122 = ptrtoint i32* %119 to i64
  %123 = ptrtoint i32* %121 to i64
  %124 = sub i64 %122, %123
  %125 = sdiv exact i64 %124, 4
  %126 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %127 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  %128 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %129 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %132 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %136 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %135, i32 0, i32 6
  store i64 %134, i64* %136, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load %struct.dma_info*, %struct.dma_info** %4, align 8
  %139 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %138, i32 0, i32 3
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %106, %55
  store i32 1, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %98, %47
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i8* @dma_ringalloc(%struct.dma_info*, i32, i32, i32*, i64*, i64*) #1

declare dso_local i32 @brcms_dbg_dma(i32, i8*, i32) #1

declare dso_local i64 @roundup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
