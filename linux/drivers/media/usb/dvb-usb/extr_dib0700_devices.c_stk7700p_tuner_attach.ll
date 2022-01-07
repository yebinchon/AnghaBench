; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_stk7700p_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_stk7700p_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.dib0700_adapter_state* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.dib0700_state*, %struct.i2c_adapter }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.dib0700_state = type { i64 }
%struct.i2c_adapter = type { i32 }
%struct.dib0700_adapter_state = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.i2c_adapter* (i32, i32, i32)* }

@USB_VID_HAUPPAUGE = common dso_local global i32 0, align 4
@USB_PID_HAUPPAUGE_NOVA_T_STICK = common dso_local global i32 0, align 4
@DIBX000_I2C_INTERFACE_TUNER = common dso_local global i32 0, align 4
@mt2060_attach = common dso_local global i32 0, align 4
@stk7700p_mt2060_config = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @stk7700p_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk7700p_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.dib0700_state*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.dib0700_adapter_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %9 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %3, align 8
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.dib0700_state*, %struct.dib0700_state** %16, align 8
  store %struct.dib0700_state* %17, %struct.dib0700_state** %4, align 8
  %18 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %18, i32 0, i32 2
  %20 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %19, align 8
  store %struct.dib0700_adapter_state* %20, %struct.dib0700_adapter_state** %6, align 8
  store i32 1220, i32* %8, align 4
  %21 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @USB_VID_HAUPPAUGE, align 4
  %30 = call i64 @cpu_to_le16(i32 %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %1
  %33 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @USB_PID_HAUPPAUGE_NOVA_T_STICK, align 4
  %42 = call i64 @cpu_to_le16(i32 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %32
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %46 = call i32 @eeprom_read(%struct.i2c_adapter* %45, i32 88, i32* %7)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 1220, %49
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %32, %1
  %53 = load %struct.dib0700_state*, %struct.dib0700_state** %4, align 8
  %54 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %6, align 8
  %59 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.i2c_adapter* (i32, i32, i32)*, %struct.i2c_adapter* (i32, i32, i32)** %60, align 8
  %62 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DIBX000_I2C_INTERFACE_TUNER, align 4
  %69 = call %struct.i2c_adapter* %61(i32 %67, i32 %68, i32 1)
  store %struct.i2c_adapter* %69, %struct.i2c_adapter** %5, align 8
  br label %79

70:                                               ; preds = %52
  %71 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DIBX000_I2C_INTERFACE_TUNER, align 4
  %78 = call %struct.i2c_adapter* @dib7000m_get_i2c_master(i32 %76, i32 %77, i32 1)
  store %struct.i2c_adapter* %78, %struct.i2c_adapter** %5, align 8
  br label %79

79:                                               ; preds = %70, %57
  %80 = load i32, i32* @mt2060_attach, align 4
  %81 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32* @dvb_attach(i32 %80, i32 %86, %struct.i2c_adapter* %87, i32* @stk7700p_mt2060_config, i32 %88)
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  br label %95

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi i32 [ %93, %91 ], [ 0, %94 ]
  ret i32 %96
}

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @eeprom_read(%struct.i2c_adapter*, i32, i32*) #1

declare dso_local %struct.i2c_adapter* @dib7000m_get_i2c_master(i32, i32, i32) #1

declare dso_local i32* @dvb_attach(i32, i32, %struct.i2c_adapter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
