; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_streamzap.c_streamzap_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_streamzap.c_streamzap_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.streamzap_ir = type { i32, i32, i32, i32, i32, i32* }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @streamzap_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @streamzap_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.streamzap_ir*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.streamzap_ir* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.streamzap_ir* %6, %struct.streamzap_ir** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %7)
  store %struct.usb_device* %8, %struct.usb_device** %4, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = call i32 @usb_set_intfdata(%struct.usb_interface* %9, i32* null)
  %11 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %12 = icmp ne %struct.streamzap_ir* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %16 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %15, i32 0, i32 5
  store i32* null, i32** %16, align 8
  %17 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %18 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @rc_unregister_device(i32 %19)
  %21 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %22 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_kill_urb(i32 %23)
  %25 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %26 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_free_urb(i32 %27)
  %29 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %30 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %31 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %34 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %37 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @usb_free_coherent(%struct.usb_device* %29, i32 %32, i32 %35, i32 %38)
  %40 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %41 = call i32 @kfree(%struct.streamzap_ir* %40)
  br label %42

42:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.streamzap_ir* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @rc_unregister_device(i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.streamzap_ir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
