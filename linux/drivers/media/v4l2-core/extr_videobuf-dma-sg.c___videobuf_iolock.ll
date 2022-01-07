; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c___videobuf_iolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c___videobuf_iolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i64 }
%struct.videobuf_buffer = type { i32, i32, i64, i32, i32, %struct.videobuf_dma_sg_memory* }
%struct.videobuf_dma_sg_memory = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.v4l2_framebuffer = type { i64 }

@MAGIC_SG_MEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, %struct.videobuf_buffer*, %struct.v4l2_framebuffer*)* @__videobuf_iolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__videobuf_iolock(%struct.videobuf_queue* %0, %struct.videobuf_buffer* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.videobuf_buffer*, align 8
  %7 = alloca %struct.v4l2_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.videobuf_dma_sg_memory*, align 8
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store %struct.videobuf_buffer* %1, %struct.videobuf_buffer** %6, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %7, align 8
  %12 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %13 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %12, i32 0, i32 5
  %14 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %13, align 8
  store %struct.videobuf_dma_sg_memory* %14, %struct.videobuf_dma_sg_memory** %11, align 8
  %15 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %16 = icmp ne %struct.videobuf_dma_sg_memory* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %21 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MAGIC_SG_MEM, align 4
  %24 = call i32 @MAGIC_CHECK(i32 %22, i32 %23)
  %25 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %26 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %3
  %31 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %32 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %35 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  br label %48

37:                                               ; preds = %3
  %38 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %39 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %43 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON(i32 %46)
  br label %48

48:                                               ; preds = %37, %30
  %49 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %144 [
    i32 130, label %52
    i32 128, label %52
    i32 129, label %113
  ]

52:                                               ; preds = %48, %48
  %53 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 0, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @PAGE_ALIGN(i32 %60)
  %62 = load i32, i32* @PAGE_SHIFT, align 4
  %63 = ashr i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %65 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %64, i32 0, i32 0
  %66 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @videobuf_dma_init_kernel(%struct.TYPE_6__* %65, i32 %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 0, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %158

73:                                               ; preds = %57
  br label %112

74:                                               ; preds = %52
  %75 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %76 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 128
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %81 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %80, i32 0, i32 0
  %82 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %83 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %84 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %87 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @videobuf_dma_init_user(%struct.TYPE_6__* %81, i32 %82, i32 %85, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 0, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %158

94:                                               ; preds = %79
  br label %111

95:                                               ; preds = %74
  %96 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %97 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %96, i32 0, i32 0
  %98 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %99 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %100 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %103 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @videobuf_dma_init_user_locked(%struct.TYPE_6__* %97, i32 %98, i32 %101, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 0, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %95
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %158

110:                                              ; preds = %95
  br label %111

111:                                              ; preds = %110, %94
  br label %112

112:                                              ; preds = %111, %73
  br label %146

113:                                              ; preds = %48
  %114 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %115 = icmp eq %struct.v4l2_framebuffer* null, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %158

119:                                              ; preds = %113
  %120 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %121 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %124 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  store i64 %126, i64* %10, align 8
  %127 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %6, align 8
  %128 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @PAGE_ALIGN(i32 %129)
  %131 = load i32, i32* @PAGE_SHIFT, align 4
  %132 = ashr i32 %130, %131
  store i32 %132, i32* %9, align 4
  %133 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %134 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %133, i32 0, i32 0
  %135 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %136 = load i64, i64* %10, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @videobuf_dma_init_overlay(%struct.TYPE_6__* %134, i32 %135, i64 %136, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 0, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %119
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %4, align 4
  br label %158

143:                                              ; preds = %119
  br label %146

144:                                              ; preds = %48
  %145 = call i32 (...) @BUG()
  br label %146

146:                                              ; preds = %144, %143, %112
  %147 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %148 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.videobuf_dma_sg_memory*, %struct.videobuf_dma_sg_memory** %11, align 8
  %151 = getelementptr inbounds %struct.videobuf_dma_sg_memory, %struct.videobuf_dma_sg_memory* %150, i32 0, i32 0
  %152 = call i32 @videobuf_dma_map(i64 %149, %struct.TYPE_6__* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 0, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %146
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %4, align 4
  br label %158

157:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %157, %155, %141, %116, %108, %92, %71
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @videobuf_dma_init_kernel(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @videobuf_dma_init_user(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @videobuf_dma_init_user_locked(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @videobuf_dma_init_overlay(%struct.TYPE_6__*, i32, i64, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @videobuf_dma_map(i64, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
