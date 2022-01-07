; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_vidioc_try_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-g2d/extr_g2d.c_vidioc_try_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.g2d_ctx = type { %struct.g2d_dev* }
%struct.g2d_dev = type { i32 }
%struct.g2d_frame = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_COMPOSE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"doesn't support negative values for top & left\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vidioc_try_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.g2d_ctx*, align 8
  %9 = alloca %struct.g2d_dev*, align 8
  %10 = alloca %struct.g2d_frame*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.g2d_ctx*
  store %struct.g2d_ctx* %12, %struct.g2d_ctx** %8, align 8
  %13 = load %struct.g2d_ctx*, %struct.g2d_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.g2d_ctx, %struct.g2d_ctx* %13, i32 0, i32 0
  %15 = load %struct.g2d_dev*, %struct.g2d_dev** %14, align 8
  store %struct.g2d_dev* %15, %struct.g2d_dev** %9, align 8
  %16 = load %struct.g2d_ctx*, %struct.g2d_ctx** %8, align 8
  %17 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.g2d_frame* @get_frame(%struct.g2d_ctx* %16, i32 %19)
  store %struct.g2d_frame* %20, %struct.g2d_frame** %10, align 8
  %21 = load %struct.g2d_frame*, %struct.g2d_frame** %10, align 8
  %22 = call i64 @IS_ERR(%struct.g2d_frame* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.g2d_frame*, %struct.g2d_frame** %10, align 8
  %26 = call i32 @PTR_ERR(%struct.g2d_frame* %25)
  store i32 %26, i32* %4, align 4
  br label %79

27:                                               ; preds = %3
  %28 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %79

42:                                               ; preds = %33
  br label %60

43:                                               ; preds = %27
  %44 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %79

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %43
  br label %60

60:                                               ; preds = %59, %42
  %61 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66, %60
  %73 = load %struct.g2d_dev*, %struct.g2d_dev** %9, align 8
  %74 = getelementptr inbounds %struct.g2d_dev, %struct.g2d_dev* %73, i32 0, i32 0
  %75 = call i32 @v4l2_err(i32* %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %79

78:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %72, %55, %39, %24
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.g2d_frame* @get_frame(%struct.g2d_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.g2d_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.g2d_frame*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
