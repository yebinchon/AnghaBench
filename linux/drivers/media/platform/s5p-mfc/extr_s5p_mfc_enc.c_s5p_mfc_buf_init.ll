; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_buf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_buf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, %struct.vb2_queue* }
%struct.vb2_queue = type { i64, i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.s5p_mfc_ctx = type { i32, %struct.TYPE_10__*, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.vb2_v4l2_buffer* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.vb2_v4l2_buffer* }
%struct.TYPE_6__ = type { i8* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"invalid queue type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @s5p_mfc_buf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_buf_init(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca %struct.s5p_mfc_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %10 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %9)
  store %struct.vb2_v4l2_buffer* %10, %struct.vb2_v4l2_buffer** %4, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 1
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %12, align 8
  store %struct.vb2_queue* %13, %struct.vb2_queue** %5, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %15 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i32 %16)
  store %struct.s5p_mfc_ctx* %17, %struct.s5p_mfc_ctx** %6, align 8
  %18 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %19 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %1
  %24 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %28 = call i32 @check_vb_with_fmt(i32 %26, %struct.vb2_buffer* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %122

33:                                               ; preds = %23
  %34 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %35 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %38 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %38, i32 0, i32 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store %struct.vb2_v4l2_buffer* %37, %struct.vb2_v4l2_buffer** %44, align 8
  %45 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %46 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %45, i32 0)
  %47 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %47, i32 0, i32 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i8* %46, i8** %54, align 8
  %55 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %121

59:                                               ; preds = %1
  %60 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %61 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %113

65:                                               ; preds = %59
  %66 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %67 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %70 = call i32 @check_vb_with_fmt(i32 %68, %struct.vb2_buffer* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %122

75:                                               ; preds = %65
  %76 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %77 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %7, align 4
  %79 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %80 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %81 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  store %struct.vb2_v4l2_buffer* %79, %struct.vb2_v4l2_buffer** %86, align 8
  %87 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %88 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %87, i32 0)
  %89 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i8* %88, i8** %97, align 8
  %98 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %99 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %98, i32 1)
  %100 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %101 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %100, i32 0, i32 1
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i8* %99, i8** %108, align 8
  %109 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %110 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %120

113:                                              ; preds = %59
  %114 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %115 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @mfc_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %116)
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %122

120:                                              ; preds = %75
  br label %121

121:                                              ; preds = %120, %33
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %113, %73, %31
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i32) #1

declare dso_local i32 @check_vb_with_fmt(i32, %struct.vb2_buffer*) #1

declare dso_local i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @mfc_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
