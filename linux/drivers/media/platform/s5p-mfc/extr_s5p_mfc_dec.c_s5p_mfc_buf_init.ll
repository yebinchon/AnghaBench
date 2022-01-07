; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_buf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_buf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, %struct.vb2_queue* }
%struct.vb2_queue = type { i64, i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.s5p_mfc_ctx = type { i64, i64, i64, i64, i32, %struct.TYPE_12__*, i32, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.vb2_v4l2_buffer* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.vb2_v4l2_buffer* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@QUEUE_BUFS_MMAPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Plane mem not allocated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Plane buffer (CAPTURE) is too small\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Plane memory not allocated\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Plane buffer (OUTPUT) is too small\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"s5p_mfc_buf_init: unknown queue type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @s5p_mfc_buf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_buf_init(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca %struct.s5p_mfc_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %9 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %8)
  store %struct.vb2_v4l2_buffer* %9, %struct.vb2_v4l2_buffer** %4, align 8
  %10 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %10, i32 0, i32 1
  %12 = load %struct.vb2_queue*, %struct.vb2_queue** %11, align 8
  store %struct.vb2_queue* %12, %struct.vb2_queue** %5, align 8
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %14 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i32 %15)
  store %struct.s5p_mfc_ctx* %16, %struct.s5p_mfc_ctx** %6, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %109

22:                                               ; preds = %1
  %23 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @QUEUE_BUFS_MMAPED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %168

29:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %50, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %32, i32 0, i32 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %31, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %30
  %39 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %39, i32 %40)
  %42 = call i32 @ERR_PTR(i8* %41)
  %43 = call i64 @IS_ERR_OR_NULL(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = call i32 @mfc_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %168

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %55 = call i64 @vb2_plane_size(%struct.vb2_buffer* %54, i32 0)
  %56 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %62 = call i64 @vb2_plane_size(%struct.vb2_buffer* %61, i32 1)
  %63 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %64 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %60, %53
  %68 = call i32 @mfc_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %168

71:                                               ; preds = %60
  %72 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %73 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %7, align 4
  %75 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %76 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %77 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %76, i32 0, i32 7
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store %struct.vb2_v4l2_buffer* %75, %struct.vb2_v4l2_buffer** %82, align 8
  %83 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %84 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %83, i32 0)
  %85 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %86 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %85, i32 0, i32 7
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i8* %84, i8** %93, align 8
  %94 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %95 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %94, i32 1)
  %96 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %97 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %96, i32 0, i32 7
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i8* %95, i8** %104, align 8
  %105 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %106 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  br label %167

109:                                              ; preds = %1
  %110 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %111 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %162

115:                                              ; preds = %109
  %116 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %117 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %116, i32 0)
  %118 = call i32 @ERR_PTR(i8* %117)
  %119 = call i64 @IS_ERR_OR_NULL(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = call i32 @mfc_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %168

125:                                              ; preds = %115
  %126 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %127 = call i64 @vb2_plane_size(%struct.vb2_buffer* %126, i32 0)
  %128 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %129 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %127, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = call i32 @mfc_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %168

136:                                              ; preds = %125
  %137 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %138 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %7, align 4
  %140 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %141 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %142 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %141, i32 0, i32 5
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  store %struct.vb2_v4l2_buffer* %140, %struct.vb2_v4l2_buffer** %147, align 8
  %148 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %149 = call i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %148, i32 0)
  %150 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %151 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %150, i32 0, i32 5
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  store i8* %149, i8** %157, align 8
  %158 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %6, align 8
  %159 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 8
  br label %166

162:                                              ; preds = %109
  %163 = call i32 @mfc_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %2, align 4
  br label %168

166:                                              ; preds = %136
  br label %167

167:                                              ; preds = %166, %71
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %167, %162, %132, %121, %67, %45, %28
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @ERR_PTR(i8*) #1

declare dso_local i8* @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
