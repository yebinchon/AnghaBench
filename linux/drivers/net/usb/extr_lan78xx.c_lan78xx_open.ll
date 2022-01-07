; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lan78xx_net = type { i32, i32, i32, i32, i64 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"phy initialised successfully\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"intr submit %d\0A\00", align 1
@EVENT_DEV_OPEN = common dso_local global i32 0, align 4
@EVENT_LINK_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lan78xx_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %5)
  store %struct.lan78xx_net* %6, %struct.lan78xx_net** %3, align 8
  %7 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %8 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @usb_autopm_get_interface(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %65

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @phy_start(i32 %17)
  %19 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %20 = load i32, i32* @ifup, align 4
  %21 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %22 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netif_dbg(%struct.lan78xx_net* %19, i32 %20, i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %26 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %14
  %30 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %31 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @usb_submit_urb(i64 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %39 = load i32, i32* @ifup, align 4
  %40 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %41 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @netif_err(%struct.lan78xx_net* %38, i32 %39, i32 %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %60

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %14
  %47 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %48 = call i32 @lan78xx_init_stats(%struct.lan78xx_net* %47)
  %49 = load i32, i32* @EVENT_DEV_OPEN, align 4
  %50 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %51 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %50, i32 0, i32 2
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32 @netif_start_queue(%struct.net_device* %53)
  %55 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %56 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %58 = load i32, i32* @EVENT_LINK_RESET, align 4
  %59 = call i32 @lan78xx_defer_kevent(%struct.lan78xx_net* %57, i32 %58)
  br label %60

60:                                               ; preds = %46, %37
  %61 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %62 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_autopm_put_interface(i32 %63)
  br label %65

65:                                               ; preds = %60, %13
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @netif_dbg(%struct.lan78xx_net*, i32, i32, i8*) #1

declare dso_local i32 @usb_submit_urb(i64, i32) #1

declare dso_local i32 @netif_err(%struct.lan78xx_net*, i32, i32, i8*, i32) #1

declare dso_local i32 @lan78xx_init_stats(%struct.lan78xx_net*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @lan78xx_defer_kevent(%struct.lan78xx_net*, i32) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
