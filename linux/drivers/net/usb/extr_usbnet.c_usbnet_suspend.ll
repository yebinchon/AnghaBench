; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbnet = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@EVENT_DEV_ASLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbnet_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usbnet*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %8 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.usbnet* %8, %struct.usbnet** %6, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %61, label %14

14:                                               ; preds = %2
  %15 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @PMSG_IS_AUTO(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %30 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %34 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %62

39:                                               ; preds = %24, %14
  %40 = load i32, i32* @EVENT_DEV_ASLEEP, align 4
  %41 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %42 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %41, i32 0, i32 2
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  %44 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %45 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_irq(i32* %46)
  br label %48

48:                                               ; preds = %39
  %49 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @netif_device_detach(i32 %51)
  %53 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %54 = call i32 @usbnet_terminate_urbs(%struct.usbnet* %53)
  %55 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %56 = call i32 @__usbnet_status_stop_force(%struct.usbnet* %55)
  %57 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %58 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @netif_device_attach(i32 %59)
  br label %61

61:                                               ; preds = %48, %2
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %28
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @PMSG_IS_AUTO(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @usbnet_terminate_urbs(%struct.usbnet*) #1

declare dso_local i32 @__usbnet_status_stop_force(%struct.usbnet*) #1

declare dso_local i32 @netif_device_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
