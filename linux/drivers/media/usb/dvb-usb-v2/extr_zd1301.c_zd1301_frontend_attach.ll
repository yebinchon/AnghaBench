; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_zd1301.c_zd1301_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_zd1301.c_zd1301_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.dvb_frontend** }
%struct.dvb_frontend = type { i32 }
%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.zd1301_dev = type { %struct.i2c_client*, %struct.platform_device*, %struct.TYPE_7__, %struct.TYPE_12__ }
%struct.i2c_client = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.dvb_frontend* }
%struct.TYPE_12__ = type { i32, i32, %struct.dvb_usb_device* }
%struct.i2c_board_info = type { i32, %struct.TYPE_7__*, i32 }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@zd1301_demod_rreg = common dso_local global i32 0, align 4
@zd1301_demod_wreg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"zd1301_demod\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"mt2060\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @zd1301_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1301_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.zd1301_dev*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.i2c_board_info, align 8
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca %struct.dvb_frontend*, align 8
  %12 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %14 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %13)
  store %struct.dvb_usb_device* %14, %struct.dvb_usb_device** %4, align 8
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %16 = call %struct.zd1301_dev* @adap_to_priv(%struct.dvb_usb_adapter* %15)
  store %struct.zd1301_dev* %16, %struct.zd1301_dev** %5, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = load %struct.usb_interface*, %struct.usb_interface** %18, align 8
  store %struct.usb_interface* %19, %struct.usb_interface** %6, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %24 = load %struct.zd1301_dev*, %struct.zd1301_dev** %5, align 8
  %25 = getelementptr inbounds %struct.zd1301_dev, %struct.zd1301_dev* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  store %struct.dvb_usb_device* %23, %struct.dvb_usb_device** %26, align 8
  %27 = load i32, i32* @zd1301_demod_rreg, align 4
  %28 = load %struct.zd1301_dev*, %struct.zd1301_dev** %5, align 8
  %29 = getelementptr inbounds %struct.zd1301_dev, %struct.zd1301_dev* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @zd1301_demod_wreg, align 4
  %32 = load %struct.zd1301_dev*, %struct.zd1301_dev** %5, align 8
  %33 = getelementptr inbounds %struct.zd1301_dev, %struct.zd1301_dev* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = call i32 @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 0
  %38 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %39 = load %struct.zd1301_dev*, %struct.zd1301_dev** %5, align 8
  %40 = getelementptr inbounds %struct.zd1301_dev, %struct.zd1301_dev* %39, i32 0, i32 3
  %41 = call %struct.platform_device* @platform_device_register_data(i32* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %38, %struct.TYPE_12__* %40, i32 16)
  store %struct.platform_device* %41, %struct.platform_device** %7, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %43 = call i64 @IS_ERR(%struct.platform_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %1
  %46 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %47 = call i32 @PTR_ERR(%struct.platform_device* %46)
  store i32 %47, i32* %12, align 4
  br label %151

48:                                               ; preds = %1
  %49 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %151

57:                                               ; preds = %48
  %58 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @try_module_get(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %148

69:                                               ; preds = %57
  %70 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %71 = call %struct.i2c_adapter* @zd1301_demod_get_i2c_adapter(%struct.platform_device* %70)
  store %struct.i2c_adapter* %71, %struct.i2c_adapter** %10, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %73 = call %struct.dvb_frontend* @zd1301_demod_get_dvb_frontend(%struct.platform_device* %72)
  store %struct.dvb_frontend* %73, %struct.dvb_frontend** %11, align 8
  %74 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %75 = icmp ne %struct.i2c_adapter* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %11, align 8
  %78 = icmp ne %struct.dvb_frontend* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %76, %69
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %140

82:                                               ; preds = %76
  %83 = load %struct.zd1301_dev*, %struct.zd1301_dev** %5, align 8
  %84 = getelementptr inbounds %struct.zd1301_dev, %struct.zd1301_dev* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 9, i32* %85, align 8
  %86 = load %struct.dvb_frontend*, %struct.dvb_frontend** %11, align 8
  %87 = load %struct.zd1301_dev*, %struct.zd1301_dev** %5, align 8
  %88 = getelementptr inbounds %struct.zd1301_dev, %struct.zd1301_dev* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store %struct.dvb_frontend* %86, %struct.dvb_frontend** %89, align 8
  %90 = call i32 @memset(%struct.i2c_board_info* %9, i32 0, i32 24)
  %91 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @I2C_NAME_SIZE, align 4
  %94 = call i32 @strscpy(i32 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 0
  store i32 96, i32* %95, align 8
  %96 = load %struct.zd1301_dev*, %struct.zd1301_dev** %5, align 8
  %97 = getelementptr inbounds %struct.zd1301_dev, %struct.zd1301_dev* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 1
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %98, align 8
  %99 = call i32 @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %100 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %101 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %100, %struct.i2c_board_info* %9)
  store %struct.i2c_client* %101, %struct.i2c_client** %8, align 8
  %102 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %103 = icmp ne %struct.i2c_client* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %82
  %105 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = icmp ne %struct.TYPE_8__* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %104, %82
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %12, align 4
  br label %140

113:                                              ; preds = %104
  %114 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @try_module_get(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = load i32, i32* @ENODEV, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %12, align 4
  br label %137

125:                                              ; preds = %113
  %126 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %127 = load %struct.zd1301_dev*, %struct.zd1301_dev** %5, align 8
  %128 = getelementptr inbounds %struct.zd1301_dev, %struct.zd1301_dev* %127, i32 0, i32 1
  store %struct.platform_device* %126, %struct.platform_device** %128, align 8
  %129 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %130 = load %struct.zd1301_dev*, %struct.zd1301_dev** %5, align 8
  %131 = getelementptr inbounds %struct.zd1301_dev, %struct.zd1301_dev* %130, i32 0, i32 0
  store %struct.i2c_client* %129, %struct.i2c_client** %131, align 8
  %132 = load %struct.dvb_frontend*, %struct.dvb_frontend** %11, align 8
  %133 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %134 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %133, i32 0, i32 0
  %135 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %134, align 8
  %136 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %135, i64 0
  store %struct.dvb_frontend* %132, %struct.dvb_frontend** %136, align 8
  store i32 0, i32* %2, align 4
  br label %157

137:                                              ; preds = %122
  %138 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %139 = call i32 @i2c_unregister_device(%struct.i2c_client* %138)
  br label %140

140:                                              ; preds = %137, %110, %79
  %141 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @module_put(i32 %146)
  br label %148

148:                                              ; preds = %140, %66
  %149 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %150 = call i32 @platform_device_unregister(%struct.platform_device* %149)
  br label %151

151:                                              ; preds = %148, %54, %45
  %152 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %153 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %152, i32 0, i32 0
  %154 = load i32, i32* %12, align 4
  %155 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %151, %125
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.zd1301_dev* @adap_to_priv(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @request_module(i8*, i8*) #1

declare dso_local %struct.platform_device* @platform_device_register_data(i32*, i8*, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.i2c_adapter* @zd1301_demod_get_i2c_adapter(%struct.platform_device*) #1

declare dso_local %struct.dvb_frontend* @zd1301_demod_get_dvb_frontend(%struct.platform_device*) #1

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
