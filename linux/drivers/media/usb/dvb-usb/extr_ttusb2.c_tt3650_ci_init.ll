; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_ttusb2.c_tt3650_ci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_ttusb2.c_tt3650_ci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { %struct.ttusb2_state* }
%struct.ttusb2_state = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.dvb_usb_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@tt3650_ci_read_attribute_mem = common dso_local global i32 0, align 4
@tt3650_ci_write_attribute_mem = common dso_local global i32 0, align 4
@tt3650_ci_read_cam_control = common dso_local global i32 0, align 4
@tt3650_ci_write_cam_control = common dso_local global i32 0, align 4
@tt3650_ci_slot_reset = common dso_local global i32 0, align 4
@tt3650_ci_slot_shutdown = common dso_local global i32 0, align 4
@tt3650_ci_slot_ts_enable = common dso_local global i32 0, align 4
@tt3650_ci_poll_slot_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot initialize CI: Error %d.\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"CI initialized.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @tt3650_ci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt3650_ci_init(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.ttusb2_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %7, i32 0, i32 1
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  store %struct.dvb_usb_device* %9, %struct.dvb_usb_device** %4, align 8
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 0
  %12 = load %struct.ttusb2_state*, %struct.ttusb2_state** %11, align 8
  store %struct.ttusb2_state* %12, %struct.ttusb2_state** %5, align 8
  %13 = call i32 @ci_dbg(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ttusb2_state*, %struct.ttusb2_state** %5, align 8
  %15 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %14, i32 0, i32 1
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load i32, i32* @THIS_MODULE, align 4
  %18 = load %struct.ttusb2_state*, %struct.ttusb2_state** %5, align 8
  %19 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 9
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* @tt3650_ci_read_attribute_mem, align 4
  %22 = load %struct.ttusb2_state*, %struct.ttusb2_state** %5, align 8
  %23 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 8
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @tt3650_ci_write_attribute_mem, align 4
  %26 = load %struct.ttusb2_state*, %struct.ttusb2_state** %5, align 8
  %27 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 7
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @tt3650_ci_read_cam_control, align 4
  %30 = load %struct.ttusb2_state*, %struct.ttusb2_state** %5, align 8
  %31 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 6
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @tt3650_ci_write_cam_control, align 4
  %34 = load %struct.ttusb2_state*, %struct.ttusb2_state** %5, align 8
  %35 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @tt3650_ci_slot_reset, align 4
  %38 = load %struct.ttusb2_state*, %struct.ttusb2_state** %5, align 8
  %39 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @tt3650_ci_slot_shutdown, align 4
  %42 = load %struct.ttusb2_state*, %struct.ttusb2_state** %5, align 8
  %43 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @tt3650_ci_slot_ts_enable, align 4
  %46 = load %struct.ttusb2_state*, %struct.ttusb2_state** %5, align 8
  %47 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @tt3650_ci_poll_slot_status, align 4
  %50 = load %struct.ttusb2_state*, %struct.ttusb2_state** %5, align 8
  %51 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %54 = load %struct.ttusb2_state*, %struct.ttusb2_state** %5, align 8
  %55 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store %struct.dvb_usb_device* %53, %struct.dvb_usb_device** %56, align 8
  %57 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %57, i32 0, i32 0
  %59 = load %struct.ttusb2_state*, %struct.ttusb2_state** %5, align 8
  %60 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %59, i32 0, i32 0
  %61 = call i32 @dvb_ca_en50221_init(i32* %58, %struct.TYPE_3__* %60, i32 0, i32 1)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %1
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.ttusb2_state*, %struct.ttusb2_state** %5, align 8
  %68 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %67, i32 0, i32 0
  %69 = call i32 @memset(%struct.TYPE_3__* %68, i32 0, i32 48)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %73

71:                                               ; preds = %1
  %72 = call i32 @info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %64
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @ci_dbg(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dvb_ca_en50221_init(i32*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
