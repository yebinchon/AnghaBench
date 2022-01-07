; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-contig.c_videobuf_vm_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-contig.c_videobuf_vm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32, %struct.videobuf_mapping* }
%struct.videobuf_mapping = type { i64, %struct.videobuf_queue* }
%struct.videobuf_queue = type { %struct.TYPE_2__**, i32, i64 }
%struct.TYPE_2__ = type { i64, %struct.videobuf_mapping*, %struct.videobuf_dma_contig_memory* }
%struct.videobuf_dma_contig_memory = type { i32*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"vm_close %p [count=%u,vma=%08lx-%08lx]\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"munmap %p q=%p\0A\00", align 1
@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@MAGIC_DC_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"buf[%d] freeing %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @videobuf_vm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @videobuf_vm_close(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.videobuf_mapping*, align 8
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.videobuf_dma_contig_memory*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %7 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %8 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %7, i32 0, i32 2
  %9 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %8, align 8
  store %struct.videobuf_mapping* %9, %struct.videobuf_mapping** %3, align 8
  %10 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %11 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %10, i32 0, i32 1
  %12 = load %struct.videobuf_queue*, %struct.videobuf_queue** %11, align 8
  store %struct.videobuf_queue* %12, %struct.videobuf_queue** %4, align 8
  %13 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %14 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %17 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %18 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @dev_dbg(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.videobuf_mapping* %16, i64 %19, i32 %22, i32 %25)
  %27 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %28 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %32 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 0, %33
  br i1 %34, label %35, label %137

35:                                               ; preds = %1
  %36 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %37 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %40 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %41 = call i32 (i32, i8*, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.videobuf_mapping* %39, %struct.videobuf_queue* %40)
  %42 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %43 = call i32 @videobuf_queue_lock(%struct.videobuf_queue* %42)
  %44 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %45 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %50 = call i32 @videobuf_queue_cancel(%struct.videobuf_queue* %49)
  br label %51

51:                                               ; preds = %48, %35
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %129, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %132

56:                                               ; preds = %52
  %57 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %58 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %61
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp eq %struct.TYPE_2__* null, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %129

66:                                               ; preds = %56
  %67 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %68 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %69, i64 %71
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %74, align 8
  %76 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %77 = icmp ne %struct.videobuf_mapping* %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %129

79:                                               ; preds = %66
  %80 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %81 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %87, align 8
  store %struct.videobuf_dma_contig_memory* %88, %struct.videobuf_dma_contig_memory** %6, align 8
  %89 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %6, align 8
  %90 = icmp ne %struct.videobuf_dma_contig_memory* %89, null
  br i1 %90, label %91, label %112

91:                                               ; preds = %79
  %92 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %6, align 8
  %93 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @MAGIC_DC_MEM, align 4
  %96 = call i32 @MAGIC_CHECK(i32 %94, i32 %95)
  %97 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %98 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %6, align 8
  %102 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 (i32, i8*, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32* %103)
  %105 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %106 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %6, align 8
  %109 = call i32 @__videobuf_dc_free(i32 %107, %struct.videobuf_dma_contig_memory* %108)
  %110 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %6, align 8
  %111 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %110, i32 0, i32 0
  store i32* null, i32** %111, align 8
  br label %112

112:                                              ; preds = %91, %79
  %113 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %114 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %115, i64 %117
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store %struct.videobuf_mapping* null, %struct.videobuf_mapping** %120, align 8
  %121 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %122 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %123, i64 %125
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %112, %78, %65
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %52

132:                                              ; preds = %52
  %133 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %3, align 8
  %134 = call i32 @kfree(%struct.videobuf_mapping* %133)
  %135 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %136 = call i32 @videobuf_queue_unlock(%struct.videobuf_queue* %135)
  br label %137

137:                                              ; preds = %132, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @videobuf_queue_lock(%struct.videobuf_queue*) #1

declare dso_local i32 @videobuf_queue_cancel(%struct.videobuf_queue*) #1

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @__videobuf_dc_free(i32, %struct.videobuf_dma_contig_memory*) #1

declare dso_local i32 @kfree(%struct.videobuf_mapping*) #1

declare dso_local i32 @videobuf_queue_unlock(%struct.videobuf_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
