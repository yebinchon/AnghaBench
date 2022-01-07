; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-contig.c_videobuf_dma_contig_user_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-contig.c_videobuf_dma_contig_user_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.videobuf_dma_contig_memory = type { i64, i64 }
%struct.videobuf_buffer = type { i64, i32 }
%struct.vm_area_struct = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_dma_contig_memory*, %struct.videobuf_buffer*)* @videobuf_dma_contig_user_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @videobuf_dma_contig_user_get(%struct.videobuf_dma_contig_memory* %0, %struct.videobuf_buffer* %1) #0 {
  %3 = alloca %struct.videobuf_dma_contig_memory*, align 8
  %4 = alloca %struct.videobuf_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.videobuf_dma_contig_memory* %0, %struct.videobuf_dma_contig_memory** %3, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %4, align 8
  %14 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @untagged_addr(i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.mm_struct*, %struct.mm_struct** %19, align 8
  store %struct.mm_struct* %20, %struct.mm_struct** %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @PAGE_MASK, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i64 @PAGE_ALIGN(i64 %31)
  %33 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %3, align 8
  %34 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %13, align 4
  %37 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 0
  %39 = call i32 @down_read(i32* %38)
  %40 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %40, i64 %41)
  store %struct.vm_area_struct* %42, %struct.vm_area_struct** %7, align 8
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %44 = icmp ne %struct.vm_area_struct* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %2
  br label %107

46:                                               ; preds = %2
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %3, align 8
  %49 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %47, %50
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ugt i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %107

57:                                               ; preds = %46
  store i64 0, i64* %10, align 8
  store i64 0, i64* %8, align 8
  %58 = load i64, i64* %5, align 8
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %99, %57
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %3, align 8
  %62 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PAGE_SHIFT, align 8
  %65 = lshr i64 %63, %64
  %66 = icmp ult i64 %60, %65
  br i1 %66, label %67, label %106

67:                                               ; preds = %59
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @follow_pfn(%struct.vm_area_struct* %68, i64 %69, i64* %9)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %106

74:                                               ; preds = %67
  %75 = load i64, i64* %10, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @PAGE_SHIFT, align 8
  %80 = shl i64 %78, %79
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = add i64 %80, %82
  %84 = load %struct.videobuf_dma_contig_memory*, %struct.videobuf_dma_contig_memory** %3, align 8
  %85 = getelementptr inbounds %struct.videobuf_dma_contig_memory, %struct.videobuf_dma_contig_memory* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %95

86:                                               ; preds = %74
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, 1
  %90 = icmp ne i64 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @EFAULT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %91, %86
  br label %95

95:                                               ; preds = %94, %77
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %106

99:                                               ; preds = %95
  %100 = load i64, i64* %9, align 8
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* @PAGE_SIZE, align 8
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %10, align 8
  br label %59

106:                                              ; preds = %98, %73, %59
  br label %107

107:                                              ; preds = %106, %56, %45
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load %struct.mm_struct*, %struct.mm_struct** %109, align 8
  %111 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %110, i32 0, i32 0
  %112 = call i32 @up_read(i32* %111)
  %113 = load i32, i32* %13, align 4
  ret i32 %113
}

declare dso_local i64 @untagged_addr(i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @follow_pfn(%struct.vm_area_struct*, i64, i64*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
