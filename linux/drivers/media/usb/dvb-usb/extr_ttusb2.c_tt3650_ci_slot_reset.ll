; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_ttusb2.c_tt3650_ci_slot_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_ttusb2.c_tt3650_ci_slot_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { %struct.ttusb2_state* }
%struct.ttusb2_state = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TT3650_CMD_CI_RESET = common dso_local global i32 0, align 4
@TT3650_CMD_CI_SET_VIDEO_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32)* @tt3650_ci_slot_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt3650_ci_slot_reset(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_ca_en50221*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca %struct.ttusb2_state*, align 8
  %8 = alloca [1 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %10, i32 0, i32 0
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %11, align 8
  store %struct.dvb_usb_device* %12, %struct.dvb_usb_device** %6, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 0
  %15 = load %struct.ttusb2_state*, %struct.ttusb2_state** %14, align 8
  store %struct.ttusb2_state* %15, %struct.ttusb2_state** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @ci_dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %58

23:                                               ; preds = %2
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.ttusb2_state*, %struct.ttusb2_state** %7, align 8
  %26 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %29 = load i32, i32* @TT3650_CMD_CI_RESET, align 4
  %30 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %31 = call i32 @tt3650_ci_msg(%struct.dvb_usb_device* %28, i32 %29, i32* %30, i32 1, i32 1)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %53

35:                                               ; preds = %23
  %36 = call i32 @msleep(i32 500)
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %39 = load i32, i32* @TT3650_CMD_CI_RESET, align 4
  %40 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %41 = call i32 @tt3650_ci_msg(%struct.dvb_usb_device* %38, i32 %39, i32* %40, i32 1, i32 1)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %53

45:                                               ; preds = %35
  %46 = call i32 @msleep(i32 500)
  %47 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %49 = load i32, i32* @TT3650_CMD_CI_SET_VIDEO_PORT, align 4
  %50 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %51 = call i32 @tt3650_ci_msg(%struct.dvb_usb_device* %48, i32 %49, i32* %50, i32 1, i32 1)
  store i32 %51, i32* %9, align 4
  %52 = call i32 @msleep(i32 1100)
  br label %53

53:                                               ; preds = %45, %44, %34
  %54 = load %struct.ttusb2_state*, %struct.ttusb2_state** %7, align 8
  %55 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %20
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ci_dbg(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tt3650_ci_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
