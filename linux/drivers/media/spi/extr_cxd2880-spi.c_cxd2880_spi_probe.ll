; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.cxd2880_dvb_spi = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, %struct.spi_device*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32, i32, i8*, i8*, %struct.cxd2880_dvb_spi* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__*, i8* }
%struct.TYPE_12__ = type { i32 }
%struct.cxd2880_config = type { i32*, %struct.spi_device* }

@.str = private unnamed_addr constant [14 x i8] c"invalid arg.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"CXD2880\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@adapter_nr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"dvb_register_adapter() failed\0A\00", align 1
@cxd2880_attach = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"cxd2880_attach failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"dvb_register_frontend() failed\0A\00", align 1
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@CXD2880_MAX_FILTER_SIZE = common dso_local global i8* null, align 8
@cxd2880_start_feed = common dso_local global i32 0, align 4
@cxd2880_stop_feed = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"dvb_dmx_init() failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"dvb_dmxdev_init() failed\0A\00", align 1
@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"add_frontend() failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Sony CXD2880 has successfully attached.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @cxd2880_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_dvb_spi*, align 8
  %6 = alloca %struct.cxd2880_config, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.cxd2880_dvb_spi* null, %struct.cxd2880_dvb_spi** %5, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = icmp ne %struct.spi_device* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %232

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.cxd2880_dvb_spi* @kzalloc(i32 120, i32 %14)
  store %struct.cxd2880_dvb_spi* %15, %struct.cxd2880_dvb_spi** %5, align 8
  %16 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %17 = icmp ne %struct.cxd2880_dvb_spi* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %232

