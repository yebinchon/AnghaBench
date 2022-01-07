; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ts2020.c_ts2020_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.ts2020_config* }
%struct.ts2020_config = type { i32, i32, i32, i32, i32, i32, i64, %struct.dvb_frontend* }
%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.ts2020_priv* }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.ts2020_priv = type { i32, i32, i32, i64, i32, i64, i32, %struct.i2c_client*, i32, %struct.dvb_frontend*, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.ts2020_priv*, i32, i32 }
%struct.i2c_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ts2020_regmap_lock = common dso_local global i32 0, align 4
@ts2020_regmap_unlock = common dso_local global i32 0, align 4
@ts2020_stat_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"chip_id=%02x\0A\00", align 1
@TS2020_M88TS2020 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"TS2020\00", align 1
@TS2020_M88TS2022 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"TS2022\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Montage Technology %s successfully identified\0A\00", align 1
@ts2020_tuner_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ts2020_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts2020_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ts2020_config*, align 8
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca %struct.ts2020_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.ts2020_config*, %struct.ts2020_config** %15, align 8
  store %struct.ts2020_config* %16, %struct.ts2020_config** %6, align 8
  %17 = load %struct.ts2020_config*, %struct.ts2020_config** %6, align 8
  %18 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %17, i32 0, i32 7
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %18, align 8
  store %struct.dvb_frontend* %19, %struct.dvb_frontend** %7, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ts2020_priv* @kzalloc(i32 120, i32 %20)
  store %struct.ts2020_priv* %21, %struct.ts2020_priv** %8, align 8
  %22 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %23 = icmp ne %struct.ts2020_priv* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %281

27:                                               ; preds = %2
  %28 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %29 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %28, i32 0, i32 14
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %32 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %31, i32 0, i32 13
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 8, i32* %33, align 8
  %34 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %35 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %34, i32 0, i32 13
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 8, i32* %36, align 4
  %37 = load i32, i32* @ts2020_regmap_lock, align 4
  %38 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %39 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %38, i32 0, i32 13
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @ts2020_regmap_unlock, align 4
  %42 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %43 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %42, i32 0, i32 13
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %46 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %47 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %46, i32 0, i32 13
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store %struct.ts2020_priv* %45, %struct.ts2020_priv** %48, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %51 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %50, i32 0, i32 13
  %52 = call i32 @regmap_init_i2c(%struct.i2c_client* %49, %struct.TYPE_7__* %51)
  %53 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %54 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %56 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %27
  %61 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %62 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %9, align 4
  br label %278

65:                                               ; preds = %27
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %70 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %69, i32 0, i32 12
  store i32 %68, i32* %70, align 8
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %75 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %74, i32 0, i32 11
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ts2020_config*, %struct.ts2020_config** %6, align 8
  %77 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %80 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %79, i32 0, i32 5
  store i64 %78, i64* %80, align 8
  %81 = load %struct.ts2020_config*, %struct.ts2020_config** %6, align 8
  %82 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %85 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ts2020_config*, %struct.ts2020_config** %6, align 8
  %87 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %90 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ts2020_config*, %struct.ts2020_config** %6, align 8
  %92 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %95 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ts2020_config*, %struct.ts2020_config** %6, align 8
  %97 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %100 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %102 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %103 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %102, i32 0, i32 9
  store %struct.dvb_frontend* %101, %struct.dvb_frontend** %103, align 8
  %104 = load %struct.ts2020_config*, %struct.ts2020_config** %6, align 8
  %105 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %108 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %111 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %110, i32 0, i32 1
  store %struct.ts2020_priv* %109, %struct.ts2020_priv** %111, align 8
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %114 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %113, i32 0, i32 7
  store %struct.i2c_client* %112, %struct.i2c_client** %114, align 8
  %115 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %116 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %115, i32 0, i32 6
  %117 = load i32, i32* @ts2020_stat_work, align 4
  %118 = call i32 @INIT_DELAYED_WORK(i32* %116, i32 %117)
  %119 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %120 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @regmap_read(i32 %121, i32 0, i32* %11)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %65
  br label %273

126:                                              ; preds = %65
  %127 = load i32, i32* %11, align 4
  %128 = and i32 %127, 3
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %132 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @regmap_write(i32 %133, i32 0, i32 1)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %273

138:                                              ; preds = %130
  %139 = call i32 @usleep_range(i32 2000, i32 50000)
  br label %140

140:                                              ; preds = %138, %126
  %141 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %142 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @regmap_write(i32 %143, i32 0, i32 3)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %273

148:                                              ; preds = %140
  %149 = call i32 @usleep_range(i32 2000, i32 50000)
  %150 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %151 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @regmap_read(i32 %152, i32 0, i32* %11)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  br label %273

