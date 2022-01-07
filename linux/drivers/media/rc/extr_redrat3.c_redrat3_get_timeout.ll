; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_get_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_get_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redrat3_dev = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RR3_GET_IR_PARAM = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@RR3_IR_IO_SIG_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to read timeout from hardware\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Got timeout of %d ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.redrat3_dev*)* @redrat3_get_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redrat3_get_timeout(%struct.redrat3_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.redrat3_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.redrat3_dev* %0, %struct.redrat3_dev** %3, align 8
  %9 = call i32 @MS_TO_US(i32 150)
  store i32 %9, i32* %5, align 4
  store i32 4, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @kzalloc(i32 %10, i32 %11)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %19 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_rcvctrlpipe(i32 %20, i32 0)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %23 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @RR3_GET_IR_PARAM, align 4
  %27 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %28 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @USB_DIR_IN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @RR3_IR_IO_SIG_TIMEOUT, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @HZ, align 4
  %36 = mul nsw i32 %35, 5
  %37 = call i32 @usb_control_msg(i32 %24, i32 %25, i32 %26, i32 %31, i32 %32, i32 0, i32* %33, i32 %34, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %17
  %42 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %43 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_warn(i32 %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %56

46:                                               ; preds = %17
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @be32_to_cpup(i32* %47)
  %49 = call i32 @redrat3_len_to_us(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %51 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sdiv i32 %53, 1000
  %55 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %46, %41
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @MS_TO_US(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @redrat3_len_to_us(i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
