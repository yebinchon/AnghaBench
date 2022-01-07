; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_g_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_g_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 }
%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.v4l2_crop = type { i32, i32 }
%struct.v4l2_selection = type { i64, i32, i32 }

@V4L2_SEL_TGT_COMPOSE = common dso_local global i64 0, align 8
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@V4L2_FL_QUIRK_INVERTED_CROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file*, i8*, i8*)* @v4l_g_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_g_crop(%struct.v4l2_ioctl_ops* %0, %struct.file* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.v4l2_ioctl_ops*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.v4l2_crop*, align 8
  %11 = alloca %struct.v4l2_selection, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = call %struct.video_device* @video_devdata(%struct.file* %13)
  store %struct.video_device* %14, %struct.video_device** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.v4l2_crop*
  store %struct.v4l2_crop* %16, %struct.v4l2_crop** %10, align 8
  %17 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 2
  %20 = load %struct.v4l2_crop*, %struct.v4l2_crop** %10, align 8
  %21 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = load %struct.v4l2_crop*, %struct.v4l2_crop** %10, align 8
  %24 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  %30 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  br label %34

31:                                               ; preds = %4
  %32 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %33 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @V4L2_FL_QUIRK_INVERTED_CROP, align 4
  %36 = load %struct.video_device*, %struct.video_device** %9, align 8
  %37 = getelementptr inbounds %struct.video_device, %struct.video_device* %36, i32 0, i32 0
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  br label %49

47:                                               ; preds = %40
  %48 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  %51 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %34
  %53 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %5, align 8
  %54 = load %struct.file*, %struct.file** %6, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @v4l_g_selection(%struct.v4l2_ioctl_ops* %53, %struct.file* %54, i8* %55, %struct.v4l2_selection* %11)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.v4l2_crop*, %struct.v4l2_crop** %10, align 8
  %63 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %52
  %65 = load i32, i32* %12, align 4
  ret i32 %65
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @v4l_g_selection(%struct.v4l2_ioctl_ops*, %struct.file*, i8*, %struct.v4l2_selection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
