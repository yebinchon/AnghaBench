; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cinergyT2-core.c_cinergyt2_power_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cinergyT2-core.c_cinergyt2_power_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.cinergyt2_state* }
%struct.cinergyt2_state = type { i32* }

@CINERGYT2_EP1_SLEEP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32)* @cinergyt2_power_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cinergyt2_power_ctrl(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cinergyt2_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %7, i32 0, i32 1
  %9 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %8, align 8
  store %struct.cinergyt2_state* %9, %struct.cinergyt2_state** %5, align 8
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* @CINERGYT2_EP1_SLEEP_MODE, align 4
  %14 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %5, align 8
  %15 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 1
  %22 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %5, align 8
  %23 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %27 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %5, align 8
  %28 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.cinergyt2_state*, %struct.cinergyt2_state** %5, align 8
  %31 = getelementptr inbounds %struct.cinergyt2_state, %struct.cinergyt2_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %26, i32* %29, i32 2, i32* %32, i32 3, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
