; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_g_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_g_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_ext_controls = type { i64, i32, i32, %struct.v4l2_ext_control* }
%struct.v4l2_ext_control = type { i32, i32 }
%struct.uvc_fh = type { %struct.uvc_video_chain* }
%struct.uvc_video_chain = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32 }

@V4L2_CTRL_WHICH_DEF_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* @uvc_ioctl_g_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_g_ext_ctrls(%struct.file* %0, i8* %1, %struct.v4l2_ext_controls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.uvc_fh*, align 8
  %9 = alloca %struct.uvc_video_chain*, align 8
  %10 = alloca %struct.v4l2_ext_control*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_queryctrl, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.uvc_fh*
  store %struct.uvc_fh* %15, %struct.uvc_fh** %8, align 8
  %16 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %17 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %16, i32 0, i32 0
  %18 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %17, align 8
  store %struct.uvc_video_chain* %18, %struct.uvc_video_chain** %9, align 8
  %19 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %19, i32 0, i32 3
  %21 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %20, align 8
  store %struct.v4l2_ext_control* %21, %struct.v4l2_ext_control** %10, align 8
  %22 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_CTRL_WHICH_DEF_VAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %54, %27
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 1
  %37 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %10, align 8
  %38 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 4
  %40 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %41 = call i32 @uvc_query_v4l2_ctrl(%struct.uvc_video_chain* %40, %struct.v4l2_queryctrl* %13)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %4, align 4
  br label %98

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %10, align 8
  %53 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %49
  %55 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %10, align 8
  %56 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %55, i32 1
  store %struct.v4l2_ext_control* %56, %struct.v4l2_ext_control** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %28

59:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %98

60:                                               ; preds = %3
  %61 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %62 = call i32 @uvc_ctrl_begin(%struct.uvc_video_chain* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %98

67:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %88, %67
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %68
  %75 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %76 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %10, align 8
  %77 = call i32 @uvc_ctrl_get(%struct.uvc_video_chain* %75, %struct.v4l2_ext_control* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %82 = call i32 @uvc_ctrl_rollback(%struct.uvc_fh* %81)
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %4, align 4
  br label %98

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %10, align 8
  %90 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %89, i32 1
  store %struct.v4l2_ext_control* %90, %struct.v4l2_ext_control** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %68

93:                                               ; preds = %68
  %94 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %94, i32 0, i32 2
  store i32 0, i32* %95, align 4
  %96 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %97 = call i32 @uvc_ctrl_rollback(%struct.uvc_fh* %96)
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %93, %80, %65, %59, %44
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @uvc_query_v4l2_ctrl(%struct.uvc_video_chain*, %struct.v4l2_queryctrl*) #1

declare dso_local i32 @uvc_ctrl_begin(%struct.uvc_video_chain*) #1

declare dso_local i32 @uvc_ctrl_get(%struct.uvc_video_chain*, %struct.v4l2_ext_control*) #1

declare dso_local i32 @uvc_ctrl_rollback(%struct.uvc_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
