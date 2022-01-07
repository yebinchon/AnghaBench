; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_tx_cleanup_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_tx_cleanup_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.mt76_queue = type { %struct.TYPE_2__*, %struct.mt76_queue_entry* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mt76_queue_entry = type { i32*, i32*, i32 }

@MT_DMA_CTL_SD_LEN0 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MT_DMA_CTL_LAST_SEC0 = common dso_local global i32 0, align 4
@MT_DMA_CTL_SD_LEN1 = common dso_local global i32 0, align 4
@DMA_DUMMY_DATA = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, %struct.mt76_queue*, i32, %struct.mt76_queue_entry*)* @mt76_dma_tx_cleanup_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_dma_tx_cleanup_idx(%struct.mt76_dev* %0, %struct.mt76_queue* %1, i32 %2, %struct.mt76_queue_entry* %3) #0 {
  %5 = alloca %struct.mt76_dev*, align 8
  %6 = alloca %struct.mt76_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt76_queue_entry*, align 8
  %9 = alloca %struct.mt76_queue_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %5, align 8
  store %struct.mt76_queue* %1, %struct.mt76_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.mt76_queue_entry* %3, %struct.mt76_queue_entry** %8, align 8
  %16 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %17 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %16, i32 0, i32 1
  %18 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %18, i64 %20
  store %struct.mt76_queue_entry* %21, %struct.mt76_queue_entry** %9, align 8
  %22 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %23 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @READ_ONCE(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %9, align 8
  %34 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %4
  %38 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %39 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @READ_ONCE(i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @MT_DMA_CTL_SD_LEN0, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @FIELD_GET(i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %51 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = call i32 @dma_unmap_single(i32 %52, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %37, %4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @MT_DMA_CTL_LAST_SEC0, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %58
  %64 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %65 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @READ_ONCE(i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* @MT_DMA_CTL_SD_LEN1, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @FIELD_GET(i32 %73, i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %77 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @DMA_TO_DEVICE, align 4
  %83 = call i32 @dma_unmap_single(i32 %78, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %63, %58
  %85 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %9, align 8
  %86 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** @DMA_DUMMY_DATA, align 8
  %89 = icmp eq i32* %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %9, align 8
  %92 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %90, %84
  %94 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %9, align 8
  %95 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32*, i32** @DMA_DUMMY_DATA, align 8
  %98 = icmp eq i32* %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %9, align 8
  %101 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %100, i32 0, i32 0
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %99, %93
  %103 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %8, align 8
  %104 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %9, align 8
  %105 = bitcast %struct.mt76_queue_entry* %103 to i8*
  %106 = bitcast %struct.mt76_queue_entry* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 24, i1 false)
  %107 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %9, align 8
  %108 = call i32 @memset(%struct.mt76_queue_entry* %107, i32 0, i32 24)
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.mt76_queue_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
