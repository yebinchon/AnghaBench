; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2832u_tuner_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2832u_tuner_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_17__** }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.rtl28xxu_dev = type { i32, %struct.platform_device*, %struct.TYPE_12__, %struct.i2c_client*, i32* }
%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.i2c_client = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.dvb_frontend = type { i32 }
%struct.i2c_board_info = type { i32, i32, %struct.v4l2_subdev*, %struct.dvb_usb_device*, %struct.TYPE_17__*, i32, i32, i32, %struct.tua9001_platform_data* }
%struct.v4l2_subdev = type { i32 }
%struct.tua9001_platform_data = type { i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.v4l2_subdev* (%struct.i2c_client.0*)* }
%struct.i2c_client.0 = type opaque
%struct.rtl2832_sdr_platform_data = type { i32, i32, %struct.v4l2_subdev*, %struct.dvb_usb_device*, %struct.TYPE_17__*, i32, i32, i32, %struct.tua9001_platform_data* }
%struct.e4000_config = type { i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.v4l2_subdev* (%struct.i2c_client*)* }
%struct.fc2580_platform_data = type { i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.v4l2_subdev* (%struct.i2c_client*)* }
%struct.si2157_config = type { i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.v4l2_subdev* (%struct.i2c_client.1*)* }
%struct.i2c_client.1 = type opaque

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@fc0012_attach = common dso_local global i32 0, align 4
@rtl2832u_fc0012_config = common dso_local global i32 0, align 4
@fc0013_attach = common dso_local global i32 0, align 4
@FC_XTAL_28_8_MHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"e4000\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"fc2580\00", align 1
@SYS_GPIO_DIR = common dso_local global i32 0, align 4
@SYS_GPIO_OUT_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"tua9001\00", align 1
@r820t_attach = common dso_local global i32 0, align 4
@rtl2832u_r820t_config = common dso_local global i32 0, align 4
@rtl2832u_r828d_config = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"si2157\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"unknown tuner %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"rtl2832_sdr\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"no SDR for tuner=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @rtl2832u_tuner_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832u_tuner_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_device*, align 8
  %6 = alloca %struct.rtl28xxu_dev*, align 8
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca %struct.i2c_board_info, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.v4l2_subdev*, align 8
  %11 = alloca %struct.platform_device*, align 8
  %12 = alloca %struct.rtl2832_sdr_platform_data, align 8
  %13 = alloca %struct.e4000_config, align 8
  %14 = alloca %struct.fc2580_platform_data, align 8
  %15 = alloca %struct.i2c_board_info, align 8
  %16 = alloca %struct.tua9001_platform_data, align 8
  %17 = alloca %struct.i2c_board_info, align 8
  %18 = alloca %struct.si2157_config, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %19 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %20 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %19)
  store %struct.dvb_usb_device* %20, %struct.dvb_usb_device** %5, align 8
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %22 = call %struct.rtl28xxu_dev* @d_to_priv(%struct.dvb_usb_device* %21)
  store %struct.rtl28xxu_dev* %22, %struct.rtl28xxu_dev** %6, align 8
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %7, align 8
  store %struct.v4l2_subdev* null, %struct.v4l2_subdev** %10, align 8
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = bitcast %struct.i2c_board_info* %8 to %struct.rtl2832_sdr_platform_data*
  %29 = call i32 @memset(%struct.rtl2832_sdr_platform_data* %28, i32 0, i32 56)
  %30 = call i32 @memset(%struct.rtl2832_sdr_platform_data* %12, i32 0, i32 56)
  %31 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %32 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %431 [
    i32 134, label %34
    i32 133, label %61
    i32 135, label %89
    i32 132, label %145
    i32 128, label %196
    i32 131, label %256
    i32 130, label %283
    i32 129, label %344
  ]

34:                                               ; preds = %1
  %35 = load i32, i32* @fc0012_attach, align 4
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %38, i64 0
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %42 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = call %struct.dvb_frontend* (i32, %struct.TYPE_17__*, i32*, i32, ...) @dvb_attach(i32 %35, %struct.TYPE_17__* %40, i32* %43, i32 ptrtoint (i32* @rtl2832u_fc0012_config to i32))
  store %struct.dvb_frontend* %44, %struct.dvb_frontend** %7, align 8
  %45 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %47, i64 0
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %54, i32 0, i32 0
  %56 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %56, i64 0
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  store i32 %53, i32* %60, align 4
  br label %440

