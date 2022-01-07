; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_set_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_set_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"could not acquire lock\00", align 1
@EINTR = common dso_local global i32 0, align 4
@REQUEST_SET_GPIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0700_set_gpio(%struct.dvb_usb_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dib0700_state*, align 8
  %11 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 1
  %14 = load %struct.dib0700_state*, %struct.dib0700_state** %13, align 8
  store %struct.dib0700_state* %14, %struct.dib0700_state** %10, align 8
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 0
  %17 = call i64 @mutex_lock_interruptible(i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINTR, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %54

23:                                               ; preds = %4
  %24 = load i32, i32* @REQUEST_SET_GPIO, align 4
  %25 = load %struct.dib0700_state*, %struct.dib0700_state** %10, align 8
  %26 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.dib0700_state*, %struct.dib0700_state** %10, align 8
  %31 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 1
  %36 = shl i32 %35, 7
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 1
  %39 = shl i32 %38, 6
  %40 = or i32 %36, %39
  %41 = load %struct.dib0700_state*, %struct.dib0700_state** %10, align 8
  %42 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 %40, i32* %44, align 4
  %45 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %46 = load %struct.dib0700_state*, %struct.dib0700_state** %10, align 8
  %47 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @dib0700_ctrl_wr(%struct.dvb_usb_device* %45, i32* %48, i32 3)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %51 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %23, %19
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @dib0700_ctrl_wr(%struct.dvb_usb_device*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
