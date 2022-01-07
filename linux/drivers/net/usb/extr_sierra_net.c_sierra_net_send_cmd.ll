; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sierra_net.c_sierra_net_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sierra_net.c_sierra_net_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sierra_net_data = type { i32 }

@USB_CDC_SEND_ENCAPSULATED_COMMAND = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Submit %s failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32*, i32, i8*)* @sierra_net_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sierra_net_send_cmd(%struct.usbnet* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sierra_net_data*, align 8
  %10 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %12 = call %struct.sierra_net_data* @sierra_net_get_private(%struct.usbnet* %11)
  store %struct.sierra_net_data* %12, %struct.sierra_net_data** %9, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %14 = load i32, i32* @USB_CDC_SEND_ENCAPSULATED_COMMAND, align 4
  %15 = load i32, i32* @USB_DIR_OUT, align 4
  %16 = load i32, i32* @USB_TYPE_CLASS, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.sierra_net_data*, %struct.sierra_net_data** %9, align 8
  %21 = getelementptr inbounds %struct.sierra_net_data, %struct.sierra_net_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @usbnet_write_cmd(%struct.usbnet* %13, i32 %14, i32 %19, i32 0, i32 %22, i32* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %36 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @netdev_err(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %29, %4
  %42 = load i32, i32* %10, align 4
  ret i32 %42
}

declare dso_local %struct.sierra_net_data* @sierra_net_get_private(%struct.usbnet*) #1

declare dso_local i32 @usbnet_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
