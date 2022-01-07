; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_gl861_i2c_read_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_gl861_i2c_read_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GL861_REQ_I2C_READ = common dso_local global i32 0, align 4
@GL861_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i64)* @gl861_i2c_read_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl861_i2c_read_ex(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kmalloc(i64 %12, i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %49

20:                                               ; preds = %4
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %25 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_rcvctrlpipe(i32 %26, i32 0)
  %28 = load i32, i32* @GL861_REQ_I2C_READ, align 4
  %29 = load i32, i32* @GL861_READ, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %30, 9
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @usb_control_msg(i32 %23, i32 %27, i32 %28, i32 %29, i32 %31, i32 256, i32* %32, i64 %33, i32 2000)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %20
  %38 = load i64, i64* %9, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @memcpy(i32* %41, i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %37, %20
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @kfree(i32* %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %17
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i64, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
