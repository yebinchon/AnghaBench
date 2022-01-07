; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_pre_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.r8152 = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 (%struct.r8152.0*)* }
%struct.r8152.0 = type opaque
%struct.net_device = type { i32 }

@WORK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @rtl8152_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_pre_reset(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.r8152*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %7 = call %struct.r8152* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.r8152* %7, %struct.r8152** %4, align 8
  %8 = load %struct.r8152*, %struct.r8152** %4, align 8
  %9 = icmp ne %struct.r8152* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

11:                                               ; preds = %1
  %12 = load %struct.r8152*, %struct.r8152** %4, align 8
  %13 = getelementptr inbounds %struct.r8152, %struct.r8152* %12, i32 0, i32 7
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @netif_running(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %57

19:                                               ; preds = %11
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @netif_stop_queue(%struct.net_device* %20)
  %22 = load %struct.r8152*, %struct.r8152** %4, align 8
  %23 = getelementptr inbounds %struct.r8152, %struct.r8152* %22, i32 0, i32 6
  %24 = call i32 @tasklet_disable(i32* %23)
  %25 = load %struct.r8152*, %struct.r8152** %4, align 8
  %26 = getelementptr inbounds %struct.r8152, %struct.r8152* %25, i32 0, i32 5
  %27 = call i32 @napi_disable(i32* %26)
  %28 = load i32, i32* @WORK_ENABLE, align 4
  %29 = load %struct.r8152*, %struct.r8152** %4, align 8
  %30 = getelementptr inbounds %struct.r8152, %struct.r8152* %29, i32 0, i32 4
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  %32 = load %struct.r8152*, %struct.r8152** %4, align 8
  %33 = getelementptr inbounds %struct.r8152, %struct.r8152* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_kill_urb(i32 %34)
  %36 = load %struct.r8152*, %struct.r8152** %4, align 8
  %37 = getelementptr inbounds %struct.r8152, %struct.r8152* %36, i32 0, i32 2
  %38 = call i32 @cancel_delayed_work_sync(i32* %37)
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = call i64 @netif_carrier_ok(%struct.net_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %19
  %43 = load %struct.r8152*, %struct.r8152** %4, align 8
  %44 = getelementptr inbounds %struct.r8152, %struct.r8152* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.r8152*, %struct.r8152** %4, align 8
  %47 = getelementptr inbounds %struct.r8152, %struct.r8152* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.r8152.0*)*, i32 (%struct.r8152.0*)** %48, align 8
  %50 = load %struct.r8152*, %struct.r8152** %4, align 8
  %51 = bitcast %struct.r8152* %50 to %struct.r8152.0*
  %52 = call i32 %49(%struct.r8152.0* %51)
  %53 = load %struct.r8152*, %struct.r8152** %4, align 8
  %54 = getelementptr inbounds %struct.r8152, %struct.r8152* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  br label %56

56:                                               ; preds = %42, %19
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %18, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.r8152* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
