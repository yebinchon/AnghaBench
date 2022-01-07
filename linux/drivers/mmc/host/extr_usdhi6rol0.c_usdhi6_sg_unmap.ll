; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_sg_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_sg_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.scatterlist*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.page*, i64 }
%struct.page = type { i32 }
%struct.TYPE_5__ = type { %struct.page*, i64 }
%struct.scatterlist = type { i64 }
%struct.TYPE_4__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i64, i32, %struct.scatterlist* }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usdhi6_host*, i32)* @usdhi6_sg_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usdhi6_sg_unmap(%struct.usdhi6_host* %0, i32 %1) #0 {
  %3 = alloca %struct.usdhi6_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i64, align 8
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %10 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %9, i32 0, i32 6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  store %struct.mmc_data* %13, %struct.mmc_data** %5, align 8
  %14 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %15 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %17, %struct.page** %6, align 8
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %20, label %111

20:                                               ; preds = %2
  %21 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %22 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %27 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %26, i32 0, i32 5
  %28 = load %struct.scatterlist*, %struct.scatterlist** %27, align 8
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %30, i32 0, i32 4
  %32 = load %struct.scatterlist*, %struct.scatterlist** %31, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi %struct.scatterlist* [ %28, %25 ], [ %32, %29 ]
  store %struct.scatterlist* %34, %struct.scatterlist** %7, align 8
  %35 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %36 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %80, label %42

42:                                               ; preds = %33
  %43 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %44 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MMC_DATA_READ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %42
  %50 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %51 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %8, align 8
  %57 = sub i64 %55, %56
  %58 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %59 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @memcpy(i64 %57, i32 %60, i64 %61)
  %63 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %64 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %68 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %70, %71
  %73 = trunc i64 %72 to i32
  %74 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %75 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = sub i64 %76, %77
  %79 = call i32 @memcpy(i64 %66, i32 %73, i64 %78)
  br label %80

80:                                               ; preds = %49, %42, %33
  %81 = load %struct.page*, %struct.page** %6, align 8
  %82 = call i32 @flush_dcache_page(%struct.page* %81)
  %83 = load %struct.page*, %struct.page** %6, align 8
  %84 = call i32 @kunmap(%struct.page* %83)
  %85 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %86 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store %struct.page* null, %struct.page** %87, align 8
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %80
  %91 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %92 = call i64 @sg_dma_len(%struct.scatterlist* %91)
  %93 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %94 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %92, %95
  %97 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %98 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PAGE_SHIFT, align 8
  %101 = shl i64 %99, %100
  %102 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %103 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %101, %104
  %106 = load i64, i64* %8, align 8
  %107 = sub i64 %105, %106
  %108 = icmp ugt i64 %96, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %90
  br label %127

110:                                              ; preds = %90, %80
  br label %111

111:                                              ; preds = %110, %2
  %112 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %113 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.page*, %struct.page** %114, align 8
  store %struct.page* %115, %struct.page** %6, align 8
  %116 = load %struct.page*, %struct.page** %6, align 8
  %117 = icmp ne %struct.page* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  br label %127

119:                                              ; preds = %111
  %120 = load %struct.page*, %struct.page** %6, align 8
  %121 = call i32 @flush_dcache_page(%struct.page* %120)
  %122 = load %struct.page*, %struct.page** %6, align 8
  %123 = call i32 @kunmap(%struct.page* %122)
  %124 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %125 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store %struct.page* null, %struct.page** %126, align 8
  br label %127

127:                                              ; preds = %119, %118, %109
  ret void
}

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
