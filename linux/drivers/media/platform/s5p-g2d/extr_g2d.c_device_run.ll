; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_ctx = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, %struct.TYPE_7__, %struct.g2d_dev* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.g2d_dev = type { i32, %struct.TYPE_8__*, i32, %struct.g2d_ctx* }
%struct.TYPE_8__ = type { i64 }
%struct.vb2_v4l2_buffer = type { i32 }

@TYPE_G2D_3X = common dso_local global i64 0, align 8
@CMD_V3_ENABLE_STRETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.g2d_ctx*, align 8
  %4 = alloca %struct.g2d_dev*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.g2d_ctx*
  store %struct.g2d_ctx* %10, %struct.g2d_ctx** %3, align 8
  %11 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %11, i32 0, i32 5
  %13 = load %struct.g2d_dev*, %struct.g2d_dev** %12, align 8
  store %struct.g2d_dev* %13, %struct.g2d_dev** %4, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %15 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %16 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %15, i32 0, i32 3
  store %struct.g2d_ctx* %14, %struct.g2d_ctx** %16, align 8
  %17 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %20)
  store %struct.vb2_v4l2_buffer* %21, %struct.vb2_v4l2_buffer** %5, align 8
  %22 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %25)
  store %struct.vb2_v4l2_buffer* %26, %struct.vb2_v4l2_buffer** %6, align 8
  %27 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %28 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @clk_enable(i32 %29)
  %31 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %32 = call i32 @g2d_reset(%struct.g2d_dev* %31)
  %33 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %34 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %38 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %38, i32 0, i32 1
  %40 = call i32 @g2d_set_src_size(%struct.g2d_dev* %37, %struct.TYPE_9__* %39)
  %41 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %42 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %42, i32 0, i32 0
  %44 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %43, i32 0)
  %45 = call i32 @g2d_set_src_addr(%struct.g2d_dev* %41, i32 %44)
  %46 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %47 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %47, i32 0, i32 0
  %49 = call i32 @g2d_set_dst_size(%struct.g2d_dev* %46, %struct.TYPE_10__* %48)
  %50 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %51 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %52 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %51, i32 0, i32 0
  %53 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %52, i32 0)
  %54 = call i32 @g2d_set_dst_addr(%struct.g2d_dev* %50, i32 %53)
  %55 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %56 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @g2d_set_rop4(%struct.g2d_dev* %55, i32 %58)
  %60 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %61 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @g2d_set_flip(%struct.g2d_dev* %60, i32 %63)
  %65 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %68, %72
  br i1 %73, label %84, label %74

74:                                               ; preds = %1
  %75 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %78, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %74, %1
  %85 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %86 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TYPE_G2D_3X, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i32, i32* @CMD_V3_ENABLE_STRETCH, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %103

96:                                               ; preds = %84
  %97 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %98 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %99 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %98, i32 0, i32 1
  %100 = load %struct.g2d_ctx*, %struct.g2d_ctx** %3, align 8
  %101 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %100, i32 0, i32 0
  %102 = call i32 @g2d_set_v41_stretch(%struct.g2d_dev* %97, %struct.TYPE_9__* %99, %struct.TYPE_10__* %101)
  br label %103

103:                                              ; preds = %96, %92
  br label %104

104:                                              ; preds = %103, %74
  %105 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @g2d_set_cmd(%struct.g2d_dev* %105, i32 %106)
  %108 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %109 = call i32 @g2d_start(%struct.g2d_dev* %108)
  %110 = load %struct.g2d_dev*, %struct.g2d_dev** %4, align 8
  %111 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %110, i32 0, i32 0
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @g2d_reset(%struct.g2d_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @g2d_set_src_size(%struct.g2d_dev*, %struct.TYPE_9__*) #1

declare dso_local i32 @g2d_set_src_addr(%struct.g2d_dev*, i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @g2d_set_dst_size(%struct.g2d_dev*, %struct.TYPE_10__*) #1

declare dso_local i32 @g2d_set_dst_addr(%struct.g2d_dev*, i32) #1

declare dso_local i32 @g2d_set_rop4(%struct.g2d_dev*, i32) #1

declare dso_local i32 @g2d_set_flip(%struct.g2d_dev*, i32) #1

declare dso_local i32 @g2d_set_v41_stretch(%struct.g2d_dev*, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @g2d_set_cmd(%struct.g2d_dev*, i32) #1

declare dso_local i32 @g2d_start(%struct.g2d_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
