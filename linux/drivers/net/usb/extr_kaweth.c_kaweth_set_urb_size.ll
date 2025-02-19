; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_set_urb_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_set_urb_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaweth_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Setting URB size to %d\0A\00", align 1
@KAWETH_COMMAND_SET_URB_SIZE = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@KAWETH_CONTROL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kaweth_device*, i64)* @kaweth_set_urb_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_set_urb_size(%struct.kaweth_device* %0, i64 %1) #0 {
  %3 = alloca %struct.kaweth_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.kaweth_device* %0, %struct.kaweth_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %7 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i64, i64* %4, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 @netdev_dbg(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %13 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %14 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @usb_sndctrlpipe(i32 %15, i32 0)
  %17 = load i32, i32* @KAWETH_COMMAND_SET_URB_SIZE, align 4
  %18 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %19 = load i32, i32* @USB_DIR_OUT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %22 = or i32 %20, %21
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %25 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to i8*
  %27 = load i32, i32* @KAWETH_CONTROL_TIMEOUT, align 4
  %28 = call i32 @kaweth_control(%struct.kaweth_device* %12, i32 %16, i32 %17, i32 %22, i64 %23, i32 0, i8* %26, i32 0, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @kaweth_control(%struct.kaweth_device*, i32, i32, i32, i64, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
