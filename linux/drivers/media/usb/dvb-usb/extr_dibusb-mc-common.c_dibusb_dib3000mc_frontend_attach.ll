; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-mc-common.c_dibusb_dib3000mc_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-mc-common.c_dibusb_dib3000mc_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.dibusb_state*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.dibusb_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@USB_VID_LITEON = common dso_local global i64 0, align 8
@USB_PID_LITEON_DVB_T_WARM = common dso_local global i64 0, align 8
@dib3000mc_attach = common dso_local global i32 0, align 4
@DEFAULT_DIB3000P_I2C_ADDRESS = common dso_local global i32 0, align 4
@mod3000p_dib3000p_config = common dso_local global i32 0, align 4
@DEFAULT_DIB3000MC_I2C_ADDRESS = common dso_local global i32 0, align 4
@dib3000mc_pid_parse = common dso_local global i32 0, align 4
@dib3000mc_pid_control = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dibusb_dib3000mc_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dibusb_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %5, i32 0, i32 2
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @le16_to_cpu(i32 %12)
  %14 = load i64, i64* @USB_VID_LITEON, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le16_to_cpu(i32 %24)
  %26 = load i64, i64* @USB_PID_LITEON_DVB_T_WARM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = call i32 @msleep(i32 1000)
  br label %30

30:                                               ; preds = %28, %16, %1
  %31 = load i32, i32* @dib3000mc_attach, align 4
  %32 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* @DEFAULT_DIB3000P_I2C_ADDRESS, align 4
  %37 = call i8* @dvb_attach(i32 %31, i32* %35, i32 %36, i32* @mod3000p_dib3000p_config)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32* %38, i32** %43, align 8
  %44 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %44, i32 0, i32 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %30
  %52 = load i32, i32* @dib3000mc_attach, align 4
  %53 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %53, i32 0, i32 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* @DEFAULT_DIB3000MC_I2C_ADDRESS, align 4
  %58 = call i8* @dvb_attach(i32 %52, i32* %56, i32 %57, i32* @mod3000p_dib3000p_config)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32* %59, i32** %64, align 8
  br label %65

65:                                               ; preds = %51, %30
  %66 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %65
  %74 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %74, i32 0, i32 0
  %76 = load %struct.dibusb_state*, %struct.dibusb_state** %75, align 8
  %77 = icmp ne %struct.dibusb_state* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %79, i32 0, i32 0
  %81 = load %struct.dibusb_state*, %struct.dibusb_state** %80, align 8
  store %struct.dibusb_state* %81, %struct.dibusb_state** %4, align 8
  %82 = load i32, i32* @dib3000mc_pid_parse, align 4
  %83 = load %struct.dibusb_state*, %struct.dibusb_state** %4, align 8
  %84 = getelementptr inbounds %struct.dibusb_state, %struct.dibusb_state* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @dib3000mc_pid_control, align 4
  %87 = load %struct.dibusb_state*, %struct.dibusb_state** %4, align 8
  %88 = getelementptr inbounds %struct.dibusb_state, %struct.dibusb_state* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  br label %90

90:                                               ; preds = %78, %73
  store i32 0, i32* %2, align 4
  br label %94

91:                                               ; preds = %65
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %90
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i8* @dvb_attach(i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
