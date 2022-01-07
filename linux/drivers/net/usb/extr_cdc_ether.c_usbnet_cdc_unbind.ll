; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ether.c_usbnet_cdc_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ether.c_usbnet_cdc_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_interface = type { i32 }
%struct.cdc_state = type { %struct.usb_interface*, %struct.usb_interface* }
%struct.usb_driver = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbnet_cdc_unbind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.cdc_state*, align 8
  %6 = alloca %struct.usb_driver*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 0
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.cdc_state*
  store %struct.cdc_state* %10, %struct.cdc_state** %5, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = call %struct.usb_driver* @driver_of(%struct.usb_interface* %11)
  store %struct.usb_driver* %12, %struct.usb_driver** %6, align 8
  %13 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %14 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %13, i32 0, i32 1
  %15 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %16 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %17 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %16, i32 0, i32 0
  %18 = load %struct.usb_interface*, %struct.usb_interface** %17, align 8
  %19 = icmp eq %struct.usb_interface* %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %23 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %24 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %23, i32 0, i32 0
  %25 = load %struct.usb_interface*, %struct.usb_interface** %24, align 8
  %26 = icmp eq %struct.usb_interface* %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %29 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %28, i32 0, i32 1
  %30 = load %struct.usb_interface*, %struct.usb_interface** %29, align 8
  %31 = icmp ne %struct.usb_interface* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %34 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %33, i32 0, i32 1
  %35 = load %struct.usb_interface*, %struct.usb_interface** %34, align 8
  %36 = call i32 @usb_set_intfdata(%struct.usb_interface* %35, i32* null)
  %37 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %38 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %39 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %38, i32 0, i32 1
  %40 = load %struct.usb_interface*, %struct.usb_interface** %39, align 8
  %41 = call i32 @usb_driver_release_interface(%struct.usb_driver* %37, %struct.usb_interface* %40)
  %42 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %43 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %42, i32 0, i32 1
  store %struct.usb_interface* null, %struct.usb_interface** %43, align 8
  br label %68

44:                                               ; preds = %27, %21
  %45 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %46 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %47 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %46, i32 0, i32 1
  %48 = load %struct.usb_interface*, %struct.usb_interface** %47, align 8
  %49 = icmp eq %struct.usb_interface* %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %52 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %51, i32 0, i32 0
  %53 = load %struct.usb_interface*, %struct.usb_interface** %52, align 8
  %54 = icmp ne %struct.usb_interface* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %57 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %56, i32 0, i32 0
  %58 = load %struct.usb_interface*, %struct.usb_interface** %57, align 8
  %59 = call i32 @usb_set_intfdata(%struct.usb_interface* %58, i32* null)
  %60 = load %struct.usb_driver*, %struct.usb_driver** %6, align 8
  %61 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %62 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %61, i32 0, i32 0
  %63 = load %struct.usb_interface*, %struct.usb_interface** %62, align 8
  %64 = call i32 @usb_driver_release_interface(%struct.usb_driver* %60, %struct.usb_interface* %63)
  %65 = load %struct.cdc_state*, %struct.cdc_state** %5, align 8
  %66 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %65, i32 0, i32 0
  store %struct.usb_interface* null, %struct.usb_interface** %66, align 8
  br label %67

67:                                               ; preds = %55, %50, %44
  br label %68

68:                                               ; preds = %20, %67, %32
  ret void
}

declare dso_local %struct.usb_driver* @driver_of(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
