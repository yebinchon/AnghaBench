; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_nim9090md_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_nim9090md_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_2__*, i32, %struct.dib0700_adapter_state* }
%struct.TYPE_2__ = type { %struct.dvb_frontend* }
%struct.dvb_frontend = type { i32 }
%struct.dib0700_adapter_state = type { i32 }
%struct.i2c_adapter = type { i32 }

@__const.nim9090md_tuner_attach.data_dib190 = private unnamed_addr constant [10 x i32] [i32 1, i32 21364, i32 2, i32 430, i32 7, i32 32, i32 0, i32 239, i32 8, i32 1030], align 16
@CONFIG_DVB_DIB9000 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@dib0090_fw_register = common dso_local global i32 0, align 4
@nim9090md_dib0090_config = common dso_local global i32* null, align 8
@DIBX000_I2C_INTERFACE_GPIO_1_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @nim9090md_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nim9090md_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dib0700_adapter_state*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca [10 x i32], align 16
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %8 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %8, i32 0, i32 2
  %10 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %9, align 8
  store %struct.dib0700_adapter_state* %10, %struct.dib0700_adapter_state** %4, align 8
  %11 = bitcast [10 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([10 x i32]* @__const.nim9090md_tuner_attach.data_dib190 to i8*), i64 40, i1 false)
  %12 = load i32, i32* @CONFIG_DVB_DIB9000, align 4
  %13 = call i32 @IS_ENABLED(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %142

18:                                               ; preds = %1
  %19 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %23, align 8
  %25 = call %struct.i2c_adapter* @dib9000_get_tuner_interface(%struct.dvb_frontend* %24)
  store %struct.i2c_adapter* %25, %struct.i2c_adapter** %5, align 8
  %26 = load i32, i32* @dib0090_fw_register, align 4
  %27 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %31, align 8
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %34 = load i32*, i32** @nim9090md_dib0090_config, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = call i32* @dvb_attach(i32 %26, %struct.dvb_frontend* %32, %struct.i2c_adapter* %33, i32* %35)
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %18
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %142

41:                                               ; preds = %18
  %42 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %46, align 8
  %48 = load i32, i32* @DIBX000_I2C_INTERFACE_GPIO_1_2, align 4
  %49 = call %struct.i2c_adapter* @dib9000_get_i2c_master(%struct.dvb_frontend* %47, i32 %48, i32 0)
  store %struct.i2c_adapter* %49, %struct.i2c_adapter** %5, align 8
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %51 = icmp ne %struct.i2c_adapter* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %142

55:                                               ; preds = %41
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %58 = call i64 @dib01x0_pmu_update(%struct.i2c_adapter* %56, i32* %57, i32 10)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %142

63:                                               ; preds = %55
  %64 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dib0700_set_i2c_speed(i32 %66, i32 1500)
  %68 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.dvb_frontend*, %struct.dvb_frontend** %72, align 8
  %74 = call i64 @dib9000_firmware_post_pll_init(%struct.dvb_frontend* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %142

79:                                               ; preds = %63
  %80 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.dvb_frontend*, %struct.dvb_frontend** %84, align 8
  %86 = call %struct.dvb_frontend* @dib9000_get_slave_frontend(%struct.dvb_frontend* %85, i32 1)
  store %struct.dvb_frontend* %86, %struct.dvb_frontend** %6, align 8
  %87 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %88 = icmp ne %struct.dvb_frontend* %87, null
  br i1 %88, label %89, label %137

89:                                               ; preds = %79
  %90 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load %struct.dvb_frontend*, %struct.dvb_frontend** %94, align 8
  %96 = call %struct.i2c_adapter* @dib9000_get_component_bus_interface(%struct.dvb_frontend* %95)
  store %struct.i2c_adapter* %96, %struct.i2c_adapter** %5, align 8
  %97 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %98 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %99 = call i32 @dib9000_set_i2c_adapter(%struct.dvb_frontend* %97, %struct.i2c_adapter* %98)
  %100 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %101 = call %struct.i2c_adapter* @dib9000_get_tuner_interface(%struct.dvb_frontend* %100)
  store %struct.i2c_adapter* %101, %struct.i2c_adapter** %5, align 8
  %102 = load i32, i32* @dib0090_fw_register, align 4
  %103 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %104 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %105 = load i32*, i32** @nim9090md_dib0090_config, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = call i32* @dvb_attach(i32 %102, %struct.dvb_frontend* %103, %struct.i2c_adapter* %104, i32* %106)
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %89
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %142

112:                                              ; preds = %89
  %113 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %114 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load %struct.dvb_frontend*, %struct.dvb_frontend** %117, align 8
  %119 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %122 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load %struct.dvb_frontend*, %struct.dvb_frontend** %127, align 8
  %129 = call i32 @dib9000_fw_set_component_bus_speed(%struct.dvb_frontend* %128, i32 1500)
  %130 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %131 = call i64 @dib9000_firmware_post_pll_init(%struct.dvb_frontend* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %112
  %134 = load i32, i32* @ENODEV, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %142

136:                                              ; preds = %112
  br label %137

137:                                              ; preds = %136, %79
  %138 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %4, align 8
  %139 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @release_firmware(i32 %140)
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %137, %133, %109, %76, %60, %52, %38, %15
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @IS_ENABLED(i32) #2

declare dso_local %struct.i2c_adapter* @dib9000_get_tuner_interface(%struct.dvb_frontend*) #2

declare dso_local i32* @dvb_attach(i32, %struct.dvb_frontend*, %struct.i2c_adapter*, i32*) #2

declare dso_local %struct.i2c_adapter* @dib9000_get_i2c_master(%struct.dvb_frontend*, i32, i32) #2

declare dso_local i64 @dib01x0_pmu_update(%struct.i2c_adapter*, i32*, i32) #2

declare dso_local i32 @dib0700_set_i2c_speed(i32, i32) #2

declare dso_local i64 @dib9000_firmware_post_pll_init(%struct.dvb_frontend*) #2

declare dso_local %struct.dvb_frontend* @dib9000_get_slave_frontend(%struct.dvb_frontend*, i32) #2

declare dso_local %struct.i2c_adapter* @dib9000_get_component_bus_interface(%struct.dvb_frontend*) #2

declare dso_local i32 @dib9000_set_i2c_adapter(%struct.dvb_frontend*, %struct.i2c_adapter*) #2

declare dso_local i32 @dib9000_fw_set_component_bus_speed(%struct.dvb_frontend*, i32) #2

declare dso_local i32 @release_firmware(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
