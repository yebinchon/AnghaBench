; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_identify_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_identify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_2__*, i32, %struct.lme2510_state* }
%struct.TYPE_2__ = type { i32 }
%struct.lme2510_state = type { i32 }

@dvb_usb_lme2510_firmware = common dso_local global i32 0, align 4
@COLD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i8**)* @lme2510_identify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme2510_identify_state(%struct.dvb_usb_device* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.lme2510_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %8, i32 0, i32 2
  %10 = load %struct.lme2510_state*, %struct.lme2510_state** %9, align 8
  store %struct.lme2510_state* %10, %struct.lme2510_state** %6, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @usb_reset_configuration(i32 %13)
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_set_interface(i32 %17, i32 %22, i32 1)
  %24 = load i32, i32* @dvb_usb_lme2510_firmware, align 4
  %25 = load %struct.lme2510_state*, %struct.lme2510_state** %6, align 8
  %26 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %28 = call i32 @lme2510_return_status(%struct.dvb_usb_device* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 68
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %33 = call i8* @lme_firmware_switch(%struct.dvb_usb_device* %32, i32 0)
  %34 = load i8**, i8*** %5, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* @COLD, align 4
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 71
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @WARM, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %39, %31
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @usb_reset_configuration(i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @lme2510_return_status(%struct.dvb_usb_device*) #1

declare dso_local i8* @lme_firmware_switch(%struct.dvb_usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