61:                                               ; preds = %1
  %62 = load i32, i32* @fc0013_attach, align 4
  %63 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %63, i32 0, i32 0
  %65 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %65, i64 0
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %69 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @FC_XTAL_28_8_MHZ, align 4
  %72 = call %struct.dvb_frontend* (i32, %struct.TYPE_17__*, i32*, i32, ...) @dvb_attach(i32 %62, %struct.TYPE_17__* %67, i32* %70, i32 99, i32 0, i32 %71)
  store %struct.dvb_frontend* %72, %struct.dvb_frontend** %7, align 8
  %73 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %73, i32 0, i32 0
  %75 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %75, i64 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %82, i32 0, i32 0
  %84 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %84, i64 0
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  store i32 %81, i32* %88, align 4
  br label %440

89:                                               ; preds = %1
  %90 = getelementptr inbounds %struct.e4000_config, %struct.e4000_config* %13, i32 0, i32 0
  store i32 28800000, i32* %90, align 8
  %91 = getelementptr inbounds %struct.e4000_config, %struct.e4000_config* %13, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = getelementptr inbounds %struct.e4000_config, %struct.e4000_config* %13, i32 0, i32 2
  store i32 0, i32* %92, align 8
  %93 = getelementptr inbounds %struct.e4000_config, %struct.e4000_config* %13, i32 0, i32 3
  %94 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %94, i32 0, i32 0
  %96 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %96, i64 0
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  store %struct.TYPE_17__* %98, %struct.TYPE_17__** %93, align 8
  %99 = getelementptr inbounds %struct.e4000_config, %struct.e4000_config* %13, i32 0, i32 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %99, align 8
  %100 = getelementptr inbounds %struct.e4000_config, %struct.e4000_config* %13, i32 0, i32 5
  store %struct.v4l2_subdev* (%struct.i2c_client*)* null, %struct.v4l2_subdev* (%struct.i2c_client*)** %100, align 8
  %101 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @I2C_NAME_SIZE, align 4
  %104 = call i32 @strscpy(i32 %102, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 0
  store i32 100, i32* %105, align 8
  %106 = bitcast %struct.e4000_config* %13 to %struct.tua9001_platform_data*
  %107 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 8
  store %struct.tua9001_platform_data* %106, %struct.tua9001_platform_data** %107, align 8
  %108 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = call i32 (i8*, ...) @request_module(i8* %111)
  %113 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %114 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = bitcast %struct.i2c_board_info* %8 to %struct.rtl2832_sdr_platform_data*
  %117 = call %struct.i2c_client* @i2c_new_device(i32* %115, %struct.rtl2832_sdr_platform_data* %116)
  store %struct.i2c_client* %117, %struct.i2c_client** %9, align 8
  %118 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %119 = icmp eq %struct.i2c_client* %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %89
  %121 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %122 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = icmp eq %struct.TYPE_10__* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %120, %89
  br label %440

127:                                              ; preds = %120
  %128 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %129 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @try_module_get(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %127
  %137 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %138 = call i32 @i2c_unregister_device(%struct.i2c_client* %137)
  br label %440

139:                                              ; preds = %127
  %140 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %141 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %142 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %141, i32 0, i32 3
  store %struct.i2c_client* %140, %struct.i2c_client** %142, align 8
  %143 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %144 = call %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client* %143)
  store %struct.v4l2_subdev* %144, %struct.v4l2_subdev** %10, align 8
  br label %440

145:                                              ; preds = %1
  %146 = bitcast %struct.fc2580_platform_data* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %146, i8 0, i64 40, i1 false)
  %147 = getelementptr inbounds %struct.fc2580_platform_data, %struct.fc2580_platform_data* %14, i32 0, i32 4
  %148 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %149 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %148, i32 0, i32 0
  %150 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %150, i64 0
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  store %struct.TYPE_17__* %152, %struct.TYPE_17__** %147, align 8
  %153 = bitcast %struct.i2c_board_info* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %153, i8 0, i64 56, i1 false)
  %154 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %15, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @I2C_NAME_SIZE, align 4
  %157 = call i32 @strscpy(i32 %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  %158 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %15, i32 0, i32 0
  store i32 86, i32* %158, align 8
  %159 = bitcast %struct.fc2580_platform_data* %14 to %struct.tua9001_platform_data*
  %160 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %15, i32 0, i32 8
  store %struct.tua9001_platform_data* %159, %struct.tua9001_platform_data** %160, align 8
  %161 = call i32 (i8*, ...) @request_module(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %162 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %163 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = bitcast %struct.i2c_board_info* %15 to %struct.rtl2832_sdr_platform_data*
  %166 = call %struct.i2c_client* @i2c_new_device(i32* %164, %struct.rtl2832_sdr_platform_data* %165)
  store %struct.i2c_client* %166, %struct.i2c_client** %9, align 8
  %167 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %168 = icmp eq %struct.i2c_client* %167, null
  br i1 %168, label %175, label %169

169:                                              ; preds = %145
  %170 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = icmp eq %struct.TYPE_10__* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %169, %145
  br label %440

176:                                              ; preds = %169
  %177 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %178 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @try_module_get(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %176
  %186 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %187 = call i32 @i2c_unregister_device(%struct.i2c_client* %186)
  br label %440

188:                                              ; preds = %176
  %189 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %190 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %191 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %190, i32 0, i32 3
  store %struct.i2c_client* %189, %struct.i2c_client** %191, align 8
  %192 = getelementptr inbounds %struct.fc2580_platform_data, %struct.fc2580_platform_data* %14, i32 0, i32 5
  %193 = load %struct.v4l2_subdev* (%struct.i2c_client*)*, %struct.v4l2_subdev* (%struct.i2c_client*)** %192, align 8
  %194 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %195 = call %struct.v4l2_subdev* %193(%struct.i2c_client* %194)
  store %struct.v4l2_subdev* %195, %struct.v4l2_subdev** %10, align 8
  br label %440

196:                                              ; preds = %1
  %197 = bitcast %struct.tua9001_platform_data* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %197, i8 0, i64 40, i1 false)
  %198 = getelementptr inbounds %struct.tua9001_platform_data, %struct.tua9001_platform_data* %16, i32 0, i32 4
  %199 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %200 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %199, i32 0, i32 0
  %201 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %201, i64 0
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %202, align 8
  store %struct.TYPE_17__* %203, %struct.TYPE_17__** %198, align 8
  %204 = bitcast %struct.i2c_board_info* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %204, i8 0, i64 56, i1 false)
  %205 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %206 = load i32, i32* @SYS_GPIO_DIR, align 4
  %207 = call i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device* %205, i32 %206, i32 0, i32 18)
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* %4, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %196
  br label %511

