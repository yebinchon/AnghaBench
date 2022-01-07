; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RTL8152_REQ_GET_REGS = common dso_local global i32 0, align 4
@RTL8152_REQT_READ = common dso_local global i32 0, align 4
@PLA_TCR0 = common dso_local global i32 0, align 4
@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@VERSION_MASK = common dso_local global i32 0, align 4
@RTL_VER_01 = common dso_local global i32 0, align 4
@RTL_VER_02 = common dso_local global i32 0, align 4
@RTL_VER_03 = common dso_local global i32 0, align 4
@RTL_VER_04 = common dso_local global i32 0, align 4
@RTL_VER_05 = common dso_local global i32 0, align 4
@RTL_VER_06 = common dso_local global i32 0, align 4
@RTL_VER_07 = common dso_local global i32 0, align 4
@RTL_VER_08 = common dso_local global i32 0, align 4
@RTL_VER_09 = common dso_local global i32 0, align 4
@RTL_VER_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown version 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Detected version 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @rtl_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_get_version(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %10 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %9)
  store %struct.usb_device* %10, %struct.usb_device** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @kmalloc(i32 4, i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

16:                                               ; preds = %1
  %17 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %18, i32 0)
  %20 = load i32, i32* @RTL8152_REQ_GET_REGS, align 4
  %21 = load i32, i32* @RTL8152_REQT_READ, align 4
  %22 = load i32, i32* @PLA_TCR0, align 4
  %23 = load i32, i32* @MCU_TYPE_PLA, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @usb_control_msg(%struct.usb_device* %17, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32* %24, i32 4, i32 500)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__le32_to_cpu(i32 %30)
  %32 = ashr i32 %31, 16
  %33 = load i32, i32* @VERSION_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %16
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @kfree(i32* %36)
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %57 [
    i32 19456, label %39
    i32 19472, label %41
    i32 23552, label %43
    i32 23568, label %45
    i32 23584, label %47
    i32 23600, label %49
    i32 18432, label %51
    i32 24576, label %53
    i32 24592, label %55
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* @RTL_VER_01, align 4
  store i32 %40, i32* %7, align 4
  br label %63

41:                                               ; preds = %35
  %42 = load i32, i32* @RTL_VER_02, align 4
  store i32 %42, i32* %7, align 4
  br label %63

43:                                               ; preds = %35
  %44 = load i32, i32* @RTL_VER_03, align 4
  store i32 %44, i32* %7, align 4
  br label %63

45:                                               ; preds = %35
  %46 = load i32, i32* @RTL_VER_04, align 4
  store i32 %46, i32* %7, align 4
  br label %63

47:                                               ; preds = %35
  %48 = load i32, i32* @RTL_VER_05, align 4
  store i32 %48, i32* %7, align 4
  br label %63

49:                                               ; preds = %35
  %50 = load i32, i32* @RTL_VER_06, align 4
  store i32 %50, i32* %7, align 4
  br label %63

51:                                               ; preds = %35
  %52 = load i32, i32* @RTL_VER_07, align 4
  store i32 %52, i32* %7, align 4
  br label %63

53:                                               ; preds = %35
  %54 = load i32, i32* @RTL_VER_08, align 4
  store i32 %54, i32* %7, align 4
  br label %63

55:                                               ; preds = %35
  %56 = load i32, i32* @RTL_VER_09, align 4
  store i32 %56, i32* %7, align 4
  br label %63

57:                                               ; preds = %35
  %58 = load i32, i32* @RTL_VER_UNKNOWN, align 4
  store i32 %58, i32* %7, align 4
  %59 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 0
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @dev_info(i32* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %55, %53, %51, %49, %47, %45, %43, %41, %39
  %64 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %65 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %64, i32 0, i32 0
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %63, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
