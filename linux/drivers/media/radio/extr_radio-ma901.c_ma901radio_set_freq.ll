; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-ma901.c_ma901radio_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-ma901.c_ma901radio_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ma901radio_device = type { i32*, i32, i32 }

@MA901_RADIO_SET_FREQ = common dso_local global i32 0, align 4
@BUFFER_LENGTH = common dso_local global i32 0, align 4
@USB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ma901radio_device*, i32)* @ma901radio_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ma901radio_set_freq(%struct.ma901radio_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ma901radio_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ma901radio_device* %0, %struct.ma901radio_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = ashr i32 %8, 5
  %10 = sdiv i32 %9, 25
  %11 = add nsw i32 768, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %13 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 10, i32* %15, align 4
  %16 = load i32, i32* @MA901_RADIO_SET_FREQ, align 4
  %17 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %18 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = lshr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = add i32 %23, 128
  %25 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %26 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 255
  %31 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %32 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %30, i32* %34, align 4
  %35 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %36 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  store i32 0, i32* %38, align 4
  %39 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %40 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  store i32 0, i32* %42, align 4
  %43 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %44 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 6
  store i32 0, i32* %46, align 4
  %47 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %48 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 7
  store i32 0, i32* %50, align 4
  %51 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %52 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %55 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usb_sndctrlpipe(i32 %56, i32 0)
  %58 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %59 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @BUFFER_LENGTH, align 4
  %62 = load i32, i32* @USB_TIMEOUT, align 4
  %63 = call i32 @usb_control_msg(i32 %53, i32 %57, i32 9, i32 33, i32 768, i32 0, i32* %60, i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %2
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %72

68:                                               ; preds = %2
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %71 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %66
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
