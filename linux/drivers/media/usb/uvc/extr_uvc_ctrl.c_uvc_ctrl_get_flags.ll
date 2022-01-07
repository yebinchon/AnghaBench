; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_get_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c_uvc_ctrl_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32 }
%struct.uvc_control = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uvc_control_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_GET_INFO = common dso_local global i32 0, align 4
@UVC_CONTROL_CAP_GET = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_GET_CUR = common dso_local global i32 0, align 4
@UVC_CONTROL_CAP_SET = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_SET_CUR = common dso_local global i32 0, align 4
@UVC_CONTROL_CAP_AUTOUPDATE = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_AUTO_UPDATE = common dso_local global i32 0, align 4
@UVC_CONTROL_CAP_ASYNCHRONOUS = common dso_local global i32 0, align 4
@UVC_CTRL_FLAG_ASYNCHRONOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, %struct.uvc_control*, %struct.uvc_control_info*)* @uvc_ctrl_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ctrl_get_flags(%struct.uvc_device* %0, %struct.uvc_control* %1, %struct.uvc_control_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_device*, align 8
  %6 = alloca %struct.uvc_control*, align 8
  %7 = alloca %struct.uvc_control_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %5, align 8
  store %struct.uvc_control* %1, %struct.uvc_control** %6, align 8
  store %struct.uvc_control_info* %2, %struct.uvc_control_info** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32* @kmalloc(i32 1, i32 %10)
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %91

17:                                               ; preds = %3
  %18 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %19 = load i32, i32* @UVC_GET_INFO, align 4
  %20 = load %struct.uvc_control*, %struct.uvc_control** %6, align 8
  %21 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %26 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %29 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @uvc_query_ctrl(%struct.uvc_device* %18, i32 %19, i32 %24, i32 %27, i32 %30, i32* %31, i32 1)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %87, label %35

35:                                               ; preds = %17
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @UVC_CONTROL_CAP_GET, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @UVC_CTRL_FLAG_GET_CUR, align 4
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UVC_CONTROL_CAP_SET, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @UVC_CTRL_FLAG_SET_CUR, align 4
  br label %56

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = or i32 %46, %57
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @UVC_CONTROL_CAP_AUTOUPDATE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @UVC_CTRL_FLAG_AUTO_UPDATE, align 4
  br label %68

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = or i32 %58, %69
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @UVC_CONTROL_CAP_ASYNCHRONOUS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @UVC_CTRL_FLAG_ASYNCHRONOUS, align 4
  br label %80

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 0, %79 ]
  %82 = or i32 %70, %81
  %83 = load %struct.uvc_control_info*, %struct.uvc_control_info** %7, align 8
  %84 = getelementptr inbounds %struct.uvc_control_info, %struct.uvc_control_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %80, %17
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @kfree(i32* %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %14
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @uvc_query_ctrl(%struct.uvc_device*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
