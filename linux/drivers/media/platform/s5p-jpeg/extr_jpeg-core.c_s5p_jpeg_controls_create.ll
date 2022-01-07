; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_controls_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_controls_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { i64, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.v4l2_ctrl = type { i32 }

@S5P_JPEG_ENCODE = common dso_local global i64 0, align 8
@s5p_jpeg_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_JPEG_COMPRESSION_QUALITY = common dso_local global i32 0, align 4
@S5P_JPEG_COMPR_QUAL_WORST = common dso_local global i32 0, align 4
@V4L2_CID_JPEG_RESTART_INTERVAL = common dso_local global i32 0, align 4
@SJPEG_S5P = common dso_local global i64 0, align 8
@V4L2_CID_JPEG_CHROMA_SUBSAMPLING = common dso_local global i32 0, align 4
@V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY = common dso_local global i32 0, align 4
@V4L2_JPEG_CHROMA_SUBSAMPLING_422 = common dso_local global i32 0, align 4
@S5P_JPEG_DECODE = common dso_local global i64 0, align 8
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_jpeg_ctx*)* @s5p_jpeg_controls_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_jpeg_controls_create(%struct.s5p_jpeg_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_jpeg_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %3, align 8
  store i32 -40, i32* %4, align 4
  %7 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %7, i32 0, i32 1
  %9 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__* %8, i32 3)
  %10 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @S5P_JPEG_ENCODE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* @V4L2_CID_JPEG_COMPRESSION_QUALITY, align 4
  %19 = load i32, i32* @S5P_JPEG_COMPR_QUAL_WORST, align 4
  %20 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %17, i32* @s5p_jpeg_ctrl_ops, i32 %18, i32 0, i32 3, i32 1, i32 %19)
  %21 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* @V4L2_CID_JPEG_RESTART_INTERVAL, align 4
  %24 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_10__* %22, i32* @s5p_jpeg_ctrl_ops, i32 %23, i32 0, i32 65535, i32 1, i32 0)
  %25 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SJPEG_S5P, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  store i32 -7, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %15
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* @V4L2_CID_JPEG_CHROMA_SUBSAMPLING, align 4
  %40 = load i32, i32* @V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @V4L2_JPEG_CHROMA_SUBSAMPLING_422, align 4
  %43 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std_menu(%struct.TYPE_10__* %38, i32* @s5p_jpeg_ctrl_ops, i32 %39, i32 %40, i32 %41, i32 %42)
  store %struct.v4l2_ctrl* %43, %struct.v4l2_ctrl** %5, align 8
  %44 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %6, align 4
  br label %77

54:                                               ; preds = %36
  %55 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @S5P_JPEG_DECODE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %62 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %60, %54
  %69 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %69, i32 0, i32 1
  %71 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_10__* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %82

77:                                               ; preds = %74, %49
  %78 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %3, align 8
  %79 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %78, i32 0, i32 1
  %80 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__* %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %75
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std_menu(%struct.TYPE_10__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_10__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
