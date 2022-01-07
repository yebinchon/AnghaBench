; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bdisp_ctx = type { %struct.TYPE_7__*, %struct.bdisp_frame, %struct.bdisp_frame, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.bdisp_frame = type { %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.vb2_queue = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Cannot set format\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"queue (%d) busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Unknown format 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BDISP_PARAMS = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@BDISP_DST_FMT = common dso_local global i32 0, align 4
@BDISP_SRC_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @bdisp_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_s_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.bdisp_ctx*, align 8
  %9 = alloca %struct.vb2_queue*, align 8
  %10 = alloca %struct.bdisp_frame*, align 8
  %11 = alloca %struct.v4l2_pix_format*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.bdisp_ctx* @fh_to_ctx(i8* %14)
  store %struct.bdisp_ctx* %15, %struct.bdisp_ctx** %8, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = call i32 @bdisp_try_fmt(%struct.file* %16, i8* %17, %struct.v4l2_format* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %4, align 4
  br label %166

30:                                               ; preds = %3
  %31 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %34, i32 %37)
  store %struct.vb2_queue* %38, %struct.vb2_queue** %9, align 8
  %39 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %40 = call i64 @vb2_is_streaming(%struct.vb2_queue* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %30
  %43 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %166

54:                                               ; preds = %30
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %62 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %61, i32 0, i32 2
  br label %66

63:                                               ; preds = %54
  %64 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %64, i32 0, i32 1
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi %struct.bdisp_frame* [ %62, %60 ], [ %65, %63 ]
  store %struct.bdisp_frame* %67, %struct.bdisp_frame** %10, align 8
  %68 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store %struct.v4l2_pix_format* %70, %struct.v4l2_pix_format** %11, align 8
  %71 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %72 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @bdisp_find_fmt(i32 %73)
  %75 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %76 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 8
  %77 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %78 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %66
  %82 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %83 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %88 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %166

93:                                               ; preds = %66
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %98 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %100 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %103 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %105 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %108 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 4
  %109 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %110 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %113 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  %114 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %118 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 4
  %119 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %120 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %93
  %125 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %126 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %129 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %124, %93
  %131 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %132 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %135 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  store i32 %133, i32* %136, align 4
  %137 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %138 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %141 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  store i32 %139, i32* %142, align 8
  %143 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %144 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  store i64 0, i64* %145, align 8
  %146 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %147 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = load i32, i32* @BDISP_PARAMS, align 4
  store i32 %149, i32* %13, align 4
  %150 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %151 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %130
  %156 = load i32, i32* @BDISP_DST_FMT, align 4
  br label %159

157:                                              ; preds = %130
  %158 = load i32, i32* @BDISP_SRC_FMT, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i32 [ %156, %155 ], [ %158, %157 ]
  %161 = load i32, i32* %13, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %165 = call i32 @bdisp_ctx_state_lock_set(i32 %163, %struct.bdisp_ctx* %164)
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %159, %81, %42, %22
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local %struct.bdisp_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @bdisp_try_fmt(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_streaming(%struct.vb2_queue*) #1

declare dso_local i32 @bdisp_find_fmt(i32) #1

declare dso_local i32 @bdisp_ctx_state_lock_set(i32, %struct.bdisp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
