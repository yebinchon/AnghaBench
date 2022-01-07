; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-mb.c_dibusb_tuner_probe_and_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-mb.c_dibusb_tuner_probe_and_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.dibusb_state* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.dibusb_state = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"tuner i2c write failed.\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"This device has the Thomson Cable onboard. Which is default.\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"This device has the Panasonic ENV77H11D5 onboard.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @dibusb_tuner_probe_and_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dibusb_tuner_probe_and_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca [1 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.i2c_msg], align 16
  %7 = alloca %struct.dibusb_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %8 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  %9 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32* %11, i32** %10, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32 2, i32* %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i64 1
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  store i32* %17, i32** %16, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  %21 = load i32, i32* @I2C_M_RD, align 4
  store i32 %21, i32* %20, align 8
  %22 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %22, i32 0, i32 2
  %24 = load %struct.dibusb_state*, %struct.dibusb_state** %23, align 8
  store %struct.dibusb_state* %24, %struct.dibusb_state** %7, align 8
  %25 = load %struct.dibusb_state*, %struct.dibusb_state** %7, align 8
  %26 = getelementptr inbounds %struct.dibusb_state, %struct.dibusb_state* %25, i32 0, i32 0
  store i32 96, i32* %26, align 4
  %27 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 1
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 2
  store i32 96, i32* %28, align 4
  %29 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 2
  store i32 96, i32* %30, align 4
  %31 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.TYPE_9__*, i32)* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %1
  %42 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %49, align 8
  %51 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = call i32 %50(%struct.TYPE_9__* %56, i32 1)
  br label %58

58:                                               ; preds = %41, %1
  %59 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %6, i64 0, i64 0
  %64 = call i32 @i2c_transfer(i32* %62, %struct.i2c_msg* %63, i32 2)
  %65 = icmp ne i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EREMOTEIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %58
  %71 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %78, align 8
  %80 = icmp ne i32 (%struct.TYPE_9__*, i32)* %79, null
  br i1 %80, label %81, label %98

81:                                               ; preds = %70
  %82 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %89, align 8
  %91 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = call i32 %90(%struct.TYPE_9__* %96, i32 0)
  br label %98

98:                                               ; preds = %81, %70
  %99 = getelementptr inbounds [1 x i32], [1 x i32]* %4, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 254
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = call i32 @info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %105 = call i32 @dibusb_thomson_tuner_attach(%struct.dvb_usb_adapter* %104)
  store i32 %105, i32* %5, align 4
  br label %110

106:                                              ; preds = %98
  %107 = call i32 @info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %108 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %109 = call i32 @dibusb_panasonic_tuner_attach(%struct.dvb_usb_adapter* %108)
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %102
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @err(i8*) #2

declare dso_local i32 @info(i8*) #2

declare dso_local i32 @dibusb_thomson_tuner_attach(%struct.dvb_usb_adapter*) #2

declare dso_local i32 @dibusb_panasonic_tuner_attach(%struct.dvb_usb_adapter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
