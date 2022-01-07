; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.lan78xx_net = type { i32, i32, i32, %struct.net_device* }
%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.usb_device = type { i32 }

@PHY_KSZ9031RNX = common dso_local global i32 0, align 4
@PHY_LAN8835 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @lan78xx_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.phy_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.lan78xx_net* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.lan78xx_net* %8, %struct.lan78xx_net** %3, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = call i32 @usb_set_intfdata(%struct.usb_interface* %9, i32* null)
  %11 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %12 = icmp ne %struct.lan78xx_net* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %16 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %15)
  store %struct.usb_device* %16, %struct.usb_device** %4, align 8
  %17 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %18 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %17, i32 0, i32 3
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load %struct.phy_device*, %struct.phy_device** %21, align 8
  store %struct.phy_device* %22, %struct.phy_device** %6, align 8
  %23 = load i32, i32* @PHY_KSZ9031RNX, align 4
  %24 = call i32 @phy_unregister_fixup_for_uid(i32 %23, i32 -16)
  %25 = load i32, i32* @PHY_LAN8835, align 4
  %26 = call i32 @phy_unregister_fixup_for_uid(i32 %25, i32 -16)
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load %struct.phy_device*, %struct.phy_device** %28, align 8
  %30 = call i32 @phy_disconnect(%struct.phy_device* %29)
  %31 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %32 = call i64 @phy_is_pseudo_fixed_link(%struct.phy_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %14
  %35 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %36 = call i32 @fixed_phy_unregister(%struct.phy_device* %35)
  br label %37

37:                                               ; preds = %34, %14
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @unregister_netdev(%struct.net_device* %38)
  %40 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %41 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %40, i32 0, i32 2
  %42 = call i32 @cancel_delayed_work_sync(i32* %41)
  %43 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %44 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %43, i32 0, i32 1
  %45 = call i32 @usb_scuttle_anchored_urbs(i32* %44)
  %46 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %47 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %48 = call i32 @lan78xx_unbind(%struct.lan78xx_net* %46, %struct.usb_interface* %47)
  %49 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %50 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @usb_kill_urb(i32 %51)
  %53 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %54 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @usb_free_urb(i32 %55)
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = call i32 @free_netdev(%struct.net_device* %57)
  %59 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %60 = call i32 @usb_put_dev(%struct.usb_device* %59)
  br label %61

61:                                               ; preds = %37, %13
  ret void
}

declare dso_local %struct.lan78xx_net* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @phy_unregister_fixup_for_uid(i32, i32) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

declare dso_local i64 @phy_is_pseudo_fixed_link(%struct.phy_device*) #1

declare dso_local i32 @fixed_phy_unregister(%struct.phy_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @usb_scuttle_anchored_urbs(i32*) #1

declare dso_local i32 @lan78xx_unbind(%struct.lan78xx_net*, %struct.usb_interface*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
