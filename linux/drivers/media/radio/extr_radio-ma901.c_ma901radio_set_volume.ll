; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-ma901.c_ma901radio_set_volume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-ma901.c_ma901radio_set_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ma901radio_device = type { i32*, i32, i32 }

@MA901_RADIO_SET_VOLUME = common dso_local global i32 0, align 4
@BUFFER_LENGTH = common dso_local global i32 0, align 4
@USB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ma901radio_device*, i32)* @ma901radio_set_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ma901radio_set_volume(%struct.ma901radio_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ma901radio_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ma901radio_device* %0, %struct.ma901radio_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %8 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 10, i32* %10, align 4
  %11 = load i32, i32* @MA901_RADIO_SET_VOLUME, align 4
  %12 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %13 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %11, i32* %15, align 4
  %16 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %17 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 194, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 32
  %22 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %23 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %21, i32* %25, align 4
  %26 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %27 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32 0, i32* %29, align 4
  %30 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %31 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  store i32 0, i32* %33, align 4
  %34 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %35 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 6
  store i32 0, i32* %37, align 4
  %38 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %39 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 7
  store i32 0, i32* %41, align 4
  %42 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %43 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %46 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usb_sndctrlpipe(i32 %47, i32 0)
  %49 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %50 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @BUFFER_LENGTH, align 4
  %53 = load i32, i32* @USB_TIMEOUT, align 4
  %54 = call i32 @usb_control_msg(i32 %44, i32 %48, i32 9, i32 33, i32 768, i32 0, i32* %51, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %2
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %64

59:                                               ; preds = %2
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %62 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %57
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
