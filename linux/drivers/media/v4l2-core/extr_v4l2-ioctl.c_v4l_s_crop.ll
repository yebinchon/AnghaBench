; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_crop.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file*, i8*, i8*)* @v4l_s_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_s_crop(%struct.v4l2_ioctl_ops* %0, %struct.file* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.v4l2_ioctl_ops*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.v4l2_crop*, align 8
  %11 = alloca %struct.v4l2_selection, align 8
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = call %struct.video_device* @video_devdata(%struct.file* %12)
  store %struct.video_device* %13, %struct.video_device** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.v4l2_crop*
  store %struct.v4l2_crop* %15, %struct.v4l2_crop** %10, align 8
  %16 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 1
  %18 = load %struct.v4l2_crop*, %struct.v4l2_crop** %10, align 8
  %19 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 8
  %21 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 2
  %22 = load %struct.v4l2_crop*, %struct.v4l2_crop** %10, align 8
  %23 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = load %struct.v4l2_crop*, %struct.v4l2_crop** %10, align 8
  %26 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  %32 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  br label %36

33:                                               ; preds = %4
  %34 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %35 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @V4L2_FL_QUIRK_INVERTED_CROP, align 4
  %38 = load %struct.video_device*, %struct.video_device** %9, align 8
  %39 = getelementptr inbounds %struct.video_device, %struct.video_device* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  br label %51

49:                                               ; preds = %42
  %50 = load i64, i64* @V4L2_SEL_TGT_COMPOSE, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i64 [ %48, %47 ], [ %50, %49 ]
  %53 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %11, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %36
  %55 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %5, align 8
  %56 = load %struct.file*, %struct.file** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @v4l_s_selection(%struct.v4l2_ioctl_ops* %55, %struct.file* %56, i8* %57, %struct.v4l2_selection* %11)
  ret i32 %58
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @v4l_s_selection(%struct.v4l2_ioctl_ops*, %struct.file*, i8*, %struct.v4l2_selection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
