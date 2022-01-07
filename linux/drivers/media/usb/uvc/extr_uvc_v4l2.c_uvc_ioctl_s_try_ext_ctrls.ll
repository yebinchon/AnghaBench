; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_s_try_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_s_try_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_fh = type { %struct.uvc_video_chain* }
%struct.uvc_video_chain = type { i32 }
%struct.v4l2_ext_controls = type { i64, i32, i32, %struct.v4l2_ext_control* }
%struct.v4l2_ext_control = type { i32 }

@V4L2_CTRL_WHICH_DEF_VAL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_fh*, %struct.v4l2_ext_controls*, i32)* @uvc_ioctl_s_try_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_s_try_ext_ctrls(%struct.uvc_fh* %0, %struct.v4l2_ext_controls* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_fh*, align 8
  %6 = alloca %struct.v4l2_ext_controls*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_ext_control*, align 8
  %9 = alloca %struct.uvc_video_chain*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uvc_fh* %0, %struct.uvc_fh** %5, align 8
  store %struct.v4l2_ext_controls* %1, %struct.v4l2_ext_controls** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %12, i32 0, i32 3
  %14 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %13, align 8
  store %struct.v4l2_ext_control* %14, %struct.v4l2_ext_control** %8, align 8
  %15 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %16 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %15, i32 0, i32 0
  %17 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %16, align 8
  store %struct.uvc_video_chain* %17, %struct.uvc_video_chain** %9, align 8
  %18 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_CTRL_WHICH_DEF_VAL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %85

26:                                               ; preds = %3
  %27 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %28 = call i32 @uvc_ctrl_begin(%struct.uvc_video_chain* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %85

33:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %63, %33
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %34
  %41 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %42 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %8, align 8
  %43 = call i32 @uvc_ctrl_set(%struct.uvc_fh* %41, %struct.v4l2_ext_control* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %48 = call i32 @uvc_ctrl_rollback(%struct.uvc_fh* %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %53 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  br label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i32 [ %54, %51 ], [ %56, %55 ]
  %59 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %85

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %64, i32 1
  store %struct.v4l2_ext_control* %65, %struct.v4l2_ext_control** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %34

68:                                               ; preds = %34
  %69 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %70 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %69, i32 0, i32 2
  store i32 0, i32* %70, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %75 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %75, i32 0, i32 3
  %77 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %76, align 8
  %78 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %6, align 8
  %79 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @uvc_ctrl_commit(%struct.uvc_fh* %74, %struct.v4l2_ext_control* %77, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %85

82:                                               ; preds = %68
  %83 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %84 = call i32 @uvc_ctrl_rollback(%struct.uvc_fh* %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %73, %57, %31, %23
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @uvc_ctrl_begin(%struct.uvc_video_chain*) #1

declare dso_local i32 @uvc_ctrl_set(%struct.uvc_fh*, %struct.v4l2_ext_control*) #1

declare dso_local i32 @uvc_ctrl_rollback(%struct.uvc_fh*) #1

declare dso_local i32 @uvc_ctrl_commit(%struct.uvc_fh*, %struct.v4l2_ext_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