211:                                              ; preds = %196
  %212 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %213 = load i32, i32* @SYS_GPIO_OUT_EN, align 4
  %214 = call i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device* %212, i32 %213, i32 18, i32 18)
  store i32 %214, i32* %4, align 4
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  br label %511

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %17, i32 0, i32 7
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @I2C_NAME_SIZE, align 4
  %222 = call i32 @strscpy(i32 %220, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %221)
  %223 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %17, i32 0, i32 0
  store i32 96, i32* %223, align 8
  %224 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %17, i32 0, i32 8
  store %struct.tua9001_platform_data* %16, %struct.tua9001_platform_data** %224, align 8
  %225 = call i32 (i8*, ...) @request_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %226 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %227 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = bitcast %struct.i2c_board_info* %17 to %struct.rtl2832_sdr_platform_data*
  %230 = call %struct.i2c_client* @i2c_new_device(i32* %228, %struct.rtl2832_sdr_platform_data* %229)
  store %struct.i2c_client* %230, %struct.i2c_client** %9, align 8
  %231 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %232 = icmp eq %struct.i2c_client* %231, null
  br i1 %232, label %239, label %233

233:                                              ; preds = %218
  %234 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %235 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %236, align 8
  %238 = icmp eq %struct.TYPE_10__* %237, null
  br i1 %238, label %239, label %240

