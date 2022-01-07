; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_streaming_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_streaming_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.dvb_usb_device* }
%struct.dvb_usb_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32** }

@cxusb_table = common dso_local global i32* null, align 8
@MEDION_MD95700 = common dso_local global i64 0, align 8
@__const.cxusb_streaming_ctrl.buf = private unnamed_addr constant [2 x i32] [i32 3, i32 0], align 4
@CXUSB_OPEN_DIGITAL = common dso_local global i32 0, align 4
@CMD_STREAMING_ON = common dso_local global i32 0, align 4
@CMD_STREAMING_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*, i32)* @cxusb_streaming_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_streaming_ctrl(%struct.dvb_usb_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 0
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %11, align 8
  store %struct.dvb_usb_device* %12, %struct.dvb_usb_device** %6, align 8
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32**, i32*** %18, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32*, i32** @cxusb_table, align 8
  %23 = load i64, i64* @MEDION_MD95700, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = icmp eq i32* %21, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast ([2 x i32]* @__const.cxusb_streaming_ctrl.buf to i8*), i64 8, i1 false)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %35 = load i32, i32* @CXUSB_OPEN_DIGITAL, align 4
  %36 = call i32 @cxusb_medion_get(%struct.dvb_usb_device* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %64

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %30, %2
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %47 = load i32, i32* @CMD_STREAMING_ON, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %49 = call i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %46, i32 %47, i32* %48, i32 2, i32* null, i32 0)
  br label %54

50:                                               ; preds = %42
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %52 = load i32, i32* @CMD_STREAMING_OFF, align 4
  %53 = call i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %51, i32 %52, i32* null, i32 0, i32* null, i32 0)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %62 = call i32 @cxusb_medion_put(%struct.dvb_usb_device* %61)
  br label %63

63:                                               ; preds = %60, %57, %54
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %39
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cxusb_medion_get(%struct.dvb_usb_device*, i32) #2

declare dso_local i32 @cxusb_ctrl_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @cxusb_medion_put(%struct.dvb_usb_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
