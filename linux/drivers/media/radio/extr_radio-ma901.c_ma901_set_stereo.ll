; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-ma901.c_ma901_set_stereo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-ma901.c_ma901_set_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ma901radio_device = type { i32*, i32, i32 }

@MA901_RADIO_SET_MONO_STEREO = common dso_local global i32 0, align 4
@BUFFER_LENGTH = common dso_local global i32 0, align 4
@USB_TIMEOUT = common dso_local global i32 0, align 4
@MA901_WANT_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ma901radio_device*, i32)* @ma901_set_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ma901_set_stereo(%struct.ma901radio_device* %0, i32 %1) #0 {
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
  %11 = load i32, i32* @MA901_RADIO_SET_MONO_STEREO, align 4
  %12 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %13 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %18 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %16, i32* %20, align 4
  %21 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %22 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 0, i32* %24, align 4
  %25 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %26 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32 0, i32* %28, align 4
  %29 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %30 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 5
  store i32 0, i32* %32, align 4
  %33 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %34 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 6
  store i32 0, i32* %36, align 4
  %37 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %38 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 7
  store i32 0, i32* %40, align 4
  %41 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %42 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %45 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @usb_sndctrlpipe(i32 %46, i32 0)
  %48 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %49 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @BUFFER_LENGTH, align 4
  %52 = load i32, i32* @USB_TIMEOUT, align 4
  %53 = call i32 @usb_control_msg(i32 %43, i32 %47, i32 9, i32 33, i32 768, i32 0, i32* %50, i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %2
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %72

58:                                               ; preds = %2
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @MA901_WANT_STEREO, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %64 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %65 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %68 = load %struct.ma901radio_device*, %struct.ma901radio_device** %4, align 8
  %69 = getelementptr inbounds %struct.ma901radio_device, %struct.ma901radio_device* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %56
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
