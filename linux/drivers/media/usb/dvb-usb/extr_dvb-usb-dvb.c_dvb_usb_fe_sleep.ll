; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_fe_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_fe_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dvb_usb_adapter* }
%struct.dvb_usb_adapter = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dvb_usb_fe_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_usb_fe_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %7, align 8
  store %struct.dvb_usb_adapter* %8, %struct.dvb_usb_adapter** %3, align 8
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.dvb_frontend*)**
  %18 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %17, align 8
  %19 = icmp ne i32 (%struct.dvb_frontend*)* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.dvb_frontend*)**
  %30 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %29, align 8
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %32 = call i32 %30(%struct.dvb_frontend* %31)
  br label %33

33:                                               ; preds = %20, %1
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %35 = call i32 @dvb_usb_set_active_fe(%struct.dvb_frontend* %34, i32 0)
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dvb_usb_device_power_ctrl(i32 %38, i32 0)
  ret i32 %39
}

declare dso_local i32 @dvb_usb_set_active_fe(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @dvb_usb_device_power_ctrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
