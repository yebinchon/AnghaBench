; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_register_subdriver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_register_subdriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.usb_driver = type { i32 }
%struct.qmi_wwan_state = type { %struct.usb_driver*, %struct.TYPE_7__*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@EINVAL = common dso_local global i32 0, align 4
@qmi_wwan_cdc_wdm_manage_power = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"subdriver registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @qmi_wwan_register_subdriver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_wwan_register_subdriver(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_driver*, align 8
  %5 = alloca %struct.qmi_wwan_state*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  store %struct.usb_driver* null, %struct.usb_driver** %4, align 8
  %6 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %7 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %6, i32 0, i32 1
  %8 = bitcast i32* %7 to i8*
  %9 = bitcast i8* %8 to %struct.qmi_wwan_state*
  store %struct.qmi_wwan_state* %9, %struct.qmi_wwan_state** %5, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %11 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %12 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %11, i32 0, i32 3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = call i32 @usbnet_get_endpoints(%struct.usbnet* %10, %struct.TYPE_7__* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %74

18:                                               ; preds = %1
  %19 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %20 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %23 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %22, i32 0, i32 3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = icmp ne %struct.TYPE_7__* %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %28 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 0
  %35 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %36 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %35, i32 0, i32 0
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %36, align 8
  br label %37

37:                                               ; preds = %26, %18
  %38 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %39 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %74

45:                                               ; preds = %37
  %46 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %47 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %46, i32 0, i32 2
  %48 = call i32 @atomic_set(i32* %47, i32 0)
  %49 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %50 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %53 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call %struct.usb_driver* @usb_cdc_wdm_register(%struct.TYPE_7__* %51, i32* %55, i32 4096, i32* @qmi_wwan_cdc_wdm_manage_power)
  store %struct.usb_driver* %56, %struct.usb_driver** %4, align 8
  %57 = load %struct.usb_driver*, %struct.usb_driver** %4, align 8
  %58 = call i64 @IS_ERR(%struct.usb_driver* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %45
  %61 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %62 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.usb_driver*, %struct.usb_driver** %4, align 8
  %67 = call i32 @PTR_ERR(%struct.usb_driver* %66)
  store i32 %67, i32* %3, align 4
  br label %74

68:                                               ; preds = %45
  %69 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %70 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %69, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %70, align 8
  %71 = load %struct.usb_driver*, %struct.usb_driver** %4, align 8
  %72 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %73 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %72, i32 0, i32 0
  store %struct.usb_driver* %71, %struct.usb_driver** %73, align 8
  br label %74

74:                                               ; preds = %68, %60, %42, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.TYPE_7__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.usb_driver* @usb_cdc_wdm_register(%struct.TYPE_7__*, i32*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.usb_driver*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.usb_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
