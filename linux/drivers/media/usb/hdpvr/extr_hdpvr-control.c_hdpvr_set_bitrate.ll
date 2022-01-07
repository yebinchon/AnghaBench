; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-control.c_hdpvr_set_bitrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-control.c_hdpvr_set_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CTRL_BITRATE_VALUE = common dso_local global i32 0, align 4
@CTRL_DEFAULT_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdpvr_set_bitrate(%struct.hdpvr_device* %0) #0 {
  %2 = alloca %struct.hdpvr_device*, align 8
  %3 = alloca i32, align 4
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %2, align 8
  %4 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %5 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %8 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @memset(i32* %9, i32 0, i32 4)
  %11 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %12 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %16 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %20 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %24 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %22, i32* %26, align 4
  %27 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %28 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %31 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_sndctrlpipe(i32 %32, i32 0)
  %34 = load i32, i32* @CTRL_BITRATE_VALUE, align 4
  %35 = load i32, i32* @CTRL_DEFAULT_INDEX, align 4
  %36 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %37 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @usb_control_msg(i32 %29, i32 %33, i32 1, i32 56, i32 %34, i32 %35, i32* %38, i32 4, i32 1000)
  store i32 %39, i32* %3, align 4
  %40 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %41 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
