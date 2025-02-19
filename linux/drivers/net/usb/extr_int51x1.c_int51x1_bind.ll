; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_int51x1.c_int51x1_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_int51x1.c_int51x1_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32*, i64, i64 }
%struct.usb_interface = type { i32 }

@INT51X1_HEADER_SIZE = common dso_local global i64 0, align 8
@int51x1_netdev_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @int51x1_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int51x1_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %8 = call i32 @usbnet_get_ethernet_addr(%struct.usbnet* %7, i32 3)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %41

13:                                               ; preds = %2
  %14 = load i64, i64* @INT51X1_HEADER_SIZE, align 8
  %15 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, %14
  store i64 %20, i64* %18, align 8
  %21 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %22 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %27 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %25, %30
  %32 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %33 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32* @int51x1_netdev_ops, i32** %37, align 8
  %38 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %39 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %40 = call i32 @usbnet_get_endpoints(%struct.usbnet* %38, %struct.usb_interface* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %13, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @usbnet_get_ethernet_addr(%struct.usbnet*, i32) #1

declare dso_local i32 @usbnet_get_endpoints(%struct.usbnet*, %struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
