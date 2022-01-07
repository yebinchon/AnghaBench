; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_gspca_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_gspca_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.usb_device_id = type { i32, i32 }
%struct.sd_desc = type { i32 }
%struct.module = type { i32 }
%struct.usb_device = type { %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"%04x:%04x too many config\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gspca_dev_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1, %struct.sd_desc* %2, i32 %3, %struct.module* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.usb_device_id*, align 8
  %9 = alloca %struct.sd_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.module*, align 8
  %12 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %7, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %8, align 8
  store %struct.sd_desc* %2, %struct.sd_desc** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.module* %4, %struct.module** %11, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %12, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %30

20:                                               ; preds = %5
  %21 = load %struct.usb_device_id*, %struct.usb_device_id** %8, align 8
  %22 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.usb_device_id*, %struct.usb_device_id** %8, align 8
  %25 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %56

30:                                               ; preds = %5
  %31 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %40 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %56

49:                                               ; preds = %38, %30
  %50 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %51 = load %struct.usb_device_id*, %struct.usb_device_id** %8, align 8
  %52 = load %struct.sd_desc*, %struct.sd_desc** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.module*, %struct.module** %11, align 8
  %55 = call i32 @gspca_dev_probe2(%struct.usb_interface* %50, %struct.usb_device_id* %51, %struct.sd_desc* %52, i32 %53, %struct.module* %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %49, %46, %20
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @gspca_dev_probe2(%struct.usb_interface*, %struct.usb_device_id*, %struct.sd_desc*, i32, %struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
