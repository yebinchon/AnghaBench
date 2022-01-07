; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_ctrls_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_ctrls_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i64, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64*, i64* }

@coda_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@CODA_INST_ENCODER = common dso_local global i64 0, align 8
@V4L2_CID_MIN_BUFFERS_FOR_OUTPUT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@V4L2_CID_MIN_BUFFERS_FOR_CAPTURE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_H264 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"control initialization error (%d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*)* @coda_ctrls_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_ctrls_setup(%struct.coda_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coda_ctx*, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %3, align 8
  %4 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %5 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %4, i32 0, i32 1
  %6 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__* %5, i32 2)
  %7 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %7, i32 0, i32 1
  %9 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %10 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %8, i32* @coda_ctrl_ops, i32 %9, i32 0, i32 1, i32 1, i32 0)
  %11 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %11, i32 0, i32 1
  %13 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %14 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %12, i32* @coda_ctrl_ops, i32 %13, i32 0, i32 1, i32 1, i32 0)
  %15 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CODA_INST_ENCODER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %1
  %21 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* @V4L2_CID_MIN_BUFFERS_FOR_OUTPUT, align 4
  %24 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %22, i32* @coda_ctrl_ops, i32 %23, i32 1, i32 1, i32 1, i32 1)
  %25 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %36 = call i32 @coda_jpeg_encode_ctrls(%struct.coda_ctx* %35)
  br label %40

37:                                               ; preds = %20
  %38 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %39 = call i32 @coda_encode_ctrls(%struct.coda_ctx* %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %59

41:                                               ; preds = %1
  %42 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* @V4L2_CID_MIN_BUFFERS_FOR_CAPTURE, align 4
  %45 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_8__* %43, i32* @coda_ctrl_ops, i32 %44, i32 1, i32 1, i32 1, i32 1)
  %46 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %46, i32 0, i32 3
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %57 = call i32 @coda_decode_ctrls(%struct.coda_ctx* %56)
  br label %58

58:                                               ; preds = %55, %41
  br label %59

59:                                               ; preds = %58, %40
  %60 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @v4l2_err(i32* %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %81

77:                                               ; preds = %59
  %78 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %79 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %78, i32 0, i32 1
  %80 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_8__* %79)
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %65
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_8__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @coda_jpeg_encode_ctrls(%struct.coda_ctx*) #1

declare dso_local i32 @coda_encode_ctrls(%struct.coda_ctx*) #1

declare dso_local i32 @coda_decode_ctrls(%struct.coda_ctx*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i64) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
