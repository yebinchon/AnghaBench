; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8152 = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.r8152.0*)* }
%struct.r8152.0 = type opaque

@WORK_ENABLE = common dso_local global i32 0, align 4
@RTL8152_UNPLUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rtl8152_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8152*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.r8152* @netdev_priv(%struct.net_device* %5)
  store %struct.r8152* %6, %struct.r8152** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.r8152*, %struct.r8152** %3, align 8
  %8 = getelementptr inbounds %struct.r8152, %struct.r8152* %7, i32 0, i32 7
  %9 = call i32 @tasklet_disable(i32* %8)
  %10 = load %struct.r8152*, %struct.r8152** %3, align 8
  %11 = getelementptr inbounds %struct.r8152, %struct.r8152* %10, i32 0, i32 6
  %12 = call i32 @napi_disable(i32* %11)
  %13 = load i32, i32* @WORK_ENABLE, align 4
  %14 = load %struct.r8152*, %struct.r8152** %3, align 8
  %15 = getelementptr inbounds %struct.r8152, %struct.r8152* %14, i32 0, i32 3
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load %struct.r8152*, %struct.r8152** %3, align 8
  %18 = getelementptr inbounds %struct.r8152, %struct.r8152* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @usb_kill_urb(i32 %19)
  %21 = load %struct.r8152*, %struct.r8152** %3, align 8
  %22 = getelementptr inbounds %struct.r8152, %struct.r8152* %21, i32 0, i32 4
  %23 = call i32 @cancel_delayed_work_sync(i32* %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @netif_stop_queue(%struct.net_device* %24)
  %26 = load %struct.r8152*, %struct.r8152** %3, align 8
  %27 = getelementptr inbounds %struct.r8152, %struct.r8152* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @usb_autopm_get_interface(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @RTL8152_UNPLUG, align 4
  %34 = load %struct.r8152*, %struct.r8152** %3, align 8
  %35 = getelementptr inbounds %struct.r8152, %struct.r8152* %34, i32 0, i32 3
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32, %1
  %39 = load %struct.r8152*, %struct.r8152** %3, align 8
  %40 = call i32 @rtl_drop_queued_tx(%struct.r8152* %39)
  %41 = load %struct.r8152*, %struct.r8152** %3, align 8
  %42 = call i32 @rtl_stop_rx(%struct.r8152* %41)
  br label %61

43:                                               ; preds = %32
  %44 = load %struct.r8152*, %struct.r8152** %3, align 8
  %45 = getelementptr inbounds %struct.r8152, %struct.r8152* %44, i32 0, i32 1
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.r8152*, %struct.r8152** %3, align 8
  %48 = getelementptr inbounds %struct.r8152, %struct.r8152* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.r8152.0*)*, i32 (%struct.r8152.0*)** %49, align 8
  %51 = load %struct.r8152*, %struct.r8152** %3, align 8
  %52 = bitcast %struct.r8152* %51 to %struct.r8152.0*
  %53 = call i32 %50(%struct.r8152.0* %52)
  %54 = load %struct.r8152*, %struct.r8152** %3, align 8
  %55 = getelementptr inbounds %struct.r8152, %struct.r8152* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.r8152*, %struct.r8152** %3, align 8
  %58 = getelementptr inbounds %struct.r8152, %struct.r8152* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @usb_autopm_put_interface(i32 %59)
  br label %61

61:                                               ; preds = %43, %38
  %62 = load %struct.r8152*, %struct.r8152** %3, align 8
  %63 = call i32 @free_all_mem(%struct.r8152* %62)
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.r8152* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rtl_drop_queued_tx(%struct.r8152*) #1

declare dso_local i32 @rtl_stop_rx(%struct.r8152*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @free_all_mem(%struct.r8152*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
