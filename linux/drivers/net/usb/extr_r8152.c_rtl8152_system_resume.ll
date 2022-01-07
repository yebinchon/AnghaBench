; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_system_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_system_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, i32, %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32 (%struct.r8152.0*)* }
%struct.r8152.0 = type opaque
%struct.net_device = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@WORK_ENABLE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*)* @rtl8152_system_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_system_resume(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %4 = load %struct.r8152*, %struct.r8152** %2, align 8
  %5 = getelementptr inbounds %struct.r8152, %struct.r8152* %4, i32 0, i32 3
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i32 @netif_device_attach(%struct.net_device* %7)
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i64 @netif_running(%struct.net_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_UP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %12
  %20 = load %struct.r8152*, %struct.r8152** %2, align 8
  %21 = getelementptr inbounds %struct.r8152, %struct.r8152* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.r8152.0*)*, i32 (%struct.r8152.0*)** %22, align 8
  %24 = load %struct.r8152*, %struct.r8152** %2, align 8
  %25 = bitcast %struct.r8152* %24 to %struct.r8152.0*
  %26 = call i32 %23(%struct.r8152.0* %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netif_carrier_off(%struct.net_device* %27)
  %29 = load i32, i32* @WORK_ENABLE, align 4
  %30 = load %struct.r8152*, %struct.r8152** %2, align 8
  %31 = getelementptr inbounds %struct.r8152, %struct.r8152* %30, i32 0, i32 1
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = load %struct.r8152*, %struct.r8152** %2, align 8
  %34 = getelementptr inbounds %struct.r8152, %struct.r8152* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GFP_NOIO, align 4
  %37 = call i32 @usb_submit_urb(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %19, %12, %1
  ret i32 0
}

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
