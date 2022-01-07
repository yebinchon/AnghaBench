; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_usb_talk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_usb_talk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.lme2510_state* }
%struct.lme2510_state = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32, i32*, i32)* @lme2510_usb_talk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme2510_usb_talk(%struct.dvb_usb_device* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lme2510_state*, align 8
  %13 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 1
  %16 = load %struct.lme2510_state*, %struct.lme2510_state** %15, align 8
  store %struct.lme2510_state* %16, %struct.lme2510_state** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @max(i32 %17, i32 %18)
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %20, 8
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %65

25:                                               ; preds = %5
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock_interruptible(i32* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %65

34:                                               ; preds = %25
  %35 = load %struct.lme2510_state*, %struct.lme2510_state** %12, align 8
  %36 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @memcpy(i32* %37, i32* %38, i32 %39)
  %41 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %42 = load %struct.lme2510_state*, %struct.lme2510_state** %12, align 8
  %43 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.lme2510_state*, %struct.lme2510_state** %12, align 8
  %47 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @dvb_usbv2_generic_rw_locked(%struct.dvb_usb_device* %41, i32* %44, i32 %45, i32* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %34
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.lme2510_state*, %struct.lme2510_state** %12, align 8
  %56 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @memcpy(i32* %54, i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %34
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %31, %22
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dvb_usbv2_generic_rw_locked(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
