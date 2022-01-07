; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lg-vl600.c_vl600_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lg-vl600.c_vl600_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__*, %struct.vl600_state* }
%struct.TYPE_2__ = type { i32 }
%struct.vl600_state = type { i32 }
%struct.usb_interface = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @vl600_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vl600_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vl600_state*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.vl600_state* @kzalloc(i32 4, i32 %8)
  store %struct.vl600_state* %9, %struct.vl600_state** %7, align 8
  %10 = load %struct.vl600_state*, %struct.vl600_state** %7, align 8
  %11 = icmp ne %struct.vl600_state* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %18 = call i32 @usbnet_cdc_bind(%struct.usbnet* %16, %struct.usb_interface* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.vl600_state*, %struct.vl600_state** %7, align 8
  %23 = call i32 @kfree(%struct.vl600_state* %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %44

25:                                               ; preds = %15
  %26 = load %struct.vl600_state*, %struct.vl600_state** %7, align 8
  %27 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %28 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %27, i32 0, i32 1
  store %struct.vl600_state* %26, %struct.vl600_state** %28, align 8
  %29 = load i32, i32* @IFF_NOARP, align 4
  %30 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %31 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %29
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @IFF_MULTICAST, align 4
  %37 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %38 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %25, %21, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.vl600_state* @kzalloc(i32, i32) #1

declare dso_local i32 @usbnet_cdc_bind(%struct.usbnet*, %struct.usb_interface*) #1

declare dso_local i32 @kfree(%struct.vl600_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
