; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_system_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_system_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, %struct.TYPE_2__, i32, i32, i32, %struct.napi_struct, %struct.net_device* }
%struct.TYPE_2__ = type { i32 (%struct.r8152.0*)* }
%struct.r8152.0 = type opaque
%struct.napi_struct = type { i32 }
%struct.net_device = type { i32 }

@WORK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*)* @rtl8152_system_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_system_suspend(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.napi_struct*, align 8
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %5 = load %struct.r8152*, %struct.r8152** %2, align 8
  %6 = getelementptr inbounds %struct.r8152, %struct.r8152* %5, i32 0, i32 6
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @netif_device_detach(%struct.net_device* %8)
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i64 @netif_running(%struct.net_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %1
  %14 = load i32, i32* @WORK_ENABLE, align 4
  %15 = load %struct.r8152*, %struct.r8152** %2, align 8
  %16 = getelementptr inbounds %struct.r8152, %struct.r8152* %15, i32 0, i32 4
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %13
  %20 = load %struct.r8152*, %struct.r8152** %2, align 8
  %21 = getelementptr inbounds %struct.r8152, %struct.r8152* %20, i32 0, i32 5
  store %struct.napi_struct* %21, %struct.napi_struct** %4, align 8
  %22 = load i32, i32* @WORK_ENABLE, align 4
  %23 = load %struct.r8152*, %struct.r8152** %2, align 8
  %24 = getelementptr inbounds %struct.r8152, %struct.r8152* %23, i32 0, i32 4
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.r8152*, %struct.r8152** %2, align 8
  %27 = getelementptr inbounds %struct.r8152, %struct.r8152* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_kill_urb(i32 %28)
  %30 = load %struct.r8152*, %struct.r8152** %2, align 8
  %31 = getelementptr inbounds %struct.r8152, %struct.r8152* %30, i32 0, i32 0
  %32 = call i32 @tasklet_disable(i32* %31)
  %33 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %34 = call i32 @napi_disable(%struct.napi_struct* %33)
  %35 = load %struct.r8152*, %struct.r8152** %2, align 8
  %36 = getelementptr inbounds %struct.r8152, %struct.r8152* %35, i32 0, i32 2
  %37 = call i32 @cancel_delayed_work_sync(i32* %36)
  %38 = load %struct.r8152*, %struct.r8152** %2, align 8
  %39 = getelementptr inbounds %struct.r8152, %struct.r8152* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.r8152.0*)*, i32 (%struct.r8152.0*)** %40, align 8
  %42 = load %struct.r8152*, %struct.r8152** %2, align 8
  %43 = bitcast %struct.r8152* %42 to %struct.r8152.0*
  %44 = call i32 %41(%struct.r8152.0* %43)
  %45 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %46 = call i32 @napi_enable(%struct.napi_struct* %45)
  %47 = load %struct.r8152*, %struct.r8152** %2, align 8
  %48 = getelementptr inbounds %struct.r8152, %struct.r8152* %47, i32 0, i32 0
  %49 = call i32 @tasklet_enable(i32* %48)
  br label %50

50:                                               ; preds = %19, %13, %1
  ret i32 0
}

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @napi_disable(%struct.napi_struct*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @napi_enable(%struct.napi_struct*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
