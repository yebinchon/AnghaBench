; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.qmi_wwan_state = type { %struct.usb_interface*, %struct.usb_interface*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.usb_interface*)* }
%struct.usb_driver = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.usb_interface*)* @qmi_wwan_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qmi_wwan_unbind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.qmi_wwan_state*, align 8
  %6 = alloca %struct.usb_driver*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 1
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.qmi_wwan_state*
  store %struct.qmi_wwan_state* %11, %struct.qmi_wwan_state** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_driver* @driver_of(%struct.usb_interface* %12)
  store %struct.usb_driver* %13, %struct.usb_driver** %6, align 8
  %14 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %15 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %20 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)** %22, align 8
  %24 = icmp ne i32 (%struct.usb_interface*)* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %27 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32 (%struct.usb_interface*)*, i32 (%struct.usb_interface*)** %29, align 8
  %31 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %32 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %31, i32 0, i32 0
  %33 = load %struct.usb_interface*, %struct.usb_interface** %32, align 8
  %34 = call i32 %30(%struct.usb_interface* %33)
  br label %35

35:                                               ; preds = %25, %18, %2
  %36 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %37 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = icmp sge i32 %42, 513
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %46 = call i32 @qmi_wwan_change_dtr(%struct.usbnet* %45, i32 0)
  %47 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %48 = call i32 @qmi_wwan_manage_power(%struct.usbnet* %47, i32 0)
  br label %49

49:                                               ; preds = %44, %35
  %50 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %51 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %52 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %51, i32 0, i32 0
  %53 = load %struct.usb_interface*, %struct.usb_interface** %52, align 8
  %54 = icmp eq %struct.usb_interface* %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %57 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %56, i32 0, i32 1
  %58 = load %struct.usb_interface*, %struct.usb_interface** %57, align 8
  store %struct.usb_interface* %58, %struct.usb_interface** %7, align 8
  br label %63

59:                                               ; preds = %49
  %60 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %61 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %60, i32 0, i32 0
  %62 = load %struct.usb_interface*, %struct.usb_interface** %61, align 8
  store %struct.usb_interface* %62, %struct.usb_interface** %7, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %65 = icmp ne %struct.usb_interface* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %68 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %69 = icmp ne %struct.usb_interface* %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %72 = call i32 @usb_set_intfdata(%struct.usb_interface* %71, i32* null)
  %73 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %74 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %75 = call i32 @usb_driver_release_interface(%struct.usb_driver* %73, %struct.usb_interface* %74)
  br label %76

76:                                               ; preds = %70, %66, %63
  %77 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %78 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %77, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %78, align 8
  %79 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %80 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %79, i32 0, i32 1
  store %struct.usb_interface* null, %struct.usb_interface** %80, align 8
  %81 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %5, align 8
  %82 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %81, i32 0, i32 0
  store %struct.usb_interface* null, %struct.usb_interface** %82, align 8
  ret void
}

declare dso_local %struct.usb_driver* @driver_of(%struct.usb_interface*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @qmi_wwan_change_dtr(%struct.usbnet*, i32) #1

declare dso_local i32 @qmi_wwan_manage_power(%struct.usbnet*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
