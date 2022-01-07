; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c___uvc_ctrl_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_ctrl.c___uvc_ctrl_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_control_mapping = type { i32 (%struct.uvc_control_mapping*, i32, i32*)*, i64, i32, %struct.uvc_menu_info* }
%struct.uvc_menu_info = type { i32 }

@UVC_GET_CUR = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_control_mapping*, i32*)* @__uvc_ctrl_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uvc_ctrl_get_value(%struct.uvc_control_mapping* %0, i32* %1) #0 {
  %3 = alloca %struct.uvc_control_mapping*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvc_menu_info*, align 8
  %7 = alloca i32, align 4
  store %struct.uvc_control_mapping* %0, %struct.uvc_control_mapping** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %3, align 8
  %9 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %8, i32 0, i32 0
  %10 = load i32 (%struct.uvc_control_mapping*, i32, i32*)*, i32 (%struct.uvc_control_mapping*, i32, i32*)** %9, align 8
  %11 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %3, align 8
  %12 = load i32, i32* @UVC_GET_CUR, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 %10(%struct.uvc_control_mapping* %11, i32 %12, i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %3, align 8
  %16 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_CTRL_TYPE_MENU, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %2
  %21 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %3, align 8
  %22 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %21, i32 0, i32 3
  %23 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %22, align 8
  store %struct.uvc_menu_info* %23, %struct.uvc_menu_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %39, %20
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.uvc_control_mapping*, %struct.uvc_control_mapping** %3, align 8
  %27 = getelementptr inbounds %struct.uvc_control_mapping, %struct.uvc_control_mapping* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %6, align 8
  %32 = getelementptr inbounds %struct.uvc_menu_info, %struct.uvc_menu_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %5, align 4
  br label %44

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load %struct.uvc_menu_info*, %struct.uvc_menu_info** %6, align 8
  %43 = getelementptr inbounds %struct.uvc_menu_info, %struct.uvc_menu_info* %42, i32 1
  store %struct.uvc_menu_info* %43, %struct.uvc_menu_info** %6, align 8
  br label %24

44:                                               ; preds = %36, %24
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
