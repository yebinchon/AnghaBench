; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-i2c.c_si476x_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.si476x_core = type { i32, i32, i64, i32, %struct.mfd_cell*, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__, i32, i32, i32, %struct.i2c_client* }
%struct.mfd_cell = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.si476x_platform_data = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@SI476X_POWER_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"si476x reset\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to request gpio: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"No platform data provided\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"vd\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"va\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vio1\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"vio2\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Failed to get all of the regulators\0A\00", align 1
@SI476X_DRIVER_RDS_FIFO_DEPTH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"Could not allocate the FIFO\0A\00", align 1
@si476x_core_drain_rds_fifo = common dso_local global i32 0, align 4
@si476x_core_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"Could not request IRQ %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"IRQ requested.\0A\00", align 1
@si476x_core_poll_loop = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"No IRQ number specified, will use polling\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SI476X_RADIO_CELL = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"si476x-radio\00", align 1
@SI476X_CHIP_SI4761 = common dso_local global i64 0, align 8
@SI476X_CHIP_SI4764 = common dso_local global i64 0, align 8
@SI476X_CODEC_CELL = common dso_local global i64 0, align 8
@SI476X_DCLK_DAUDIO = common dso_local global i64 0, align 8
@SI476X_DFS_DAUDIO = common dso_local global i64 0, align 8
@SI476X_DOUT_I2S_OUTPUT = common dso_local global i64 0, align 8
@SI476X_XOUT_TRISTATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @si476x_core_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_core_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.si476x_core*, align 8
  %8 = alloca %struct.si476x_platform_data*, align 8
  %9 = alloca %struct.mfd_cell*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 3
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.si476x_core* @devm_kzalloc(i32* %12, i32 168, i32 %13)
  store %struct.si476x_core* %14, %struct.si476x_core** %7, align 8
  %15 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %16 = icmp ne %struct.si476x_core* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %293

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %23 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %22, i32 0, i32 19
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %25 = call i32 @devm_regmap_init_si476x(%struct.si476x_core* %24)
  %26 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %27 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %26, i32 0, i32 18
  store i32 %25, i32* %27, align 8
  %28 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %29 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %28, i32 0, i32 18
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %35 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %34, i32 0, i32 18
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 3
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %293

43:                                               ; preds = %20
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %46 = call i32 @i2c_set_clientdata(%struct.i2c_client* %44, %struct.si476x_core* %45)
  %47 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %48 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %47, i32 0, i32 17
  %49 = call i32 @atomic_set(i32* %48, i32 0)
  %50 = load i32, i32* @SI476X_POWER_DOWN, align 4
  %51 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %52 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %51, i32 0, i32 16
  store i32 %50, i32* %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 3
  %55 = call %struct.si476x_platform_data* @dev_get_platdata(i32* %54)
  store %struct.si476x_platform_data* %55, %struct.si476x_platform_data** %8, align 8
  %56 = load %struct.si476x_platform_data*, %struct.si476x_platform_data** %8, align 8
  %57 = icmp ne %struct.si476x_platform_data* %56, null
  br i1 %57, label %58, label %105

