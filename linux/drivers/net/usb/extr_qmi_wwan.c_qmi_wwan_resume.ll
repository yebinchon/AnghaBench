; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbnet = type { i32 }
%struct.qmi_wwan_state = type { %struct.TYPE_2__*, %struct.usb_interface* }
%struct.TYPE_2__ = type { i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*, i32)* }

@PMSG_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @qmi_wwan_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_wwan_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.qmi_wwan_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.usbnet* %8, %struct.usbnet** %3, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.qmi_wwan_state*
  store %struct.qmi_wwan_state* %12, %struct.qmi_wwan_state** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %14 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %4, align 8
  %15 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %14, i32 0, i32 1
  %16 = load %struct.usb_interface*, %struct.usb_interface** %15, align 8
  %17 = icmp eq %struct.usb_interface* %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %4, align 8
  %20 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %4, align 8
  %25 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)** %27, align 8
  %29 = icmp ne i32 (%struct.usb_interface*)* %28, null
  br label %30

30:                                               ; preds = %23, %18, %1
  %31 = phi i1 [ false, %18 ], [ false, %1 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %4, align 8
  %37 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)** %39, align 8
  %41 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %42 = call i32 %40(%struct.usb_interface* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %35, %30
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %65

47:                                               ; preds = %43
  %48 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %49 = call i32 @usbnet_resume(%struct.usb_interface* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %4, align 8
  %57 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (%struct.usb_interface*, i32)*, i32 (%struct.usb_interface*, i32)** %59, align 8
  %61 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %62 = load i32, i32* @PMSG_SUSPEND, align 4
  %63 = call i32 %60(%struct.usb_interface* %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %52, %47
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usbnet_resume(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
