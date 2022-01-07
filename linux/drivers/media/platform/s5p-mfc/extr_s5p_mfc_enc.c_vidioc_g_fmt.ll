; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_vidioc_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_vidioc_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { %struct.TYPE_8__*, i32, i32, i8*, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.s5p_mfc_ctx = type { i32, i32, i32, %struct.TYPE_7__*, i64, i64, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"f->type = %d ctx->state = %d\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i8* null, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid buf type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.s5p_mfc_ctx*, align 8
  %9 = alloca %struct.v4l2_pix_format_mplane*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.s5p_mfc_ctx* @fh_to_ctx(i8* %10)
  store %struct.s5p_mfc_ctx* %11, %struct.s5p_mfc_ctx** %8, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %14, %struct.v4l2_pix_format_mplane** %9, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %20)
  %22 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %3
  %28 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %31 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load i8*, i8** @V4L2_FIELD_NONE, align 8
  %33 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %35, i32 0, i32 7
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %42, i32 0, i32 7
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store i32 %51, i32* %56, align 4
  %57 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 4
  br label %136

65:                                               ; preds = %3
  %66 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %131

71:                                               ; preds = %65
  %72 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %73 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %75, i32 0, i32 5
  store i64 %74, i64* %76, align 8
  %77 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %81 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load i8*, i8** @V4L2_FIELD_NONE, align 8
  %83 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %84 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %86 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %85, i32 0, i32 3
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %93 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %92, i32 0, i32 3
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %98 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %100 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %103 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  store i32 %101, i32* %106, align 4
  %107 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %108 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %111 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i32 %109, i32* %114, align 4
  %115 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %116 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %119 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32 %117, i32* %122, align 4
  %123 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %8, align 8
  %124 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %127 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i32 %125, i32* %130, align 4
  br label %135

131:                                              ; preds = %65
  %132 = call i32 @mfc_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %137

135:                                              ; preds = %71
  br label %136

136:                                              ; preds = %135, %27
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %131
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.s5p_mfc_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @mfc_debug(i32, i8*, i64, i32) #1

declare dso_local i32 @mfc_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
