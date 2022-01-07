; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_query_ext_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_query_ext_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_query_ext_ctrl*)* }
%struct.file = type opaque
%struct.v4l2_query_ext_ctrl = type { i32 }
%struct.file.0 = type { i32 }
%struct.video_device = type { i64, i32 }
%struct.v4l2_fh = type { i64 }

@V4L2_FL_USES_V4L2_FH = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.0*, i8*, i8*)* @v4l_query_ext_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_query_ext_ctrl(%struct.v4l2_ioctl_ops* %0, %struct.file.0* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ioctl_ops*, align 8
  %7 = alloca %struct.file.0*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca %struct.v4l2_query_ext_ctrl*, align 8
  %12 = alloca %struct.v4l2_fh*, align 8
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %6, align 8
  store %struct.file.0* %1, %struct.file.0** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.file.0*, %struct.file.0** %7, align 8
  %14 = call %struct.video_device* @video_devdata(%struct.file.0* %13)
  store %struct.video_device* %14, %struct.video_device** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.v4l2_query_ext_ctrl*
  store %struct.v4l2_query_ext_ctrl* %16, %struct.v4l2_query_ext_ctrl** %11, align 8
  %17 = load i32, i32* @V4L2_FL_USES_V4L2_FH, align 4
  %18 = load %struct.video_device*, %struct.video_device** %10, align 8
  %19 = getelementptr inbounds %struct.video_device, %struct.video_device* %18, i32 0, i32 1
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  br label %25

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i8* [ %23, %22 ], [ null, %24 ]
  %27 = bitcast i8* %26 to %struct.v4l2_fh*
  store %struct.v4l2_fh* %27, %struct.v4l2_fh** %12, align 8
  %28 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  %29 = icmp ne %struct.v4l2_fh* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  %32 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  %37 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %11, align 8
  %40 = call i32 @v4l2_query_ext_ctrl(i64 %38, %struct.v4l2_query_ext_ctrl* %39)
  store i32 %40, i32* %5, align 4
  br label %69

41:                                               ; preds = %30, %25
  %42 = load %struct.video_device*, %struct.video_device** %10, align 8
  %43 = getelementptr inbounds %struct.video_device, %struct.video_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.video_device*, %struct.video_device** %10, align 8
  %48 = getelementptr inbounds %struct.video_device, %struct.video_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %11, align 8
  %51 = call i32 @v4l2_query_ext_ctrl(i64 %49, %struct.v4l2_query_ext_ctrl* %50)
  store i32 %51, i32* %5, align 4
  br label %69

52:                                               ; preds = %41
  %53 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %53, i32 0, i32 0
  %55 = load i32 (%struct.file*, i8*, %struct.v4l2_query_ext_ctrl*)*, i32 (%struct.file*, i8*, %struct.v4l2_query_ext_ctrl*)** %54, align 8
  %56 = icmp ne i32 (%struct.file*, i8*, %struct.v4l2_query_ext_ctrl*)* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %58, i32 0, i32 0
  %60 = load i32 (%struct.file*, i8*, %struct.v4l2_query_ext_ctrl*)*, i32 (%struct.file*, i8*, %struct.v4l2_query_ext_ctrl*)** %59, align 8
  %61 = load %struct.file.0*, %struct.file.0** %7, align 8
  %62 = bitcast %struct.file.0* %61 to %struct.file*
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.v4l2_query_ext_ctrl*, %struct.v4l2_query_ext_ctrl** %11, align 8
  %65 = call i32 %60(%struct.file* %62, i8* %63, %struct.v4l2_query_ext_ctrl* %64)
  store i32 %65, i32* %5, align 4
  br label %69

66:                                               ; preds = %52
  %67 = load i32, i32* @ENOTTY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %57, %46, %35
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.video_device* @video_devdata(%struct.file.0*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @v4l2_query_ext_ctrl(i64, %struct.v4l2_query_ext_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
