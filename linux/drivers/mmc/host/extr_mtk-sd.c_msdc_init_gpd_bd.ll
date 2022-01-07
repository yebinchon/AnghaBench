; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_init_gpd_bd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_init_gpd_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.msdc_dma = type { i64, i64, %struct.mt_gpdma_desc*, %struct.mt_gpdma_desc* }
%struct.mt_gpdma_desc = type { i32, i32, i8*, i8* }
%struct.mt_bdma_desc = type { i32, i32, i8*, i8* }

@GPDMA_DESC_BDP = common dso_local global i32 0, align 4
@MAX_BD_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*, %struct.msdc_dma*)* @msdc_init_gpd_bd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_init_gpd_bd(%struct.msdc_host* %0, %struct.msdc_dma* %1) #0 {
  %3 = alloca %struct.msdc_host*, align 8
  %4 = alloca %struct.msdc_dma*, align 8
  %5 = alloca %struct.mt_gpdma_desc*, align 8
  %6 = alloca %struct.mt_bdma_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.msdc_host* %0, %struct.msdc_host** %3, align 8
  store %struct.msdc_dma* %1, %struct.msdc_dma** %4, align 8
  %9 = load %struct.msdc_dma*, %struct.msdc_dma** %4, align 8
  %10 = getelementptr inbounds %struct.msdc_dma, %struct.msdc_dma* %9, i32 0, i32 3
  %11 = load %struct.mt_gpdma_desc*, %struct.mt_gpdma_desc** %10, align 8
  store %struct.mt_gpdma_desc* %11, %struct.mt_gpdma_desc** %5, align 8
  %12 = load %struct.msdc_dma*, %struct.msdc_dma** %4, align 8
  %13 = getelementptr inbounds %struct.msdc_dma, %struct.msdc_dma* %12, i32 0, i32 2
  %14 = load %struct.mt_gpdma_desc*, %struct.mt_gpdma_desc** %13, align 8
  %15 = bitcast %struct.mt_gpdma_desc* %14 to %struct.mt_bdma_desc*
  store %struct.mt_bdma_desc* %15, %struct.mt_bdma_desc** %6, align 8
  %16 = load %struct.mt_gpdma_desc*, %struct.mt_gpdma_desc** %5, align 8
  %17 = call i32 @memset(%struct.mt_gpdma_desc* %16, i32 0, i32 48)
  %18 = load %struct.msdc_dma*, %struct.msdc_dma** %4, align 8
  %19 = getelementptr inbounds %struct.msdc_dma, %struct.msdc_dma* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, 24
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* @GPDMA_DESC_BDP, align 4
  %23 = load %struct.mt_gpdma_desc*, %struct.mt_gpdma_desc** %5, align 8
  %24 = getelementptr inbounds %struct.mt_gpdma_desc, %struct.mt_gpdma_desc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i8* @lower_32_bits(i64 %25)
  %27 = load %struct.mt_gpdma_desc*, %struct.mt_gpdma_desc** %5, align 8
  %28 = getelementptr inbounds %struct.mt_gpdma_desc, %struct.mt_gpdma_desc* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %30 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @upper_32_bits(i64 %36)
  %38 = and i32 %37, 15
  %39 = shl i32 %38, 24
  %40 = load %struct.mt_gpdma_desc*, %struct.mt_gpdma_desc** %5, align 8
  %41 = getelementptr inbounds %struct.mt_gpdma_desc, %struct.mt_gpdma_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %35, %2
  %45 = load %struct.msdc_dma*, %struct.msdc_dma** %4, align 8
  %46 = getelementptr inbounds %struct.msdc_dma, %struct.msdc_dma* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %7, align 8
  %48 = load %struct.msdc_dma*, %struct.msdc_dma** %4, align 8
  %49 = getelementptr inbounds %struct.msdc_dma, %struct.msdc_dma* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @lower_32_bits(i64 %50)
  %52 = load %struct.mt_gpdma_desc*, %struct.mt_gpdma_desc** %5, align 8
  %53 = getelementptr inbounds %struct.mt_gpdma_desc, %struct.mt_gpdma_desc* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %55 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %44
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @upper_32_bits(i64 %61)
  %63 = and i32 %62, 15
  %64 = shl i32 %63, 28
  %65 = load %struct.mt_gpdma_desc*, %struct.mt_gpdma_desc** %5, align 8
  %66 = getelementptr inbounds %struct.mt_gpdma_desc, %struct.mt_gpdma_desc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %60, %44
  %70 = load %struct.mt_bdma_desc*, %struct.mt_bdma_desc** %6, align 8
  %71 = bitcast %struct.mt_bdma_desc* %70 to %struct.mt_gpdma_desc*
  %72 = load i32, i32* @MAX_BD_NUM, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 24, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memset(%struct.mt_gpdma_desc* %71, i32 0, i32 %75)
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %117, %69
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @MAX_BD_NUM, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %77
  %83 = load %struct.msdc_dma*, %struct.msdc_dma** %4, align 8
  %84 = getelementptr inbounds %struct.msdc_dma, %struct.msdc_dma* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = mul i64 24, %88
  %90 = add i64 %85, %89
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i8* @lower_32_bits(i64 %91)
  %93 = load %struct.mt_bdma_desc*, %struct.mt_bdma_desc** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.mt_bdma_desc, %struct.mt_bdma_desc* %93, i64 %95
  %97 = getelementptr inbounds %struct.mt_bdma_desc, %struct.mt_bdma_desc* %96, i32 0, i32 2
  store i8* %92, i8** %97, align 8
  %98 = load %struct.msdc_host*, %struct.msdc_host** %3, align 8
  %99 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %82
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @upper_32_bits(i64 %105)
  %107 = and i32 %106, 15
  %108 = shl i32 %107, 24
  %109 = load %struct.mt_bdma_desc*, %struct.mt_bdma_desc** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.mt_bdma_desc, %struct.mt_bdma_desc* %109, i64 %111
  %113 = getelementptr inbounds %struct.mt_bdma_desc, %struct.mt_bdma_desc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %108
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %104, %82
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %77

120:                                              ; preds = %77
  ret void
}

declare dso_local i32 @memset(%struct.mt_gpdma_desc*, i32, i32) #1

declare dso_local i8* @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
