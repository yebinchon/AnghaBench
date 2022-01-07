; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_novatd_read_status_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_novatd_read_status_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dvb_usb_adapter* }
%struct.dvb_usb_adapter = type { i64, %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { %struct.dib0700_state* }
%struct.dib0700_state = type { i32 (%struct.dvb_frontend*, i32*)* }

@GPIO1 = common dso_local global i32 0, align 4
@GPIO0 = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @novatd_read_status_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @novatd_read_status_override(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dvb_usb_adapter*, align 8
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca %struct.dib0700_state*, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %12, align 8
  store %struct.dvb_usb_adapter* %13, %struct.dvb_usb_adapter** %5, align 8
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %14, i32 0, i32 1
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %15, align 8
  store %struct.dvb_usb_device* %16, %struct.dvb_usb_device** %6, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = load %struct.dib0700_state*, %struct.dib0700_state** %18, align 8
  store %struct.dib0700_state* %19, %struct.dib0700_state** %7, align 8
  %20 = load %struct.dib0700_state*, %struct.dib0700_state** %7, align 8
  %21 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %20, i32 0, i32 0
  %22 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %21, align 8
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 %22(%struct.dvb_frontend* %23, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %2
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %30 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @GPIO1, align 4
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @GPIO0, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* @GPIO_OUT, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FE_HAS_LOCK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @dib0700_set_gpio(%struct.dvb_usb_device* %29, i32 %39, i32 %40, i32 %48)
  br label %50

50:                                               ; preds = %38, %2
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @dib0700_set_gpio(%struct.dvb_usb_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
