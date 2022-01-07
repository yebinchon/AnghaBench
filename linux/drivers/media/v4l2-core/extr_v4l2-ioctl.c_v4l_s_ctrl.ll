; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_control*)*, i32 (%struct.file.0*, i8*, %struct.v4l2_ext_controls*)* }
%struct.file = type opaque
%struct.v4l2_control = type opaque
%struct.file.0 = type opaque
%struct.v4l2_ext_controls = type opaque
%struct.file.1 = type { i32 }
%struct.video_device = type { i64, i32 }
%struct.v4l2_control.2 = type { i32, i32 }
%struct.v4l2_fh = type { i64 }
%struct.v4l2_ext_controls.3 = type { i32, %struct.v4l2_ext_control*, i32 }
%struct.v4l2_ext_control = type { i32, i32 }

@V4L2_FL_USES_V4L2_FH = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.1*, i8*, i8*)* @v4l_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_s_ctrl(%struct.v4l2_ioctl_ops* %0, %struct.file.1* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ioctl_ops*, align 8
  %7 = alloca %struct.file.1*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca %struct.v4l2_control.2*, align 8
  %12 = alloca %struct.v4l2_fh*, align 8
  %13 = alloca %struct.v4l2_ext_controls.3, align 8
  %14 = alloca %struct.v4l2_ext_control, align 4
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %6, align 8
  store %struct.file.1* %1, %struct.file.1** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.file.1*, %struct.file.1** %7, align 8
  %16 = call %struct.video_device* @video_devdata(%struct.file.1* %15)
  store %struct.video_device* %16, %struct.video_device** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.v4l2_control.2*
  store %struct.v4l2_control.2* %18, %struct.v4l2_control.2** %11, align 8
  %19 = load i32, i32* @V4L2_FL_USES_V4L2_FH, align 4
  %20 = load %struct.video_device*, %struct.video_device** %10, align 8
  %21 = getelementptr inbounds %struct.video_device, %struct.video_device* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ null, %26 ]
  %29 = bitcast i8* %28 to %struct.v4l2_fh*
  store %struct.v4l2_fh* %29, %struct.v4l2_fh** %12, align 8
  %30 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  %31 = icmp ne %struct.v4l2_fh* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  %34 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  %39 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  %40 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.v4l2_control.2*, %struct.v4l2_control.2** %11, align 8
  %43 = call i32 @v4l2_s_ctrl(%struct.v4l2_fh* %38, i64 %41, %struct.v4l2_control.2* %42)
  store i32 %43, i32* %5, align 4
  br label %108

44:                                               ; preds = %32, %27
  %45 = load %struct.video_device*, %struct.video_device** %10, align 8
  %46 = getelementptr inbounds %struct.video_device, %struct.video_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.video_device*, %struct.video_device** %10, align 8
  %51 = getelementptr inbounds %struct.video_device, %struct.video_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.v4l2_control.2*, %struct.v4l2_control.2** %11, align 8
  %54 = call i32 @v4l2_s_ctrl(%struct.v4l2_fh* null, i64 %52, %struct.v4l2_control.2* %53)
  store i32 %54, i32* %5, align 4
  br label %108

55:                                               ; preds = %44
  %56 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %56, i32 0, i32 0
  %58 = load i32 (%struct.file*, i8*, %struct.v4l2_control*)*, i32 (%struct.file*, i8*, %struct.v4l2_control*)** %57, align 8
  %59 = icmp ne i32 (%struct.file*, i8*, %struct.v4l2_control*)* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %62 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %61, i32 0, i32 0
  %63 = load i32 (%struct.file*, i8*, %struct.v4l2_control*)*, i32 (%struct.file*, i8*, %struct.v4l2_control*)** %62, align 8
  %64 = load %struct.file.1*, %struct.file.1** %7, align 8
  %65 = bitcast %struct.file.1* %64 to %struct.file*
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.v4l2_control.2*, %struct.v4l2_control.2** %11, align 8
  %68 = bitcast %struct.v4l2_control.2* %67 to %struct.v4l2_control*
  %69 = call i32 %63(%struct.file* %65, i8* %66, %struct.v4l2_control* %68)
  store i32 %69, i32* %5, align 4
  br label %108

70:                                               ; preds = %55
  %71 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %72 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %71, i32 0, i32 1
  %73 = load i32 (%struct.file.0*, i8*, %struct.v4l2_ext_controls*)*, i32 (%struct.file.0*, i8*, %struct.v4l2_ext_controls*)** %72, align 8
  %74 = icmp eq i32 (%struct.file.0*, i8*, %struct.v4l2_ext_controls*)* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @ENOTTY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %108

78:                                               ; preds = %70
  %79 = load %struct.v4l2_control.2*, %struct.v4l2_control.2** %11, align 8
  %80 = getelementptr inbounds %struct.v4l2_control.2, %struct.v4l2_control.2* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @V4L2_CTRL_ID2WHICH(i32 %81)
  %83 = getelementptr inbounds %struct.v4l2_ext_controls.3, %struct.v4l2_ext_controls.3* %13, i32 0, i32 2
  store i32 %82, i32* %83, align 8
  %84 = getelementptr inbounds %struct.v4l2_ext_controls.3, %struct.v4l2_ext_controls.3* %13, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = getelementptr inbounds %struct.v4l2_ext_controls.3, %struct.v4l2_ext_controls.3* %13, i32 0, i32 1
  store %struct.v4l2_ext_control* %14, %struct.v4l2_ext_control** %85, align 8
  %86 = load %struct.v4l2_control.2*, %struct.v4l2_control.2** %11, align 8
  %87 = getelementptr inbounds %struct.v4l2_control.2, %struct.v4l2_control.2* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %14, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = load %struct.v4l2_control.2*, %struct.v4l2_control.2** %11, align 8
  %91 = getelementptr inbounds %struct.v4l2_control.2, %struct.v4l2_control.2* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %14, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = call i64 @check_ext_ctrls(%struct.v4l2_ext_controls.3* %13, i32 1)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %78
  %97 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %98 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %97, i32 0, i32 1
  %99 = load i32 (%struct.file.0*, i8*, %struct.v4l2_ext_controls*)*, i32 (%struct.file.0*, i8*, %struct.v4l2_ext_controls*)** %98, align 8
  %100 = load %struct.file.1*, %struct.file.1** %7, align 8
  %101 = bitcast %struct.file.1* %100 to %struct.file.0*
  %102 = load i8*, i8** %8, align 8
  %103 = bitcast %struct.v4l2_ext_controls.3* %13 to %struct.v4l2_ext_controls*
  %104 = call i32 %99(%struct.file.0* %101, i8* %102, %struct.v4l2_ext_controls* %103)
  store i32 %104, i32* %5, align 4
  br label %108

105:                                              ; preds = %78
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %105, %96, %75, %60, %49, %37
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.video_device* @video_devdata(%struct.file.1*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @v4l2_s_ctrl(%struct.v4l2_fh*, i64, %struct.v4l2_control.2*) #1

declare dso_local i32 @V4L2_CTRL_ID2WHICH(i32) #1

declare dso_local i64 @check_ext_ctrls(%struct.v4l2_ext_controls.3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