58:                                               ; preds = %43
  %59 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %60 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %59, i32 0, i32 15
  %61 = load %struct.si476x_platform_data*, %struct.si476x_platform_data** %8, align 8
  %62 = getelementptr inbounds %struct.si476x_platform_data, %struct.si476x_platform_data* %61, i32 0, i32 3
  %63 = call i32 @memcpy(%struct.TYPE_6__* %60, i32* %62, i32 32)
  %64 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %65 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  %66 = load %struct.si476x_platform_data*, %struct.si476x_platform_data** %8, align 8
  %67 = getelementptr inbounds %struct.si476x_platform_data, %struct.si476x_platform_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @gpio_is_valid(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %58
  %72 = load %struct.si476x_platform_data*, %struct.si476x_platform_data** %8, align 8
  %73 = getelementptr inbounds %struct.si476x_platform_data, %struct.si476x_platform_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gpio_request(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 3
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %293

84:                                               ; preds = %71
  %85 = load %struct.si476x_platform_data*, %struct.si476x_platform_data** %8, align 8
  %86 = getelementptr inbounds %struct.si476x_platform_data, %struct.si476x_platform_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %89 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %91 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @gpio_direction_output(i32 %92, i32 0)
  br label %94

94:                                               ; preds = %84, %58
  %95 = load %struct.si476x_platform_data*, %struct.si476x_platform_data** %8, align 8
  %96 = getelementptr inbounds %struct.si476x_platform_data, %struct.si476x_platform_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %99 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %98, i32 0, i32 14
  store i32 %97, i32* %99, align 8
  %100 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %101 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %100, i32 0, i32 5
  %102 = load %struct.si476x_platform_data*, %struct.si476x_platform_data** %8, align 8
  %103 = getelementptr inbounds %struct.si476x_platform_data, %struct.si476x_platform_data* %102, i32 0, i32 1
  %104 = call i32 @memcpy(%struct.TYPE_6__* %101, i32* %103, i32 4)
  br label %111

105:                                              ; preds = %43
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 3
  %108 = call i32 (i32*, i8*, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %293

111:                                              ; preds = %94
  %112 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %113 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %112, i32 0, i32 13
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %116, align 8
  %117 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %118 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %117, i32 0, i32 13
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %121, align 8
  %122 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %123 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %122, i32 0, i32 13
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 2
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %126, align 8
  %127 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %128 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %127, i32 0, i32 13
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 3
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %131, align 8
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %132, i32 0, i32 3
  %134 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %135 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %134, i32 0, i32 13
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %136)
  %138 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %139 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %138, i32 0, i32 13
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = call i32 @devm_regulator_bulk_get(i32* %133, i32 %137, %struct.TYPE_7__* %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %111
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 3
  %147 = call i32 (i32*, i8*, ...) @dev_err(i32* %146, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %280

148:                                              ; preds = %111
  %149 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %150 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %149, i32 0, i32 12
  %151 = call i32 @mutex_init(i32* %150)
  %152 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %153 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %152, i32 0, i32 11
  %154 = call i32 @init_waitqueue_head(i32* %153)
  %155 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %156 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %155, i32 0, i32 10
  %157 = call i32 @init_waitqueue_head(i32* %156)
  %158 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %159 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %158, i32 0, i32 3
  %160 = load i32, i32* @SI476X_DRIVER_RDS_FIFO_DEPTH, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 4
  %163 = trunc i64 %162 to i32
  %164 = load i32, i32* @GFP_KERNEL, align 4
  %165 = call i32 @kfifo_alloc(i32* %159, i32 %163, i32 %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %148
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 3
  %171 = call i32 (i32*, i8*, ...) @dev_err(i32* %170, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %280

172:                                              ; preds = %148
  %173 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %174 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %173, i32 0, i32 9
  %175 = call i32 @mutex_init(i32* %174)
  %176 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %177 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %176, i32 0, i32 8
  %178 = call i32 @init_waitqueue_head(i32* %177)
  %179 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %180 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %179, i32 0, i32 7
  %181 = load i32, i32* @si476x_core_drain_rds_fifo, align 4
  %182 = call i32 @INIT_WORK(i32* %180, i32 %181)
  %183 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %184 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %221

187:                                              ; preds = %172
  %188 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %189 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %188, i32 0, i32 3
  %190 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %191 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @si476x_core_interrupt, align 4
  %194 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %195 = load i32, i32* @IRQF_ONESHOT, align 4
  %196 = or i32 %194, %195
  %197 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %198 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %201 = call i32 @devm_request_threaded_irq(i32* %189, i32 %192, i32* null, i32 %193, i32 %196, i32 %199, %struct.si476x_core* %200)
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %187
  %205 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %206 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %205, i32 0, i32 3
  %207 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %208 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 (i32*, i8*, ...) @dev_err(i32* %206, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %209)
  br label %276

211:                                              ; preds = %187
  %212 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %213 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @disable_irq(i32 %214)
  %216 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %217 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %216, i32 0, i32 3
  %218 = call i32 @dev_dbg(i32* %217, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %219 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %220 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %219, i32 0, i32 1
  store i32 20, i32* %220, align 4
  br label %231

221:                                              ; preds = %172
  %222 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %223 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %222, i32 0, i32 6
  %224 = load i32, i32* @si476x_core_poll_loop, align 4
  %225 = call i32 @INIT_DELAYED_WORK(i32* %223, i32 %224)
  %226 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %227 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %226, i32 0, i32 3
  %228 = call i32 @dev_info(i32* %227, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %229 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %230 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %229, i32 0, i32 1
  store i32 5, i32* %230, align 4
  br label %231

231:                                              ; preds = %221, %211
  %232 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %233 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %236 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %235, i32 0, i32 2
  store i64 %234, i64* %236, align 8
  %237 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %238 = call i32 @si476x_core_get_revision_info(%struct.si476x_core* %237)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %231
  %242 = load i32, i32* @ENODEV, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %6, align 4
  br label %276

244:                                              ; preds = %231
  store i32 0, i32* %10, align 4
  %245 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %246 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %245, i32 0, i32 4
  %247 = load %struct.mfd_cell*, %struct.mfd_cell** %246, align 8
  %248 = load i64, i64* @SI476X_RADIO_CELL, align 8
  %249 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %247, i64 %248
  store %struct.mfd_cell* %249, %struct.mfd_cell** %9, align 8
  %250 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %251 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %250, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %251, align 8
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %10, align 4
  %254 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %255 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %254, i32 0, i32 3
  %256 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %257 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %256, i32 0, i32 2
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = shl i32 %260, 8
  %262 = sext i32 %261 to i64
  %263 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %264 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %262, %265
  %267 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %268 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %267, i32 0, i32 4
  %269 = load %struct.mfd_cell*, %struct.mfd_cell** %268, align 8
  %270 = load i32, i32* %10, align 4
  %271 = call i32 @mfd_add_devices(i32* %255, i64 %266, %struct.mfd_cell* %269, i32 %270, i32* null, i32 0, i32* null)
  store i32 %271, i32* %6, align 4
  %272 = load i32, i32* %6, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %244
  store i32 0, i32* %3, align 4
  br label %293

275:                                              ; preds = %244
  br label %276

276:                                              ; preds = %275, %241, %204
  %277 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %278 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %277, i32 0, i32 3
  %279 = call i32 @kfifo_free(i32* %278)
  br label %280

280:                                              ; preds = %276, %168, %144
  %281 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %282 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i64 @gpio_is_valid(i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %280
  %287 = load %struct.si476x_core*, %struct.si476x_core** %7, align 8
  %288 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @gpio_free(i32 %289)
  br label %291

291:                                              ; preds = %286, %280
  %292 = load i32, i32* %6, align 4
  store i32 %292, i32* %3, align 4
  br label %293

293:                                              ; preds = %291, %274, %105, %78, %33, %17
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

declare dso_local %struct.si476x_core* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_si476x(%struct.si476x_core*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.si476x_core*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.si476x_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.si476x_core*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @si476x_core_get_revision_info(%struct.si476x_core*) #1

declare dso_local i32 @mfd_add_devices(i32*, i64, %struct.mfd_cell*, i32, i32*, i32, i32*) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
