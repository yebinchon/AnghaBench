; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.redrat3_dev* }
%struct.redrat3_dev = type { %struct.device*, %struct.usb_device* }
%struct.device = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RR3_SET_IR_PARAM = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@RR3_IR_IO_SIG_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"set ir parm timeout %d ret 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32)* @redrat3_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redrat3_set_timeout(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.redrat3_dev*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %11, i32 0, i32 0
  %13 = load %struct.redrat3_dev*, %struct.redrat3_dev** %12, align 8
  store %struct.redrat3_dev* %13, %struct.redrat3_dev** %6, align 8
  %14 = load %struct.redrat3_dev*, %struct.redrat3_dev** %6, align 8
  %15 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %14, i32 0, i32 1
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %7, align 8
  %17 = load %struct.redrat3_dev*, %struct.redrat3_dev** %6, align 8
  %18 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kmalloc(i32 4, i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = udiv i32 %28, 1000
  %30 = call i32 @redrat3_us_to_len(i32 %29)
  %31 = call i32 @cpu_to_be32(i32 %30)
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %35 = call i32 @usb_sndctrlpipe(%struct.usb_device* %34, i32 0)
  %36 = load i32, i32* @RR3_SET_IR_PARAM, align 4
  %37 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %38 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @USB_DIR_OUT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RR3_IR_IO_SIG_TIMEOUT, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 %44, 25
  %46 = call i32 @usb_control_msg(%struct.usb_device* %33, i32 %35, i32 %36, i32 %41, i32 %42, i32 0, i32* %43, i32 4, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @be32_to_cpu(i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @dev_dbg(%struct.device* %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %64

57:                                               ; preds = %27
  %58 = load i32, i32* %10, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %56
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @kfree(i32* %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %24
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @redrat3_us_to_len(i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
