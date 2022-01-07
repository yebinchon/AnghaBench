; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_dualdig4_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_dualdig4_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"set interface failed\00", align 1
@CMD_DIGITAL = common dso_local global i32 0, align 4
@zl10353_attach = common dso_local global i32 0, align 4
@cxusb_zl10353_xc3028_config_no_i2c_gate = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"No IR receiver detected on this device.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @cxusb_dualdig4_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_dualdig4_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  store i32 107, i32* %7, align 8
  %8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  store i32* %9, i32** %8, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 2
  store i32 4, i32* %10, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 3
  %12 = load i32, i32* @I2C_M_RD, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @usb_set_interface(i32 %17, i32 0, i32 1)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %1
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = load i32, i32* @CMD_DIGITAL, align 4
  %27 = call i32 @cxusb_ctrl_msg(%struct.TYPE_12__* %25, i32 %26, i32* null, i32 0, i32* null, i32 0)
  %28 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = call i32 @cxusb_bluebird_gpio_rw(%struct.TYPE_12__* %30, i32 4, i32 0)
  %32 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = call i32 @cxusb_bluebird_gpio_pulse(%struct.TYPE_12__* %34, i32 1, i32 1)
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = call i32 @cxusb_bluebird_gpio_pulse(%struct.TYPE_12__* %38, i32 2, i32 1)
  %40 = load i32, i32* @zl10353_attach, align 4
  %41 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = call i32 @dvb_attach(i32 %40, i32* @cxusb_zl10353_xc3028_config_no_i2c_gate, i32* %44)
  %46 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 4
  %51 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %22
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %117

61:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %113, %61
  %63 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 5
  br label %75

75:                                               ; preds = %72, %62
  %76 = phi i1 [ false, %62 ], [ %74, %72 ]
  br i1 %76, label %77, label %116

77:                                               ; preds = %75
  %78 = call i32 @msleep(i32 20)
  %79 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = call i32 @cxusb_i2c_xfer(i32* %82, %struct.i2c_msg* %6, i32 1)
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %103

86:                                               ; preds = %77
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %113

95:                                               ; preds = %90, %86
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %97, %99
  %101 = icmp ne i32 %100, 255
  br i1 %101, label %102, label %112

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %85
  %104 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  store i32* null, i32** %110, align 8
  %111 = call i32 @info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %116

112:                                              ; preds = %95
  br label %113

113:                                              ; preds = %112, %94
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %62

116:                                              ; preds = %103, %75
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %58
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i64 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @cxusb_ctrl_msg(%struct.TYPE_12__*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @cxusb_bluebird_gpio_rw(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @cxusb_bluebird_gpio_pulse(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @dvb_attach(i32, i32*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cxusb_i2c_xfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
