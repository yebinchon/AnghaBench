; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp702x.c_vp702x_read_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp702x.c_vp702x_read_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.vp702x_device_state* }
%struct.vp702x_device_state = type { i32*, i32 }

@READ_EEPROM_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*)* @vp702x_read_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp702x_read_mac_addr(%struct.dvb_usb_device* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vp702x_device_state*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %8, i32 0, i32 0
  %10 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %9, align 8
  store %struct.vp702x_device_state* %10, %struct.vp702x_device_state** %7, align 8
  %11 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %7, align 8
  %12 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %7, align 8
  %15 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  store i32 6, i32* %5, align 4
  br label %17

17:                                               ; preds = %30, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 12
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %22 = load i32, i32* @READ_EEPROM_REQ, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 6
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = call i32 @vp702x_usb_in_op(%struct.dvb_usb_device* %21, i32 %22, i32 %23, i32 1, i32* %28, i32 1)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @memcpy(i32* %34, i32* %35, i32 6)
  %37 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %7, align 8
  %38 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vp702x_usb_in_op(%struct.dvb_usb_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