157:                                              ; preds = %148
  %158 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 0
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @dev_dbg(%struct.TYPE_9__* %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %11, align 4
  switch i32 %162, label %187 [
    i32 1, label %163
    i32 65, label %163
    i32 129, label %163
    i32 195, label %175
    i32 131, label %175
  ]

163:                                              ; preds = %157, %157, %157
  %164 = load i64, i64* @TS2020_M88TS2020, align 8
  %165 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %166 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %165, i32 0, i32 3
  store i64 %164, i64* %166, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %167 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %168 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %163
  %172 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %173 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %172, i32 0, i32 2
  store i32 1060000, i32* %173, align 8
  br label %174

174:                                              ; preds = %171, %163
  br label %190

175:                                              ; preds = %157, %157
  %176 = load i64, i64* @TS2020_M88TS2022, align 8
  %177 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %178 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %177, i32 0, i32 3
  store i64 %176, i64* %178, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %179 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %180 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %175
  %184 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %185 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %184, i32 0, i32 2
  store i32 1103000, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %175
  br label %190

187:                                              ; preds = %157
  %188 = load i32, i32* @ENODEV, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %9, align 4
  br label %273

190:                                              ; preds = %186, %174
  %191 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %192 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @TS2020_M88TS2022, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %243

196:                                              ; preds = %190
  %197 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %198 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  switch i32 %199, label %214 [
    i32 130, label %200
    i32 129, label %201
    i32 128, label %213
  ]

200:                                              ; preds = %196
  store i32 96, i32* %10, align 4
  br label %217

201:                                              ; preds = %196
  store i32 112, i32* %10, align 4
  %202 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %203 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %206 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @regmap_write(i32 %204, i32 5, i32 %207)
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %201
  br label %273

212:                                              ; preds = %201
  br label %217

213:                                              ; preds = %196
  store i32 108, i32* %10, align 4
  br label %217

214:                                              ; preds = %196
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %9, align 4
  br label %273

217:                                              ; preds = %213, %212, %200
  %218 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %219 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @regmap_write(i32 %220, i32 66, i32 %221)
  store i32 %222, i32* %9, align 4
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %217
  br label %273

226:                                              ; preds = %217
  %227 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %228 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %227, i32 0, i32 5
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  store i32 236, i32* %10, align 4
  br label %233

232:                                              ; preds = %226
  store i32 108, i32* %10, align 4
  br label %233

233:                                              ; preds = %232, %231
  %234 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %235 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @regmap_write(i32 %236, i32 98, i32 %237)
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %233
  br label %273

242:                                              ; preds = %233
  br label %243

243:                                              ; preds = %242, %190
  %244 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %245 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @regmap_write(i32 %246, i32 0, i32 0)
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  br label %273

251:                                              ; preds = %243
  %252 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %253 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %252, i32 0, i32 0
  %254 = load i8*, i8** %12, align 8
  %255 = call i32 @dev_info(%struct.TYPE_9__* %253, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %254)
  %256 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %257 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = call i32 @memcpy(%struct.TYPE_8__* %258, i32* @ts2020_tuner_ops, i32 4)
  %260 = load %struct.ts2020_config*, %struct.ts2020_config** %6, align 8
  %261 = getelementptr inbounds %struct.ts2020_config, %struct.ts2020_config* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %251
  %265 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %266 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  store i32* null, i32** %268, align 8
  br label %269

269:                                              ; preds = %264, %251
  %270 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %271 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %272 = call i32 @i2c_set_clientdata(%struct.i2c_client* %270, %struct.ts2020_priv* %271)
  store i32 0, i32* %3, align 4
  br label %287

273:                                              ; preds = %250, %241, %225, %214, %211, %187, %156, %147, %137, %125
  %274 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %275 = getelementptr inbounds %struct.ts2020_priv, %struct.ts2020_priv* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @regmap_exit(i32 %276)
  br label %278

278:                                              ; preds = %273, %60
  %279 = load %struct.ts2020_priv*, %struct.ts2020_priv** %8, align 8
  %280 = call i32 @kfree(%struct.ts2020_priv* %279)
  br label %281

281:                                              ; preds = %278, %24
  %282 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %283 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %282, i32 0, i32 0
  %284 = load i32, i32* %9, align 4
  %285 = call i32 @dev_dbg(%struct.TYPE_9__* %283, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %284)
  %286 = load i32, i32* %9, align 4
  store i32 %286, i32* %3, align 4
  br label %287

287:                                              ; preds = %281, %269
  %288 = load i32, i32* %3, align 4
  ret i32 %288
}

declare dso_local %struct.ts2020_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @regmap_init_i2c(%struct.i2c_client*, %struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ts2020_priv*) #1

declare dso_local i32 @regmap_exit(i32) #1

declare dso_local i32 @kfree(%struct.ts2020_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
