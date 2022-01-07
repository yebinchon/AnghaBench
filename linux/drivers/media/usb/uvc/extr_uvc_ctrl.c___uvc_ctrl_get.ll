; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c___uvc_ctrl_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c___uvc_ctrl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video_chain = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.uvc_control = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.uvc_control_mapping = type { i32 }

@UVC_CTRL_FLAG_GET_CUR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@UVC_GET_CUR = common dso_local global i32 0, align 4
@UVC_CTRL_DATA_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video_chain*, %struct.uvc_control*, %struct.uvc_control_mapping*, i32*)* @__uvc_ctrl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uvc_ctrl_get(%struct.uvc_video_chain* %0, %struct.uvc_control* %1, %struct.uvc_control_mapping* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvc_video_chain*, align 8
  %7 = alloca %struct.uvc_control*, align 8
  %8 = alloca %struct.uvc_control_mapping*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.uvc_video_chain* %0, %struct.uvc_video_chain** %6, align 8
  store %struct.uvc_control* %1, %struct.uvc_control** %7, align 8
  store %struct.uvc_control_mapping* %2, %struct.uvc_control_mapping** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %12 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UVC_CTRL_FLAG_GET_CUR, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EACCES, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %67

21:                                               ; preds = %4
  %22 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %23 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %60, label %26

26:                                               ; preds = %21
  %27 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %6, align 8
  %28 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* @UVC_GET_CUR, align 4
  %31 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %32 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %6, align 8
  %37 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %42 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %46 = load i32, i32* @UVC_CTRL_DATA_CURRENT, align 4
  %47 = call i32 @uvc_ctrl_data(%struct.uvc_control* %45, i32 %46)
  %48 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %49 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @uvc_query_ctrl(%struct.TYPE_6__* %29, i32 %30, i32 %35, i32 %40, i32 %44, i32 %47, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %26
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %67

57:                                               ; preds = %26
  %58 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %59 = getelementptr inbounds %struct.uvc_control, %struct.uvc_control* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %21
  %61 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %8, align 8
  %62 = load %struct.uvc_control*, %struct.uvc_control** %7, align 8
  %63 = load i32, i32* @UVC_CTRL_DATA_CURRENT, align 4
  %64 = call i32 @uvc_ctrl_data(%struct.uvc_control* %62, i32 %63)
  %65 = call i32 @__uvc_ctrl_get_value(%struct.uvc_control_mapping* %61, i32 %64)
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %60, %55, %18
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @uvc_query_ctrl(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uvc_ctrl_data(%struct.uvc_control*, i32) #1

declare dso_local i32 @__uvc_ctrl_get_value(%struct.uvc_control_mapping*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
