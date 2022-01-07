; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_send_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_send_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_fh = type { i32 }
%struct.v4l2_ext_control = type { i32, i32 }
%struct.uvc_control_mapping = type { i64, i64* }
%struct.uvc_control = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@V4L2_EVENT_CTRL_CH_VALUE = common dso_local global i64 0, align 8
@UVC_CTRL_FLAG_ASYNCHRONOUS = common dso_local global i32 0, align 4
@V4L2_EVENT_CTRL_CH_FLAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_fh*, %struct.v4l2_ext_control*, i32)* @uvc_ctrl_send_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_ctrl_send_events(%struct.uvc_fh* %0, %struct.v4l2_ext_control* %1, i32 %2) #0 {
  %4 = alloca %struct.uvc_fh*, align 8
  %5 = alloca %struct.v4l2_ext_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uvc_control_mapping*, align 8
  %8 = alloca %struct.uvc_control*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.uvc_fh* %0, %struct.uvc_fh** %4, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i64, i64* @V4L2_EVENT_CTRL_CH_VALUE, align 8
  store i64 %13, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %106, %3
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %109

18:                                               ; preds = %14
  %19 = load %struct.uvc_fh*, %struct.uvc_fh** %4, align 8
  %20 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %22, i64 %24
  %26 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.uvc_control* @uvc_find_control(i32 %21, i32 %27, %struct.uvc_control_mapping** %7)
  store %struct.uvc_control* %28, %struct.uvc_control** %8, align 8
  %29 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %30 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UVC_CTRL_FLAG_ASYNCHRONOUS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  br label %106

37:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %71, %37
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %41 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = call i32 @ARRAY_SIZE(i64* %42)
  %44 = icmp ult i32 %39, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %38
  %46 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %47 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %74

56:                                               ; preds = %45
  %57 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i64, i64* %12, align 8
  %60 = call i64 @uvc_ctrl_xctrls_has_control(%struct.v4l2_ext_control* %57, i32 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %71

63:                                               ; preds = %56
  %64 = load %struct.uvc_fh*, %struct.uvc_fh** %4, align 8
  %65 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.uvc_fh*, %struct.uvc_fh** %4, align 8
  %68 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @uvc_ctrl_send_slave_event(i32 %66, %struct.uvc_fh* %67, %struct.uvc_control* %68, i64 %69)
  br label %71

71:                                               ; preds = %63, %62
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %38

74:                                               ; preds = %55, %38
  %75 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %76 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %83 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @uvc_ctrl_xctrls_has_control(%struct.v4l2_ext_control* %80, i32 %81, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load i64, i64* @V4L2_EVENT_CTRL_CH_FLAGS, align 8
  %89 = load i64, i64* %9, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %87, %79, %74
  %92 = load %struct.uvc_fh*, %struct.uvc_fh** %4, align 8
  %93 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.uvc_fh*, %struct.uvc_fh** %4, align 8
  %96 = load %struct.uvc_control*, %struct.uvc_control** %8, align 8
  %97 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %7, align 8
  %98 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %98, i64 %100
  %102 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %9, align 8
  %105 = call i32 @uvc_ctrl_send_event(i32 %94, %struct.uvc_fh* %95, %struct.uvc_control* %96, %struct.uvc_control_mapping* %97, i32 %103, i64 %104)
  br label %106

106:                                              ; preds = %91, %36
  %107 = load i32, i32* %10, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %14

109:                                              ; preds = %14
  ret void
}

declare dso_local %struct.uvc_control* @uvc_find_control(i32, i32, %struct.uvc_control_mapping**) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @uvc_ctrl_xctrls_has_control(%struct.v4l2_ext_control*, i32, i64) #1

declare dso_local i32 @uvc_ctrl_send_slave_event(i32, %struct.uvc_fh*, %struct.uvc_control*, i64) #1

declare dso_local i32 @uvc_ctrl_send_event(i32, %struct.uvc_fh*, %struct.uvc_control*, %struct.uvc_control_mapping*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
