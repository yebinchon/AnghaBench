; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c___videobuf_mmap_mapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c___videobuf_mmap_mapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.videobuf_buffer** }
%struct.videobuf_buffer = type { i32, i64, %struct.videobuf_mapping*, %struct.videobuf_dma_sg_memory* }
%struct.videobuf_mapping = type { i32, %struct.videobuf_queue* }
%struct.videobuf_dma_sg_memory = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, i32, %struct.videobuf_mapping*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@MAGIC_SG_MEM = common dso_local global i32 0, align 4
@VIDEO_MAX_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"mmap app bug: offset invalid [offset=0x%lx]\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@videobuf_vm_ops = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"mmap %p: q=%p %08lx-%08lx pgoff %08lx bufs %d-%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, %struct.vm_area_struct*)* @__videobuf_mmap_mapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__videobuf_mmap_mapper(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca %struct.videobuf_buffer*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.videobuf_dma_sg_memory*, align 8
  %8 = alloca %struct.videobuf_mapping*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %5, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %6, align 8
  %14 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %14, i32 0, i32 3
  %16 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %15, align 8
  store %struct.videobuf_dma_sg_memory* %16, %struct.videobuf_dma_sg_memory** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %7, align 8
  %20 = icmp ne %struct.videobuf_dma_sg_memory* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %7, align 8
  %25 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MAGIC_SG_MEM, align 4
  %28 = call i32 @MAGIC_CHECK(i32 %26, i32 %27)
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %55, %3
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @VIDEO_MAX_FRAME, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  %35 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %36 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %35, i32 0, i32 0
  %37 = load %struct.videobuf_buffer**, %struct.videobuf_buffer*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.videobuf_buffer*, %struct.videobuf_buffer** %37, i64 %39
  %41 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %40, align 8
  %42 = icmp eq %struct.videobuf_buffer* %34, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %45 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %44, i32 0, i32 0
  %46 = load %struct.videobuf_buffer**, %struct.videobuf_buffer*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.videobuf_buffer*, %struct.videobuf_buffer** %46, i64 %48
  %50 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %49, align 8
  %51 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PAGE_ALIGN(i32 %52)
  store i32 %53, i32* %11, align 4
  br label %58

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %29

58:                                               ; preds = %43, %29
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %170

68:                                               ; preds = %58
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.videobuf_mapping* @kmalloc(i32 16, i32 %72)
  store %struct.videobuf_mapping* %73, %struct.videobuf_mapping** %8, align 8
  %74 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %8, align 8
  %75 = icmp eq %struct.videobuf_mapping* null, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %170

77:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %129, %77
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ule i32 %80, %81
  br i1 %82, label %83, label %132

83:                                               ; preds = %79
  %84 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %85 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %84, i32 0, i32 0
  %86 = load %struct.videobuf_buffer**, %struct.videobuf_buffer*** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.videobuf_buffer*, %struct.videobuf_buffer** %86, i64 %88
  %90 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %89, align 8
  %91 = icmp eq %struct.videobuf_buffer* null, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  br label %129

93:                                               ; preds = %83
  %94 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %8, align 8
  %95 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %96 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %95, i32 0, i32 0
  %97 = load %struct.videobuf_buffer**, %struct.videobuf_buffer*** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.videobuf_buffer*, %struct.videobuf_buffer** %97, i64 %99
  %101 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %100, align 8
  %102 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %101, i32 0, i32 2
  store %struct.videobuf_mapping* %94, %struct.videobuf_mapping** %102, align 8
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %104 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add i32 %105, %106
  %108 = zext i32 %107 to i64
  %109 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %110 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %109, i32 0, i32 0
  %111 = load %struct.videobuf_buffer**, %struct.videobuf_buffer*** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.videobuf_buffer*, %struct.videobuf_buffer** %111, i64 %113
  %115 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %114, align 8
  %116 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %115, i32 0, i32 1
  store i64 %108, i64* %116, align 8
  %117 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %118 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %117, i32 0, i32 0
  %119 = load %struct.videobuf_buffer**, %struct.videobuf_buffer*** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.videobuf_buffer*, %struct.videobuf_buffer** %119, i64 %121
  %123 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %122, align 8
  %124 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @PAGE_ALIGN(i32 %125)
  %127 = load i32, i32* %11, align 4
  %128 = add i32 %127, %126
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %93, %92
  %130 = load i32, i32* %12, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %79

132:                                              ; preds = %79
  %133 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %8, align 8
  %134 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %136 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %8, align 8
  %137 = getelementptr inbounds %struct.videobuf_mapping, %struct.videobuf_mapping* %136, i32 0, i32 1
  store %struct.videobuf_queue* %135, %struct.videobuf_queue** %137, align 8
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %139 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %138, i32 0, i32 5
  store i32* @videobuf_vm_ops, i32** %139, align 8
  %140 = load i32, i32* @VM_DONTEXPAND, align 4
  %141 = load i32, i32* @VM_DONTDUMP, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %144 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* @VM_IO, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %150 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %8, align 8
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %155 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %154, i32 0, i32 4
  store %struct.videobuf_mapping* %153, %struct.videobuf_mapping** %155, align 8
  %156 = load %struct.videobuf_mapping*, %struct.videobuf_mapping** %8, align 8
  %157 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %158 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %159 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %162 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %165 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %10, align 4
  %169 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %struct.videobuf_mapping* %156, %struct.videobuf_queue* %157, i32 %160, i32 %163, i32 %166, i32 %167, i32 %168)
  store i32 0, i32* %13, align 4
  br label %170

170:                                              ; preds = %132, %76, %61
  %171 = load i32, i32* %13, align 4
  ret i32 %171
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local %struct.videobuf_mapping* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
