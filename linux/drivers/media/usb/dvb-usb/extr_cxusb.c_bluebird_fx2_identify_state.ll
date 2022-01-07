; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_bluebird_fx2_identify_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_bluebird_fx2_identify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dvb_usb_device_properties = type { i32 }
%struct.dvb_usb_device_description = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_description**, i32*)* @bluebird_fx2_identify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bluebird_fx2_identify_state(%struct.usb_device* %0, %struct.dvb_usb_device_properties* %1, %struct.dvb_usb_device_description** %2, i32* %3) #0 {
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.dvb_usb_device_properties*, align 8
  %7 = alloca %struct.dvb_usb_device_description**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.dvb_usb_device_properties* %1, %struct.dvb_usb_device_properties** %6, align 8
  store %struct.dvb_usb_device_description** %2, %struct.dvb_usb_device_description*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 255
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 255
  br label %29

29:                                               ; preds = %23, %17, %4
  %30 = phi i1 [ false, %17 ], [ false, %4 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load %struct.dvb_usb_device_description**, %struct.dvb_usb_device_description*** %7, align 8
  store %struct.dvb_usb_device_description* null, %struct.dvb_usb_device_description** %40, align 8
  br label %41

41:                                               ; preds = %39, %36, %29
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
