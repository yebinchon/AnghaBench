; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ipheth.c_ipheth_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ipheth.c_ipheth_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ipheth_device = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Apple iPhone USB Ethernet now disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ipheth_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipheth_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ipheth_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.ipheth_device* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.ipheth_device* %5, %struct.ipheth_device** %3, align 8
  %6 = load %struct.ipheth_device*, %struct.ipheth_device** %3, align 8
  %7 = icmp ne %struct.ipheth_device* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.ipheth_device*, %struct.ipheth_device** %3, align 8
  %10 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @unregister_netdev(i32 %11)
  %13 = load %struct.ipheth_device*, %struct.ipheth_device** %3, align 8
  %14 = call i32 @ipheth_kill_urbs(%struct.ipheth_device* %13)
  %15 = load %struct.ipheth_device*, %struct.ipheth_device** %3, align 8
  %16 = call i32 @ipheth_free_urbs(%struct.ipheth_device* %15)
  %17 = load %struct.ipheth_device*, %struct.ipheth_device** %3, align 8
  %18 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kfree(i32 %19)
  %21 = load %struct.ipheth_device*, %struct.ipheth_device** %3, align 8
  %22 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @free_netdev(i32 %23)
  br label %25

25:                                               ; preds = %8, %1
  %26 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %27 = call i32 @usb_set_intfdata(%struct.usb_interface* %26, i32* null)
  %28 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %29 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 0
  %30 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ipheth_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @ipheth_kill_urbs(%struct.ipheth_device*) #1

declare dso_local i32 @ipheth_free_urbs(%struct.ipheth_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
