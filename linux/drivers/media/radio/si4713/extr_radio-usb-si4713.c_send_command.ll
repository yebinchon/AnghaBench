; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_usb_device = type { i32*, i32 }

@BUFFER_LENGTH = common dso_local global i32 0, align 4
@USB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_usb_device*, i8*, i8*, i32)* @send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_command(%struct.si4713_usb_device* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.si4713_usb_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.si4713_usb_device* %0, %struct.si4713_usb_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %11 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 63, i32* %13, align 4
  %14 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %15 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 6, i32* %17, align 4
  %18 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %19 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @memcpy(i32* %21, i8* %22, i32 3)
  %24 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %25 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 5
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @memcpy(i32* %27, i8* %28, i32 %29)
  %31 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %32 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* @BUFFER_LENGTH, align 4
  %39 = sub nsw i32 %38, 5
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @memset(i32* %37, i32 0, i32 %41)
  %43 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %44 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %47 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @usb_sndctrlpipe(i32 %48, i32 0)
  %50 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %5, align 8
  %51 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @BUFFER_LENGTH, align 4
  %54 = load i32, i32* @USB_TIMEOUT, align 4
  %55 = call i32 @usb_control_msg(i32 %45, i32 %49, i32 9, i32 33, i32 831, i32 0, i32* %52, i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %4
  %59 = load i32, i32* %9, align 4
  br label %61

60:                                               ; preds = %4
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  ret i32 %62
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
