; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib9090_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib9090_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_2__*, i32, %struct.dib0700_adapter_state* }
%struct.TYPE_2__ = type { i32 }
%struct.dib0700_adapter_state = type { i32 }
%struct.i2c_adapter = type { i32 }

@__const.dib9090_tuner_attach.data_dib190 = private unnamed_addr constant [10 x i32] [i32 1, i32 4980, i32 2, i32 418, i32 7, i32 32, i32 0, i32 239, i32 8, i32 1158], align 16
@CONFIG_DVB_DIB9000 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@dib0090_fw_register = common dso_local global i32 0, align 4
@dib9090_dib0090_config = common dso_local global i32 0, align 4
@DIBX000_I2C_INTERFACE_GPIO_1_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dib9090_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9090_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dib0700_adapter_state*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca [10 x i32], align 16
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %7, i32 0, i32 2
  %9 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %8, align 8
  store %struct.dib0700_adapter_state* %9, %struct.dib0700_adapter_state** %4, align 8
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.i2c_adapter* @dib9000_get_tuner_interface(i32 %15)
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %5, align 8
  %17 = bitcast [10 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([10 x i32]* @__const.dib9090_tuner_attach.data_dib190 to i8*), i64 40, i1 false)
  %18 = load i32, i32* @CONFIG_DVB_DIB9000, align 4
  %19 = call i32 @IS_ENABLED(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %81

24:                                               ; preds = %1
  %25 = load i32, i32* @dib0090_fw_register, align 4
  %26 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %33 = call i32* @dvb_attach(i32 %25, i32 %31, %struct.i2c_adapter* %32, i32* @dib9090_dib0090_config)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %81

38:                                               ; preds = %24
  %39 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DIBX000_I2C_INTERFACE_GPIO_1_2, align 4
  %46 = call %struct.i2c_adapter* @dib9000_get_i2c_master(i32 %44, i32 %45, i32 0)
  store %struct.i2c_adapter* %46, %struct.i2c_adapter** %5, align 8
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %48 = icmp ne %struct.i2c_adapter* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %81

52:                                               ; preds = %38
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %55 = call i64 @dib01x0_pmu_update(%struct.i2c_adapter* %53, i32* %54, i32 10)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %81

60:                                               ; preds = %52
  %61 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dib0700_set_i2c_speed(i32 %63, i32 1500)
  %65 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @dib9000_firmware_post_pll_init(i32 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %81

76:                                               ; preds = %60
  %77 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %78 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @release_firmware(i32 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %73, %57, %49, %35, %21
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.i2c_adapter* @dib9000_get_tuner_interface(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32* @dvb_attach(i32, i32, %struct.i2c_adapter*, i32*) #1

declare dso_local %struct.i2c_adapter* @dib9000_get_i2c_master(i32, i32, i32) #1

declare dso_local i64 @dib01x0_pmu_update(%struct.i2c_adapter*, i32*, i32) #1

declare dso_local i32 @dib0700_set_i2c_speed(i32, i32) #1

declare dso_local i64 @dib9000_firmware_post_pll_init(i32) #1

declare dso_local i32 @release_firmware(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
