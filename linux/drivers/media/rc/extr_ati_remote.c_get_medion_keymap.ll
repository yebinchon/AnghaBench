; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ati_remote.c_get_medion_keymap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ati_remote.c_get_medion_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@USB_CONFIG_ATT_WAKEUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"X10 Wireless Technology Inc\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"USB Receiver\00", align 1
@RC_MAP_MEDION_X10_DIGITAINER = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"X10 WTI\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"RF receiver\00", align 1
@RC_MAP_MEDION_X10_OR2X = common dso_local global i8* null, align 8
@RC_MAP_MEDION_X10 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [69 x i8] c"Unknown Medion X10 receiver, using default ati_remote Medion keymap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.usb_interface*)* @get_medion_keymap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_medion_keymap(%struct.usb_interface* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %6 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %5)
  store %struct.usb_device* %6, %struct.usb_device** %4, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %71

11:                                               ; preds = %1
  %12 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %71

16:                                               ; preds = %11
  %17 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @USB_CONFIG_ATT_WAKEUP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %16
  %27 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @strcmp(i64 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  %33 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @strcmp(i64 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** @RC_MAP_MEDION_X10_DIGITAINER, align 8
  store i8* %39, i8** %2, align 8
  br label %76

40:                                               ; preds = %32, %26
  %41 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %42 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @strcmp(i64 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %40
  %47 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @strcmp(i64 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** @RC_MAP_MEDION_X10_OR2X, align 8
  store i8* %53, i8** %2, align 8
  br label %76

54:                                               ; preds = %46, %40
  br label %70

55:                                               ; preds = %16
  %56 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %57 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @strcmp(i64 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %55
  %62 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @strcmp(i64 %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** @RC_MAP_MEDION_X10, align 8
  store i8* %68, i8** %2, align 8
  br label %76

69:                                               ; preds = %61, %55
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %11, %1
  %72 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %73 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %72, i32 0, i32 0
  %74 = call i32 @dev_info(i32* %73, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i8*, i8** @RC_MAP_MEDION_X10, align 8
  store i8* %75, i8** %2, align 8
  br label %76

76:                                               ; preds = %71, %67, %52, %38
  %77 = load i8*, i8** %2, align 8
  ret i8* %77
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
