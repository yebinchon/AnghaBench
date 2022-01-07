; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_si4713_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_si4713_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_usb_device = type { i32*, i32 }

@jiffies = common dso_local global i32 0, align 4
@USB_RESP_TIMEOUT = common dso_local global i32 0, align 4
@BUFFER_LENGTH = common dso_local global i32 0, align 4
@USB_TIMEOUT = common dso_local global i32 0, align 4
@SI4713_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_usb_device*, i8*, i32)* @si4713_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_i2c_read(%struct.si4713_usb_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.si4713_usb_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.si4713_usb_device* %0, %struct.si4713_usb_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @jiffies, align 4
  %11 = load i32, i32* @USB_RESP_TIMEOUT, align 4
  %12 = call i32 @usecs_to_jiffies(i32 %11)
  %13 = add nsw i32 %10, %12
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %65, %3
  %17 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %18 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %21 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @usb_rcvctrlpipe(i32 %22, i32 0)
  %24 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %25 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @BUFFER_LENGTH, align 4
  %28 = load i32, i32* @USB_TIMEOUT, align 4
  %29 = call i32 @usb_control_msg(i32 %19, i32 %23, i32 1, i32 161, i32 831, i32 0, i32* %26, i32 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %67

34:                                               ; preds = %16
  %35 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %36 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %43 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SI4713_CTS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %53 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @memcpy(i8* %51, i32* %55, i32 %56)
  store i32 0, i32* %4, align 4
  br label %67

58:                                               ; preds = %41, %34
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @time_is_before_jiffies(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 0, i8* %64, align 1
  store i32 0, i32* %4, align 4
  br label %67

65:                                               ; preds = %58
  %66 = call i32 @msleep(i32 3)
  br label %16

67:                                               ; preds = %62, %50, %32
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
