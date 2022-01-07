; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_get_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_get_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }
%struct.mt76_queue = type { i32, %struct.mt76_desc*, %struct.mt76_queue_entry* }
%struct.mt76_desc = type { i32, i32, i32 }
%struct.mt76_queue_entry = type { i32* }

@MT_DMA_CTL_SD_LEN0 = common dso_local global i32 0, align 4
@MT_DMA_CTL_LAST_SEC0 = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mt76_dev*, %struct.mt76_queue*, i32, i32*, i32*, i32*)* @mt76_dma_get_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mt76_dma_get_buf(%struct.mt76_dev* %0, %struct.mt76_queue* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.mt76_dev*, align 8
  %8 = alloca %struct.mt76_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mt76_queue_entry*, align 8
  %14 = alloca %struct.mt76_desc*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %7, align 8
  store %struct.mt76_queue* %1, %struct.mt76_queue** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %20 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %19, i32 0, i32 2
  %21 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %21, i64 %23
  store %struct.mt76_queue_entry* %24, %struct.mt76_queue_entry** %13, align 8
  %25 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %26 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %25, i32 0, i32 1
  %27 = load %struct.mt76_desc*, %struct.mt76_desc** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mt76_desc, %struct.mt76_desc* %27, i64 %29
  store %struct.mt76_desc* %30, %struct.mt76_desc** %14, align 8
  %31 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %13, align 8
  %32 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = bitcast i32* %33 to i8*
  store i8* %34, i8** %16, align 8
  %35 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %36 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @SKB_WITH_OVERHEAD(i32 %37)
  store i32 %38, i32* %17, align 4
  %39 = load %struct.mt76_desc*, %struct.mt76_desc** %14, align 8
  %40 = getelementptr inbounds %struct.mt76_desc, %struct.mt76_desc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @READ_ONCE(i32 %41)
  %43 = call i8* @le32_to_cpu(i32 %42)
  store i8* %43, i8** %15, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %6
  %47 = load %struct.mt76_desc*, %struct.mt76_desc** %14, align 8
  %48 = getelementptr inbounds %struct.mt76_desc, %struct.mt76_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @READ_ONCE(i32 %49)
  %51 = call i8* @le32_to_cpu(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* @MT_DMA_CTL_SD_LEN0, align 4
  %54 = load i32, i32* %18, align 4
  %55 = call i32 @FIELD_GET(i32 %53, i32 %54)
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* @MT_DMA_CTL_LAST_SEC0, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %46, %6
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.mt76_desc*, %struct.mt76_desc** %14, align 8
  %69 = getelementptr inbounds %struct.mt76_desc, %struct.mt76_desc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @le32_to_cpu(i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load i32*, i32** %11, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %64
  %75 = load %struct.mt76_dev*, %struct.mt76_dev** %7, align 8
  %76 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %15, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %81 = call i32 @dma_unmap_single(i32 %77, i8* %78, i32 %79, i32 %80)
  %82 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %13, align 8
  %83 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %82, i32 0, i32 0
  store i32* null, i32** %83, align 8
  %84 = load i8*, i8** %16, align 8
  ret i8* %84
}

declare dso_local i32 @SKB_WITH_OVERHEAD(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