239:                                              ; preds = %233, %218
  br label %440

240:                                              ; preds = %233
  %241 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %242 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @try_module_get(i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %240
  %250 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %251 = call i32 @i2c_unregister_device(%struct.i2c_client* %250)
  br label %440

252:                                              ; preds = %240
  %253 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %254 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %255 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %254, i32 0, i32 3
  store %struct.i2c_client* %253, %struct.i2c_client** %255, align 8
  br label %440

256:                                              ; preds = %1
  %257 = load i32, i32* @r820t_attach, align 4
  %258 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %259 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %258, i32 0, i32 0
  %260 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %260, i64 0
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %261, align 8
  %263 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %264 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %263, i32 0, i32 4
  %265 = load i32*, i32** %264, align 8
  %266 = call %struct.dvb_frontend* (i32, %struct.TYPE_17__*, i32*, i32, ...) @dvb_attach(i32 %257, %struct.TYPE_17__* %262, i32* %265, i32 ptrtoint (i32* @rtl2832u_r820t_config to i32))
  store %struct.dvb_frontend* %266, %struct.dvb_frontend** %7, align 8
  %267 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %268 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %267, i32 0, i32 0
  %269 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %269, i64 0
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %277 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %276, i32 0, i32 0
  %278 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %278, i64 0
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 1
  store i32 %275, i32* %282, align 4
  br label %440

283:                                              ; preds = %1
  %284 = load i32, i32* @r820t_attach, align 4
  %285 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %286 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %285, i32 0, i32 0
  %287 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %287, i64 0
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %288, align 8
  %290 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %291 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %290, i32 0, i32 4
  %292 = load i32*, i32** %291, align 8
  %293 = call %struct.dvb_frontend* (i32, %struct.TYPE_17__*, i32*, i32, ...) @dvb_attach(i32 %284, %struct.TYPE_17__* %289, i32* %292, i32 ptrtoint (i32* @rtl2832u_r828d_config to i32))
  store %struct.dvb_frontend* %293, %struct.dvb_frontend** %7, align 8
  %294 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %295 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %294, i32 0, i32 0
  %296 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %296, i64 0
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %304 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %303, i32 0, i32 0
  %305 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %305, i64 0
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 1
  store i32 %302, i32* %309, align 4
  %310 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %311 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %310, i32 0, i32 0
  %312 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %312, i64 1
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %313, align 8
  %315 = icmp ne %struct.TYPE_17__* %314, null
  br i1 %315, label %316, label %343

316:                                              ; preds = %283
  %317 = load i32, i32* @r820t_attach, align 4
  %318 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %319 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %318, i32 0, i32 0
  %320 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %320, i64 1
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %321, align 8
  %323 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %324 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %323, i32 0, i32 4
  %325 = load i32*, i32** %324, align 8
  %326 = call %struct.dvb_frontend* (i32, %struct.TYPE_17__*, i32*, i32, ...) @dvb_attach(i32 %317, %struct.TYPE_17__* %322, i32* %325, i32 ptrtoint (i32* @rtl2832u_r828d_config to i32))
  store %struct.dvb_frontend* %326, %struct.dvb_frontend** %7, align 8
  %327 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %328 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %327, i32 0, i32 0
  %329 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %329, i64 1
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %337 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %336, i32 0, i32 0
  %338 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %338, i64 1
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 1
  store i32 %335, i32* %342, align 4
  br label %343

343:                                              ; preds = %316, %283
  br label %440

344:                                              ; preds = %1
  %345 = bitcast %struct.si2157_config* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %345, i8 0, i64 40, i1 false)
  %346 = getelementptr inbounds %struct.si2157_config, %struct.si2157_config* %18, i32 0, i32 3
  %347 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %348 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %347, i32 0, i32 0
  %349 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %349, i64 0
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %350, align 8
  store %struct.TYPE_17__* %351, %struct.TYPE_17__** %346, align 8
  %352 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 7
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @I2C_NAME_SIZE, align 4
  %355 = call i32 @strscpy(i32 %353, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %354)
  %356 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 0
  store i32 96, i32* %356, align 8
  %357 = bitcast %struct.si2157_config* %18 to %struct.tua9001_platform_data*
  %358 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 8
  store %struct.tua9001_platform_data* %357, %struct.tua9001_platform_data** %358, align 8
  %359 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 7
  %360 = load i32, i32* %359, align 8
  %361 = sext i32 %360 to i64
  %362 = inttoptr i64 %361 to i8*
  %363 = call i32 (i8*, ...) @request_module(i8* %362)
  %364 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %365 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %364, i32 0, i32 1
  %366 = bitcast %struct.i2c_board_info* %8 to %struct.rtl2832_sdr_platform_data*
  %367 = call %struct.i2c_client* @i2c_new_device(i32* %365, %struct.rtl2832_sdr_platform_data* %366)
  store %struct.i2c_client* %367, %struct.i2c_client** %9, align 8
  %368 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %369 = icmp eq %struct.i2c_client* %368, null
  br i1 %369, label %376, label %370

