; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-v4l2.c_bdisp_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bdisp_ctx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bdisp_frame = type { i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid frame (%p)\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@bdisp_dflt_fmt = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @bdisp_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_g_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.bdisp_ctx*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.bdisp_frame*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.bdisp_ctx* @fh_to_ctx(i8* %11)
  store %struct.bdisp_ctx* %12, %struct.bdisp_ctx** %8, align 8
  %13 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.bdisp_frame* @ctx_get_frame(%struct.bdisp_ctx* %13, i32 %16)
  store %struct.bdisp_frame* %17, %struct.bdisp_frame** %10, align 8
  %18 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %19 = call i64 @IS_ERR(%struct.bdisp_frame* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.bdisp_frame* %27)
  %29 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %30 = call i32 @PTR_ERR(%struct.bdisp_frame* %29)
  store i32 %30, i32* %4, align 4
  br label %82

31:                                               ; preds = %3
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store %struct.v4l2_pix_format* %34, %struct.v4l2_pix_format** %9, align 8
  %35 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %36 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %41 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %46 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %45, i32 0, i32 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %53 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %58 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %61 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %63 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %31
  %73 = load %struct.bdisp_frame*, %struct.bdisp_frame** %10, align 8
  %74 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  br label %78

76:                                               ; preds = %31
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bdisp_dflt_fmt, i32 0, i32 0), align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi i32 [ %75, %72 ], [ %77, %76 ]
  %80 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %81 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %21
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.bdisp_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.bdisp_frame* @ctx_get_frame(%struct.bdisp_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bdisp_frame*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.bdisp_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.bdisp_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
