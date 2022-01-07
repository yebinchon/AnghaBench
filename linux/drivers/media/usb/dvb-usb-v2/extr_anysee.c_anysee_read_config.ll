; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_read_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_anysee.c_anysee_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.anysee_state = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"%s: firmware version %d.%d hardware id %d\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @anysee_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anysee_read_config(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca %struct.dvb_usb_device*, align 8
  %3 = alloca %struct.anysee_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %2, align 8
  %6 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %7 = call %struct.anysee_state* @d_to_priv(%struct.dvb_usb_device* %6)
  store %struct.anysee_state* %7, %struct.anysee_state** %3, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %10 = call i32 @anysee_get_hw_info(%struct.dvb_usb_device* %8, i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %17 = call i32 @anysee_get_hw_info(%struct.dvb_usb_device* %15, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %38

21:                                               ; preds = %14
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @KBUILD_MODNAME, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_info(i32* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28, i32 %30, i32 %32)
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.anysee_state*, %struct.anysee_state** %3, align 8
  %37 = getelementptr inbounds %struct.anysee_state, %struct.anysee_state* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %21, %20, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.anysee_state* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @anysee_get_hw_info(%struct.dvb_usb_device*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