370:                                              ; preds = %344
  %371 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %372 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %373, align 8
  %375 = icmp eq %struct.TYPE_10__* %374, null
  br i1 %375, label %376, label %377

376:                                              ; preds = %370, %344
  br label %440

377:                                              ; preds = %370
  %378 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %379 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 0
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @try_module_get(i32 %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %389, label %386

386:                                              ; preds = %377
  %387 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %388 = call i32 @i2c_unregister_device(%struct.i2c_client* %387)
  br label %440

389:                                              ; preds = %377
  %390 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %391 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %392 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %391, i32 0, i32 3
  store %struct.i2c_client* %390, %struct.i2c_client** %392, align 8
  %393 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %394 = call %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client* %393)
  store %struct.v4l2_subdev* %394, %struct.v4l2_subdev** %10, align 8
  %395 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %396 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %395, i32 0, i32 0
  %397 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %397, i64 1
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %398, align 8
  %400 = icmp ne %struct.TYPE_17__* %399, null
  br i1 %400, label %401, label %430

401:                                              ; preds = %389
  %402 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %403 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %402, i32 0, i32 0
  %404 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %404, i64 0
  %406 = load %struct.TYPE_17__*, %struct.TYPE_17__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %410 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %409, i32 0, i32 0
  %411 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %411, i64 1
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 1
  store i32 %408, i32* %414, align 4
  %415 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %416 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %415, i32 0, i32 0
  %417 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %417, i64 1
  %419 = load %struct.TYPE_17__*, %struct.TYPE_17__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %420, i32 0, i32 0
  %422 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %423 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %422, i32 0, i32 0
  %424 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %424, i64 0
  %426 = load %struct.TYPE_17__*, %struct.TYPE_17__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %427, i32 0, i32 0
  %429 = call i32 @memcpy(%struct.TYPE_16__* %421, %struct.TYPE_16__* %428, i32 4)
  br label %430

430:                                              ; preds = %401, %389
  br label %440

431:                                              ; preds = %1
  %432 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %433 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %432, i32 0, i32 0
  %434 = load %struct.TYPE_14__*, %struct.TYPE_14__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 0
  %436 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %437 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @dev_err(i32* %435, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %438)
  br label %440

440:                                              ; preds = %431, %430, %386, %376, %343, %256, %252, %249, %239, %188, %185, %175, %139, %136, %126, %61, %34
  %441 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %442 = icmp eq %struct.dvb_frontend* %441, null
  br i1 %442, label %443, label %451

443:                                              ; preds = %440
  %444 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %445 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %444, i32 0, i32 3
  %446 = load %struct.i2c_client*, %struct.i2c_client** %445, align 8
  %447 = icmp eq %struct.i2c_client* %446, null
  br i1 %447, label %448, label %451

448:                                              ; preds = %443
  %449 = load i32, i32* @ENODEV, align 4
  %450 = sub nsw i32 0, %449
  store i32 %450, i32* %4, align 4
  br label %511

