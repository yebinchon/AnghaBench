; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_sg_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_sg_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i64, i64, i8*, %struct.TYPE_6__*, %struct.TYPE_4__, i32, %struct.scatterlist* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.mmc_data* }
%struct.TYPE_5__ = type { i32 }
%struct.mmc_data = type { i32, i64, %struct.scatterlist* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.scatterlist = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"%p not properly unmapped!\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"SG size %u isn't a multiple of block size %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Mapped %p (%lx) at %p + %u for CMD%u @ 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.usdhi6_host*)* @usdhi6_sg_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usdhi6_sg_map(%struct.usdhi6_host* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usdhi6_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %3, align 8
  %8 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %9 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %8, i32 0, i32 3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load %struct.mmc_data*, %struct.mmc_data** %11, align 8
  store %struct.mmc_data* %12, %struct.mmc_data** %4, align 8
  %13 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %19 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %18, i32 0, i32 6
  %20 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 2
  %24 = load %struct.scatterlist*, %struct.scatterlist** %23, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi %struct.scatterlist* [ %20, %17 ], [ %24, %21 ]
  store %struct.scatterlist* %26, %struct.scatterlist** %5, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %29 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = urem i64 %32, %35
  store i64 %36, i64* %7, align 8
  %37 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %38 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %42 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 (i32, i8*, i32, ...) @WARN(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %47 = call i32 @sg_dma_len(%struct.scatterlist* %46)
  %48 = sext i32 %47 to i64
  %49 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = urem i64 %48, %51
  %53 = trunc i64 %52 to i32
  %54 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %55 = call i32 @sg_dma_len(%struct.scatterlist* %54)
  %56 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 (i32, i8*, i32, ...) @WARN(i32 %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %55, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %25
  store i8* null, i8** %2, align 8
  br label %139

62:                                               ; preds = %25
  %63 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %64 = call i32 @sg_page(%struct.scatterlist* %63)
  %65 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %66 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  %68 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %69 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @kmap(i32 %71)
  %73 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %74 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  %76 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %77 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %80 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %83 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %86 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %62
  %90 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %91 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %92 = call i32 @usdhi6_blk_bounce(%struct.usdhi6_host* %90, %struct.scatterlist* %91)
  br label %100

93:                                               ; preds = %62
  %94 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %95 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %99 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %93, %89
  %101 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %102 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @mmc_dev(i32 %103)
  %105 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %106 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %110 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @page_to_pfn(i32 %112)
  %114 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %115 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %119 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %122 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %121, i32 0, i32 3
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %129 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %128, i32 0, i32 3
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = call i32 @dev_dbg(i32 %104, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %113, i8* %117, i64 %120, i32 %127, %struct.TYPE_6__* %130)
  %132 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %133 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %136 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr i8, i8* %134, i64 %137
  store i8* %138, i8** %2, align 8
  br label %139

139:                                              ; preds = %100, %61
  %140 = load i8*, i8** %2, align 8
  ret i8* %140
}

declare dso_local i64 @WARN(i32, i8*, i32, ...) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i8* @kmap(i32) #1

declare dso_local i32 @usdhi6_blk_bounce(%struct.usdhi6_host*, %struct.scatterlist*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i8*, i64, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @page_to_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
