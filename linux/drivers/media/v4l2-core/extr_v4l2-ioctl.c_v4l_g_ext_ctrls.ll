; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_g_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_g_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* }
%struct.file = type opaque
%struct.v4l2_ext_controls = type opaque
%struct.file.0 = type { i32 }
%struct.video_device = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_ext_controls.1 = type { i32, i32 }
%struct.v4l2_fh = type { i64 }

@V4L2_FL_USES_V4L2_FH = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.0*, i8*, i8*)* @v4l_g_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_g_ext_ctrls(%struct.v4l2_ioctl_ops* %0, %struct.file.0* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ioctl_ops*, align 8
  %7 = alloca %struct.file.0*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca %struct.v4l2_ext_controls.1*, align 8
  %12 = alloca %struct.v4l2_fh*, align 8
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %6, align 8
  store %struct.file.0* %1, %struct.file.0** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.file.0*, %struct.file.0** %7, align 8
  %14 = call %struct.video_device* @video_devdata(%struct.file.0* %13)
  store %struct.video_device* %14, %struct.video_device** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.v4l2_ext_controls.1*
  store %struct.v4l2_ext_controls.1* %16, %struct.v4l2_ext_controls.1** %11, align 8
  %17 = load i32, i32* @V4L2_FL_USES_V4L2_FH, align 4
  %18 = load %struct.video_device*, %struct.video_device** %10, align 8
  %19 = getelementptr inbounds %struct.video_device, %struct.video_device* %18, i32 0, i32 2
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
  %28 = load %struct.v4l2_ext_controls.1*, %struct.v4l2_ext_controls.1** %11, align 8
  %29 = getelementptr inbounds %struct.v4l2_ext_controls.1, %struct.v4l2_ext_controls.1* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_ext_controls.1*, %struct.v4l2_ext_controls.1** %11, align 8
  %32 = getelementptr inbounds %struct.v4l2_ext_controls.1, %struct.v4l2_ext_controls.1* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  %34 = icmp ne %struct.v4l2_fh* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %25
  %36 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  %37 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  %42 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.video_device*, %struct.video_device** %10, align 8
  %45 = load %struct.video_device*, %struct.video_device** %10, align 8
  %46 = getelementptr inbounds %struct.video_device, %struct.video_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_ext_controls.1*, %struct.v4l2_ext_controls.1** %11, align 8
  %51 = call i32 @v4l2_g_ext_ctrls(i64 %43, %struct.video_device* %44, i32 %49, %struct.v4l2_ext_controls.1* %50)
  store i32 %51, i32* %5, align 4
  br label %96

52:                                               ; preds = %35, %25
  %53 = load %struct.video_device*, %struct.video_device** %10, align 8
  %54 = getelementptr inbounds %struct.video_device, %struct.video_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load %struct.video_device*, %struct.video_device** %10, align 8
  %59 = getelementptr inbounds %struct.video_device, %struct.video_device* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.video_device*, %struct.video_device** %10, align 8
  %62 = load %struct.video_device*, %struct.video_device** %10, align 8
  %63 = getelementptr inbounds %struct.video_device, %struct.video_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_ext_controls.1*, %struct.v4l2_ext_controls.1** %11, align 8
  %68 = call i32 @v4l2_g_ext_ctrls(i64 %60, %struct.video_device* %61, i32 %66, %struct.v4l2_ext_controls.1* %67)
  store i32 %68, i32* %5, align 4
  br label %96

69:                                               ; preds = %52
  %70 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %70, i32 0, i32 0
  %72 = load i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)*, i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)** %71, align 8
  %73 = icmp eq i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOTTY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %96

77:                                               ; preds = %69
  %78 = load %struct.v4l2_ext_controls.1*, %struct.v4l2_ext_controls.1** %11, align 8
  %79 = call i64 @check_ext_ctrls(%struct.v4l2_ext_controls.1* %78, i32 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %83 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %82, i32 0, i32 0
  %84 = load i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)*, i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)** %83, align 8
  %85 = load %struct.file.0*, %struct.file.0** %7, align 8
  %86 = bitcast %struct.file.0* %85 to %struct.file*
  %87 = load i8*, i8** %8, align 8
  %88 = load %struct.v4l2_ext_controls.1*, %struct.v4l2_ext_controls.1** %11, align 8
  %89 = bitcast %struct.v4l2_ext_controls.1* %88 to %struct.v4l2_ext_controls*
  %90 = call i32 %84(%struct.file* %86, i8* %87, %struct.v4l2_ext_controls* %89)
  br label %94

91:                                               ; preds = %77
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  br label %94

94:                                               ; preds = %91, %81
  %95 = phi i32 [ %90, %81 ], [ %93, %91 ]
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %74, %57, %40
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.video_device* @video_devdata(%struct.file.0*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @v4l2_g_ext_ctrls(i64, %struct.video_device*, i32, %struct.v4l2_ext_controls.1*) #1

declare dso_local i64 @check_ext_ctrls(%struct.v4l2_ext_controls.1*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
