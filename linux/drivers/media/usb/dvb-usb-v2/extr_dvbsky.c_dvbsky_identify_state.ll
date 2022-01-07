; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_identify_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_dvbsky.c_dvbsky_identify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@WARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i8**)* @dvbsky_identify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsky_identify_state(%struct.dvb_usb_device* %0, i8** %1) #0 {
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i8**, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %6 = call i32 @dvbsky_gpio_ctrl(%struct.dvb_usb_device* %5, i32 4, i32 1)
  %7 = call i32 @msleep(i32 20)
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %9 = call i32 @dvbsky_gpio_ctrl(%struct.dvb_usb_device* %8, i32 131, i32 0)
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %11 = call i32 @dvbsky_gpio_ctrl(%struct.dvb_usb_device* %10, i32 192, i32 1)
  %12 = call i32 @msleep(i32 100)
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %14 = call i32 @dvbsky_gpio_ctrl(%struct.dvb_usb_device* %13, i32 131, i32 1)
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %16 = call i32 @dvbsky_gpio_ctrl(%struct.dvb_usb_device* %15, i32 192, i32 0)
  %17 = call i32 @msleep(i32 50)
  %18 = load i32, i32* @WARM, align 4
  ret i32 %18
}

declare dso_local i32 @dvbsky_gpio_ctrl(%struct.dvb_usb_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