451:                                              ; preds = %443, %440
  %452 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %453 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  switch i32 %454, label %501 [
    i32 132, label %455
    i32 134, label %455
    i32 133, label %455
    i32 135, label %455
    i32 131, label %455
    i32 130, label %455
  ]

455:                                              ; preds = %451, %451, %451, %451, %451, %451
  %456 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %457 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %456, i32 0, i32 2
  %458 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %12, i32 0, i32 6
  store i32 %459, i32* %460, align 4
  %461 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %462 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %12, i32 0, i32 1
  store i32 %463, i32* %464, align 4
  %465 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %466 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %465, i32 0, i32 2
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %12, i32 0, i32 5
  store i32 %468, i32* %469, align 8
  %470 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %471 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %470, i32 0, i32 0
  %472 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %472, i64 0
  %474 = load %struct.TYPE_17__*, %struct.TYPE_17__** %473, align 8
  %475 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %12, i32 0, i32 4
  store %struct.TYPE_17__* %474, %struct.TYPE_17__** %475, align 8
  %476 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %477 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %12, i32 0, i32 3
  store %struct.dvb_usb_device* %476, %struct.dvb_usb_device** %477, align 8
  %478 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %10, align 8
  %479 = getelementptr inbounds %struct.rtl2832_sdr_platform_data, %struct.rtl2832_sdr_platform_data* %12, i32 0, i32 2
  store %struct.v4l2_subdev* %478, %struct.v4l2_subdev** %479, align 8
  %480 = call i32 (i8*, ...) @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %481 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %482 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %481, i32 0, i32 0
  %483 = load %struct.TYPE_14__*, %struct.TYPE_14__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %483, i32 0, i32 0
  %485 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %486 = call %struct.platform_device* @platform_device_register_data(i32* %484, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %485, %struct.rtl2832_sdr_platform_data* %12, i32 56)
  store %struct.platform_device* %486, %struct.platform_device** %11, align 8
  %487 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %488 = call i32 @IS_ERR(%struct.platform_device* %487)
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %496, label %490

490:                                              ; preds = %455
  %491 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %492 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %492, i32 0, i32 0
  %494 = load i32*, i32** %493, align 8
  %495 = icmp eq i32* %494, null
  br i1 %495, label %496, label %497

496:                                              ; preds = %490, %455
  br label %510

497:                                              ; preds = %490
  %498 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %499 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %500 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %499, i32 0, i32 1
  store %struct.platform_device* %498, %struct.platform_device** %500, align 8
  br label %510

501:                                              ; preds = %451
  %502 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %503 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %502, i32 0, i32 0
  %504 = load %struct.TYPE_14__*, %struct.TYPE_14__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %504, i32 0, i32 0
  %506 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %6, align 8
  %507 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %505, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %508)
  br label %510

510:                                              ; preds = %501, %497, %496
  store i32 0, i32* %2, align 4
  br label %519

511:                                              ; preds = %448, %217, %210
  %512 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %5, align 8
  %513 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %512, i32 0, i32 0
  %514 = load %struct.TYPE_14__*, %struct.TYPE_14__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %514, i32 0, i32 0
  %516 = load i32, i32* %4, align 4
  %517 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %515, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %516)
  %518 = load i32, i32* %4, align 4
  store i32 %518, i32* %2, align 4
  br label %519

519:                                              ; preds = %511, %510
  %520 = load i32, i32* %2, align 4
  ret i32 %520
}

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local %struct.rtl28xxu_dev* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @memset(%struct.rtl2832_sdr_platform_data*, i32, i32) #1

declare dso_local %struct.dvb_frontend* @dvb_attach(i32, %struct.TYPE_17__*, i32*, i32, ...) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @request_module(i8*, ...) #1

declare dso_local %struct.i2c_client* @i2c_new_device(i32*, %struct.rtl2832_sdr_platform_data*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rtl28xxu_wr_reg_mask(%struct.dvb_usb_device*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.platform_device* @platform_device_register_data(i32*, i8*, i32, %struct.rtl2832_sdr_platform_data*, i32) #1

declare dso_local i32 @IS_ERR(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
