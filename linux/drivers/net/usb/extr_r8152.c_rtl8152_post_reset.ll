; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_post_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_post_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.r8152 = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 (%struct.r8152.0*)* }
%struct.r8152.0 = type opaque
%struct.net_device = type { i32 }
%struct.sockaddr = type { i32 }

@WORK_ENABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @rtl8152_post_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_post_reset(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.r8152*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sockaddr, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %8 = call %struct.r8152* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.r8152* %8, %struct.r8152** %4, align 8
  %9 = load %struct.r8152*, %struct.r8152** %4, align 8
  %10 = icmp ne %struct.r8152* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

12:                                               ; preds = %1
  %13 = load %struct.r8152*, %struct.r8152** %4, align 8
  %14 = call i64 @determine_ethernet_addr(%struct.r8152* %13, %struct.sockaddr* %6)
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = call i32 (...) @rtnl_lock()
  %18 = load %struct.r8152*, %struct.r8152** %4, align 8
  %19 = getelementptr inbounds %struct.r8152, %struct.r8152* %18, i32 0, i32 7
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  %21 = call i32 @dev_set_mac_address(%struct.net_device* %20, %struct.sockaddr* %6, i32* null)
  %22 = call i32 (...) @rtnl_unlock()
  br label %23

23:                                               ; preds = %16, %12
  %24 = load %struct.r8152*, %struct.r8152** %4, align 8
  %25 = getelementptr inbounds %struct.r8152, %struct.r8152* %24, i32 0, i32 7
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %5, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @netif_running(%struct.net_device* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %80

31:                                               ; preds = %23
  %32 = load i32, i32* @WORK_ENABLE, align 4
  %33 = load %struct.r8152*, %struct.r8152** %4, align 8
  %34 = getelementptr inbounds %struct.r8152, %struct.r8152* %33, i32 0, i32 6
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i64 @netif_carrier_ok(%struct.net_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %31
  %40 = load %struct.r8152*, %struct.r8152** %4, align 8
  %41 = getelementptr inbounds %struct.r8152, %struct.r8152* %40, i32 0, i32 4
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.r8152*, %struct.r8152** %4, align 8
  %44 = getelementptr inbounds %struct.r8152, %struct.r8152* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.r8152.0*)*, i32 (%struct.r8152.0*)** %45, align 8
  %47 = load %struct.r8152*, %struct.r8152** %4, align 8
  %48 = bitcast %struct.r8152* %47 to %struct.r8152.0*
  %49 = call i32 %46(%struct.r8152.0* %48)
  %50 = load %struct.r8152*, %struct.r8152** %4, align 8
  %51 = call i32 @rtl_start_rx(%struct.r8152* %50)
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = call i32 @_rtl8152_set_rx_mode(%struct.net_device* %52)
  %54 = load %struct.r8152*, %struct.r8152** %4, align 8
  %55 = getelementptr inbounds %struct.r8152, %struct.r8152* %54, i32 0, i32 4
  %56 = call i32 @mutex_unlock(i32* %55)
  br label %57

57:                                               ; preds = %39, %31
  %58 = load %struct.r8152*, %struct.r8152** %4, align 8
  %59 = getelementptr inbounds %struct.r8152, %struct.r8152* %58, i32 0, i32 0
  %60 = call i32 @napi_enable(i32* %59)
  %61 = load %struct.r8152*, %struct.r8152** %4, align 8
  %62 = getelementptr inbounds %struct.r8152, %struct.r8152* %61, i32 0, i32 3
  %63 = call i32 @tasklet_enable(i32* %62)
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = call i32 @netif_wake_queue(%struct.net_device* %64)
  %66 = load %struct.r8152*, %struct.r8152** %4, align 8
  %67 = getelementptr inbounds %struct.r8152, %struct.r8152* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32 @usb_submit_urb(i32 %68, i32 %69)
  %71 = load %struct.r8152*, %struct.r8152** %4, align 8
  %72 = getelementptr inbounds %struct.r8152, %struct.r8152* %71, i32 0, i32 1
  %73 = call i32 @list_empty(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %57
  %76 = load %struct.r8152*, %struct.r8152** %4, align 8
  %77 = getelementptr inbounds %struct.r8152, %struct.r8152* %76, i32 0, i32 0
  %78 = call i32 @napi_schedule(i32* %77)
  br label %79

79:                                               ; preds = %75, %57
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %30, %11
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.r8152* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @determine_ethernet_addr(%struct.r8152*, %struct.sockaddr*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_set_mac_address(%struct.net_device*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtl_start_rx(%struct.r8152*) #1

declare dso_local i32 @_rtl8152_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