21:                                               ; preds = %13
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = call i32* @devm_regulator_get_optional(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %26 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %25, i32 0, i32 7
  store i32* %24, i32** %26, align 8
  %27 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %28 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @IS_ERR(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %21
  %33 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %34 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @PTR_ERR(i32* %35)
  %37 = load i32, i32* @EPROBE_DEFER, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EPROBE_DEFER, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %228

43:                                               ; preds = %32
  %44 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %45 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %44, i32 0, i32 7
  store i32* null, i32** %45, align 8
  br label %55

46:                                               ; preds = %21
  %47 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %48 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %47, i32 0, i32 7
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @regulator_enable(i32* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %228

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %43
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %58 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %57, i32 0, i32 6
  store %struct.spi_device* %56, %struct.spi_device** %58, align 8
  %59 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %60 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %59, i32 0, i32 5
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 0
  %64 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %65 = call i32 @dev_set_drvdata(i32* %63, %struct.cxd2880_dvb_spi* %64)
  %66 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %67 = getelementptr inbounds %struct.cxd2880_config, %struct.cxd2880_config* %6, i32 0, i32 1
  store %struct.spi_device* %66, %struct.spi_device** %67, align 8
  %68 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %69 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.cxd2880_config, %struct.cxd2880_config* %6, i32 0, i32 0
  store i32* %69, i32** %70, align 8
  %71 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %72 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %71, i32 0, i32 0
  %73 = load i32, i32* @THIS_MODULE, align 4
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %74, i32 0, i32 0
  %76 = load i32, i32* @adapter_nr, align 4
  %77 = call i32 @dvb_register_adapter(i32* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %55
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %228

82:                                               ; preds = %55
  %83 = load i32, i32* @cxd2880_attach, align 4
  %84 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %85 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %84, i32 0, i32 1
  %86 = call i32 @dvb_attach(i32 %83, i32* %85, %struct.cxd2880_config* %6)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %224

92:                                               ; preds = %82
  %93 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %94 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %93, i32 0, i32 0
  %95 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %96 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %95, i32 0, i32 1
  %97 = call i32 @dvb_register_frontend(i32* %94, i32* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %220

102:                                              ; preds = %92
  %103 = load i32, i32* @DMX_TS_FILTERING, align 4
  %104 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %105 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i32 %103, i32* %107, align 8
  %108 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %109 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %110 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 5
  store %struct.cxd2880_dvb_spi* %108, %struct.cxd2880_dvb_spi** %111, align 8
  %112 = load i8*, i8** @CXD2880_MAX_FILTER_SIZE, align 8
  %113 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %114 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  store i8* %112, i8** %115, align 8
  %116 = load i8*, i8** @CXD2880_MAX_FILTER_SIZE, align 8
  %117 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %118 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 3
  store i8* %116, i8** %119, align 8
  %120 = load i32, i32* @cxd2880_start_feed, align 4
  %121 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %122 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* @cxd2880_stop_feed, align 4
  %125 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %126 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 8
  %128 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %129 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %128, i32 0, i32 2
  %130 = call i32 @dvb_dmx_init(%struct.TYPE_14__* %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %102
  %134 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %216

135:                                              ; preds = %102
  %136 = load i8*, i8** @CXD2880_MAX_FILTER_SIZE, align 8
  %137 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %138 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  store i8* %136, i8** %139, align 8
  %140 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %141 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %144 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  store %struct.TYPE_11__* %142, %struct.TYPE_11__** %145, align 8
  %146 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %147 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %150 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %149, i32 0, i32 3
  %151 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %152 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %151, i32 0, i32 0
  %153 = call i32 @dvb_dmxdev_init(%struct.TYPE_13__* %150, i32* %152)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %135
  %157 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %212

158:                                              ; preds = %135
  %159 = load i32, i32* @DMX_FRONTEND_0, align 4
  %160 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %161 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 8
  %163 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %164 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %166, align 8
  %168 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %169 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %172 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %171, i32 0, i32 4
  %173 = call i32 %167(%struct.TYPE_11__* %170, %struct.TYPE_12__* %172)
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* %4, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %158
  %177 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %208

178:                                              ; preds = %158
  %179 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %180 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  %183 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %182, align 8
  %184 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %185 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %188 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %187, i32 0, i32 4
  %189 = call i32 %183(%struct.TYPE_11__* %186, %struct.TYPE_12__* %188)
  store i32 %189, i32* %4, align 4
  %190 = load i32, i32* %4, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %178
  %193 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %196

194:                                              ; preds = %178
  %195 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %232

196:                                              ; preds = %192
  %197 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %198 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 2
  %201 = load i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)*, i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)** %200, align 8
  %202 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %203 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  %205 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %206 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %205, i32 0, i32 4
  %207 = call i32 %201(%struct.TYPE_11__* %204, %struct.TYPE_12__* %206)
  br label %208

208:                                              ; preds = %196, %176
  %209 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %210 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %209, i32 0, i32 3
  %211 = call i32 @dvb_dmxdev_release(%struct.TYPE_13__* %210)
  br label %212

212:                                              ; preds = %208, %156
  %213 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %214 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %213, i32 0, i32 2
  %215 = call i32 @dvb_dmx_release(%struct.TYPE_14__* %214)
  br label %216

216:                                              ; preds = %212, %133
  %217 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %218 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %217, i32 0, i32 1
  %219 = call i32 @dvb_unregister_frontend(i32* %218)
  br label %220

220:                                              ; preds = %216, %100
  %221 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %222 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %221, i32 0, i32 1
  %223 = call i32 @dvb_frontend_detach(i32* %222)
  br label %224

224:                                              ; preds = %220, %88
  %225 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %226 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %225, i32 0, i32 0
  %227 = call i32 @dvb_unregister_adapter(i32* %226)
  br label %228

228:                                              ; preds = %224, %80, %53, %40
  %229 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %5, align 8
  %230 = call i32 @kfree(%struct.cxd2880_dvb_spi* %229)
  %231 = load i32, i32* %4, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %228, %194, %18, %9
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.cxd2880_dvb_spi* @kzalloc(i32, i32) #1

declare dso_local i32* @devm_regulator_get_optional(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @regulator_enable(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.cxd2880_dvb_spi*) #1

declare dso_local i32 @dvb_register_adapter(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @dvb_attach(i32, i32*, %struct.cxd2880_config*) #1

declare dso_local i32 @dvb_register_frontend(i32*, i32*) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_14__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_13__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_14__*) #1

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @dvb_frontend_detach(i32*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.cxd2880_dvb_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
