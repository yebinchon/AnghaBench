; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_get_firmware_rev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_get_firmware_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redrat3_dev = type { i32, i32 }

@RR3_FW_VERSION_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@RR3_FW_VERSION = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Firmware rev: %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Problem fetching firmware ID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.redrat3_dev*)* @redrat3_get_firmware_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redrat3_get_firmware_rev(%struct.redrat3_dev* %0) #0 {
  %2 = alloca %struct.redrat3_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.redrat3_dev* %0, %struct.redrat3_dev** %2, align 8
  %5 = load i64, i64* @RR3_FW_VERSION_LEN, align 8
  %6 = add nsw i64 %5, 1
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kcalloc(i64 %6, i32 1, i32 %7)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %47

12:                                               ; preds = %1
  %13 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %14 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %17 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_rcvctrlpipe(i32 %18, i32 0)
  %20 = load i32, i32* @RR3_FW_VERSION, align 4
  %21 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %22 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @USB_DIR_IN, align 4
  %25 = or i32 %23, %24
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* @RR3_FW_VERSION_LEN, align 8
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 %28, 5
  %30 = call i32 @usb_control_msg(i32 %15, i32 %19, i32 %20, i32 %25, i32 0, i32 0, i8* %26, i64 %27, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %12
  %34 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %35 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @dev_info(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %37)
  br label %44

39:                                               ; preds = %12
  %40 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %41 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %33
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @kfree(i8* %45)
  br label %47

47:                                               ; preds = %44, %11
  ret void
}

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
