; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_identify_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_identify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.dvb_usb_device_properties = type { i32 }
%struct.dvb_usb_device_description = type { i32 }

@FW_BULKOUT_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"result of FW_CONFIG in identify state %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Identify state cold = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_description**, i32*)* @af9005_identify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_identify_state(%struct.usb_device* %0, %struct.dvb_usb_device_properties* %1, %struct.dvb_usb_device_description** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.dvb_usb_device_properties*, align 8
  %8 = alloca %struct.dvb_usb_device_description**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store %struct.dvb_usb_device_properties* %1, %struct.dvb_usb_device_properties** %7, align 8
  store %struct.dvb_usb_device_description** %2, %struct.dvb_usb_device_description*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* @FW_BULKOUT_SIZE, align 8
  %14 = add nsw i64 %13, 2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc(i64 %14, i32 %15)
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %56

22:                                               ; preds = %4
  %23 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %24 = load i32, i32* @FW_CONFIG, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = load i64, i64* @FW_BULKOUT_SIZE, align 8
  %27 = add nsw i64 %26, 2
  %28 = call i32 @af9005_boot_packet(%struct.usb_device* %23, i32 %24, i32* %11, i32* %25, i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %52

32:                                               ; preds = %22
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @deb_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32*, i32** %9, align 8
  store i32 1, i32* %38, align 4
  br label %48

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32*, i32** %9, align 8
  store i32 0, i32* %43, align 4
  br label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %56

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @deb_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %31
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @kfree(i32* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %44, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @af9005_boot_packet(%struct.usb_device*, i32, i32*, i32*, i64) #1

declare dso_local i32 @deb_info(i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
