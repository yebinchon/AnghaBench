; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redrat3_dev = type { %struct.device*, %struct.usb_device* }
%struct.device = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RR3_RESET = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@RR3_CPUCS_REG_ADDR = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"reset returned 0x%02x\0A\00", align 1
@length_fuzz = common dso_local global i32 0, align 4
@RR3_SET_IR_PARAM = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@RR3_IR_IO_LENGTH_FUZZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"set ir parm len fuzz %d rc 0x%02x\0A\00", align 1
@minimum_pause = common dso_local global i32 0, align 4
@RR3_IR_IO_MIN_PAUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"set ir parm min pause %d rc 0x%02x\0A\00", align 1
@periods_measure_carrier = common dso_local global i32 0, align 4
@RR3_IR_IO_PERIODS_MF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"set ir parm periods measure carrier %d rc 0x%02x\00", align 1
@RR3_DRIVER_MAXLENS = common dso_local global i32 0, align 4
@RR3_IR_IO_MAX_LENGTHS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"set ir parm max lens %d rc 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.redrat3_dev*)* @redrat3_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redrat3_reset(%struct.redrat3_dev* %0) #0 {
  %2 = alloca %struct.redrat3_dev*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.redrat3_dev* %0, %struct.redrat3_dev** %2, align 8
  %10 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %11 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %10, i32 0, i32 1
  %12 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  store %struct.usb_device* %12, %struct.usb_device** %3, align 8
  %13 = load %struct.redrat3_dev*, %struct.redrat3_dev** %2, align 8
  %14 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %4, align 8
  store i64 4, i64* %9, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %17 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %19 = call i32 @usb_sndctrlpipe(%struct.usb_device* %18, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kmalloc(i64 4, i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %128

25:                                               ; preds = %1
  %26 = load i32*, i32** %8, align 8
  store i32 1, i32* %26, align 4
  %27 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @RR3_RESET, align 4
  %30 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %31 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @USB_DIR_IN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RR3_CPUCS_REG_ADDR, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @HZ, align 4
  %38 = mul nsw i32 %37, 25
  %39 = call i32 @usb_control_msg(%struct.usb_device* %27, i32 %28, i32 %29, i32 %34, i32 %35, i32 0, i32* %36, i64 4, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @length_fuzz, align 4
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @RR3_SET_IR_PARAM, align 4
  %48 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %49 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @USB_DIR_OUT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @RR3_IR_IO_LENGTH_FUZZ, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @HZ, align 4
  %56 = mul nsw i32 %55, 25
  %57 = call i32 @usb_control_msg(%struct.usb_device* %45, i32 %46, i32 %47, i32 %52, i32 %53, i32 0, i32* %54, i64 4, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* @minimum_pause, align 4
  %64 = mul nsw i32 %63, 2000
  %65 = sub nsw i32 65536, %64
  %66 = sdiv i32 %65, 256
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @RR3_SET_IR_PARAM, align 4
  %71 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %72 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @USB_DIR_OUT, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @RR3_IR_IO_MIN_PAUSE, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* @HZ, align 4
  %79 = mul nsw i32 %78, 25
  %80 = call i32 @usb_control_msg(%struct.usb_device* %68, i32 %69, i32 %70, i32 %75, i32 %76, i32 0, i32* %77, i64 4, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* @periods_measure_carrier, align 4
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  %88 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @RR3_SET_IR_PARAM, align 4
  %91 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %92 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @USB_DIR_OUT, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @RR3_IR_IO_PERIODS_MF, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* @HZ, align 4
  %99 = mul nsw i32 %98, 25
  %100 = call i32 @usb_control_msg(%struct.usb_device* %88, i32 %89, i32 %90, i32 %95, i32 %96, i32 0, i32* %97, i64 4, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %101, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load i32, i32* @RR3_DRIVER_MAXLENS, align 4
  %107 = load i32*, i32** %8, align 8
  store i32 %106, i32* %107, align 4
  %108 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @RR3_SET_IR_PARAM, align 4
  %111 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %112 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @USB_DIR_OUT, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @RR3_IR_IO_MAX_LENGTHS, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* @HZ, align 4
  %119 = mul nsw i32 %118, 25
  %120 = call i32 @usb_control_msg(%struct.usb_device* %108, i32 %109, i32 %110, i32 %115, i32 %116, i32 0, i32* %117, i64 4, i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load %struct.device*, %struct.device** %4, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %121, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32 %124)
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @kfree(i32* %126)
  br label %128

128:                                              ; preds = %25, %24
  ret void
}

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
