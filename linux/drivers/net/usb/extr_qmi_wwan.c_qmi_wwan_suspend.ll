; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbnet = type { i32 }
%struct.qmi_wwan_state = type { %struct.TYPE_2__*, %struct.usb_interface* }
%struct.TYPE_2__ = type { i32 (%struct.usb_interface*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @qmi_wwan_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_wwan_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.qmi_wwan_state*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %9 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.usbnet* %9, %struct.usbnet** %5, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.qmi_wwan_state*
  store %struct.qmi_wwan_state* %13, %struct.qmi_wwan_state** %6, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @usbnet_suspend(%struct.usb_interface* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %54

20:                                               ; preds = %2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %22 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %6, align 8
  %23 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %22, i32 0, i32 1
  %24 = load %struct.usb_interface*, %struct.usb_interface** %23, align 8
  %25 = icmp eq %struct.usb_interface* %21, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %6, align 8
  %28 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %6, align 8
  %33 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.usb_interface*, i32)*, i32 (%struct.usb_interface*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.usb_interface*, i32)* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %6, align 8
  %40 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.usb_interface*, i32)*, i32 (%struct.usb_interface*, i32)** %42, align 8
  %44 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 %43(%struct.usb_interface* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %38, %31, %26, %20
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %52 = call i32 @usbnet_resume(%struct.usb_interface* %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %19
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usbnet_suspend(%struct.usb_interface*, i32) #1

declare dso_local i32 @usbnet_resume(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
