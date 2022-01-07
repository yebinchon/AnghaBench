; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10071.c_tda10071_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda10071_reg_val_mask = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.tda10071_dev* }
%struct.dtv_frontend_properties = type { %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }
%struct.tda10071_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.tda10071_cmd = type { i32*, i32 }
%struct.firmware = type { i32, i32* }

@TDA10071_FIRMWARE = common dso_local global i32* null, align 8
@__const.tda10071_init.tab = private unnamed_addr constant [10 x %struct.tda10071_reg_val_mask] [%struct.tda10071_reg_val_mask { i32 205, i32 0, i32 7, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 128, i32 0, i32 2, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 205, i32 0, i32 192, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 206, i32 0, i32 27, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 157, i32 0, i32 1, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 157, i32 0, i32 2, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 158, i32 0, i32 1, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 135, i32 0, i32 128, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 206, i32 0, i32 8, i32 0, i32 0, i32 0 }, %struct.tda10071_reg_val_mask { i32 206, i32 0, i32 16, i32 0, i32 0, i32 0 }], align 16
@CMD_SET_SLEEP_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [120 x i8] c"did not find the firmware file '%s' (status %d). You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"found a '%s' in cold state, will try to load a firmware\0A\00", align 1
@tda10071_ops = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"firmware download failed=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"firmware did not run\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@CMD_GET_FW_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"firmware version %d.%d.%d.%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"found a '%s' in warm state\0A\00", align 1
@CMD_DEMOD_INIT = common dso_local global i32 0, align 4
@CMD_TUNER_INIT = common dso_local global i32 0, align 4
@CMD_MPEG_CONFIG = common dso_local global i32 0, align 4
@CMD_LNB_CONFIG = common dso_local global i32 0, align 4
@CMD_BER_CONTROL = common dso_local global i32 0, align 4
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda10071_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10071_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.tda10071_dev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca %struct.tda10071_cmd, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.firmware*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32], align 16
  %18 = alloca [10 x %struct.tda10071_reg_val_mask], align 16
  %19 = alloca [43 x %struct.tda10071_reg_val_mask], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 1
  %22 = load %struct.tda10071_dev*, %struct.tda10071_dev** %21, align 8
  store %struct.tda10071_dev* %22, %struct.tda10071_dev** %4, align 8
  %23 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %24 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %23, i32 0, i32 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %24, align 8
  store %struct.i2c_client* %25, %struct.i2c_client** %5, align 8
  %26 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %27 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %26, i32 0, i32 0
  store %struct.dtv_frontend_properties* %27, %struct.dtv_frontend_properties** %6, align 8
  %28 = load i32*, i32** @TDA10071_FIRMWARE, align 8
  store i32* %28, i32** %15, align 8
  %29 = bitcast [10 x %struct.tda10071_reg_val_mask]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 bitcast ([10 x %struct.tda10071_reg_val_mask]* @__const.tda10071_init.tab to i8*), i64 240, i1 false)
  %30 = getelementptr inbounds [43 x %struct.tda10071_reg_val_mask], [43 x %struct.tda10071_reg_val_mask]* %19, i64 0, i64 0
  %31 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %30, i32 0, i32 0
  store i32 241, i32* %31, align 8
  %32 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %30, i32 0, i32 1
  store i32 112, i32* %32, align 4
  %33 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %30, i32 0, i32 2
  store i32 255, i32* %33, align 8
  %34 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %30, i32 0, i32 3
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %30, i32 0, i32 4
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %30, i32 0, i32 5
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %30, i64 1
  %38 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %37, i32 0, i32 0
  store i32 136, i32* %38, align 8
  %39 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %37, i32 0, i32 1
  %40 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %41 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %39, align 4
  %43 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %37, i32 0, i32 2
  store i32 63, i32* %43, align 8
  %44 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %37, i32 0, i32 3
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %37, i32 0, i32 4
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %37, i32 0, i32 5
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %37, i64 1
  %48 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %47, i32 0, i32 0
  store i32 137, i32* %48, align 8
  %49 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %47, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %47, i32 0, i32 2
  store i32 16, i32* %50, align 8
  %51 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %47, i32 0, i32 3
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %47, i32 0, i32 4
  store i32 0, i32* %52, align 8
  %53 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %47, i32 0, i32 5
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %47, i64 1
  %55 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %54, i32 0, i32 0
  store i32 137, i32* %55, align 8
  %56 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %54, i32 0, i32 1
  store i32 16, i32* %56, align 4
  %57 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %54, i32 0, i32 2
  store i32 16, i32* %57, align 8
  %58 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %54, i32 0, i32 3
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %54, i32 0, i32 4
  store i32 0, i32* %59, align 8
  %60 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %54, i32 0, i32 5
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %54, i64 1
  %62 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %61, i32 0, i32 0
  store i32 192, i32* %62, align 8
  %63 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %61, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %61, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %61, i32 0, i32 3
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %61, i32 0, i32 4
  store i32 0, i32* %66, align 8
  %67 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %61, i32 0, i32 5
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %61, i64 1
  %69 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %68, i32 0, i32 0
  store i32 192, i32* %69, align 8
  %70 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %68, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %68, i32 0, i32 2
  store i32 1, i32* %71, align 8
  %72 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %68, i32 0, i32 3
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %68, i32 0, i32 4
  store i32 0, i32* %73, align 8
  %74 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %68, i32 0, i32 5
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %68, i64 1
  %76 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %75, i32 0, i32 0
  store i32 224, i32* %76, align 8
  %77 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %75, i32 0, i32 1
  store i32 255, i32* %77, align 4
  %78 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %75, i32 0, i32 2
  store i32 255, i32* %78, align 8
  %79 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %75, i32 0, i32 3
  store i32 0, i32* %79, align 4
  %80 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %75, i32 0, i32 4
  store i32 0, i32* %80, align 8
  %81 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %75, i32 0, i32 5
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %75, i64 1
  %83 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %82, i32 0, i32 0
  store i32 224, i32* %83, align 8
  %84 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %82, i32 0, i32 1
  store i32 0, i32* %84, align 4
  %85 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %82, i32 0, i32 2
  store i32 255, i32* %85, align 8
  %86 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %82, i32 0, i32 3
  store i32 0, i32* %86, align 4
  %87 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %82, i32 0, i32 4
  store i32 0, i32* %87, align 8
  %88 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %82, i32 0, i32 5
  store i32 0, i32* %88, align 4
  %89 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %82, i64 1
  %90 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %89, i32 0, i32 0
  store i32 150, i32* %90, align 8
  %91 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %89, i32 0, i32 1
  store i32 30, i32* %91, align 4
  %92 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %89, i32 0, i32 2
  store i32 126, i32* %92, align 8
  %93 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %89, i32 0, i32 3
  store i32 0, i32* %93, align 4
  %94 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %89, i32 0, i32 4
  store i32 0, i32* %94, align 8
  %95 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %89, i32 0, i32 5
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %89, i64 1
  %97 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %96, i32 0, i32 0
  store i32 139, i32* %97, align 8
  %98 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %96, i32 0, i32 1
  store i32 8, i32* %98, align 4
  %99 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %96, i32 0, i32 2
  store i32 8, i32* %99, align 8
  %100 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %96, i32 0, i32 3
  store i32 0, i32* %100, align 4
  %101 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %96, i32 0, i32 4
  store i32 0, i32* %101, align 8
  %102 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %96, i32 0, i32 5
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %96, i64 1
  %104 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %103, i32 0, i32 0
  store i32 139, i32* %104, align 8
  %105 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %103, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %103, i32 0, i32 2
  store i32 8, i32* %106, align 8
  %107 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %103, i32 0, i32 3
  store i32 0, i32* %107, align 4
  %108 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %103, i32 0, i32 4
  store i32 0, i32* %108, align 8
  %109 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %103, i32 0, i32 5
  store i32 0, i32* %109, align 4
  %110 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %103, i64 1
  %111 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %110, i32 0, i32 0
  store i32 143, i32* %111, align 8
  %112 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %110, i32 0, i32 1
  store i32 26, i32* %112, align 4
  %113 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %110, i32 0, i32 2
  store i32 126, i32* %113, align 8
  %114 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %110, i32 0, i32 3
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %110, i32 0, i32 4
  store i32 0, i32* %115, align 8
  %116 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %110, i32 0, i32 5
  store i32 0, i32* %116, align 4
  %117 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %110, i64 1
  %118 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %117, i32 0, i32 0
  store i32 140, i32* %118, align 8
  %119 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %117, i32 0, i32 1
  store i32 104, i32* %119, align 4
  %120 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %117, i32 0, i32 2
  store i32 255, i32* %120, align 8
  %121 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %117, i32 0, i32 3
  store i32 0, i32* %121, align 4
  %122 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %117, i32 0, i32 4
  store i32 0, i32* %122, align 8
  %123 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %117, i32 0, i32 5
  store i32 0, i32* %123, align 4
  %124 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %117, i64 1
  %125 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %124, i32 0, i32 0
  store i32 141, i32* %125, align 8
  %126 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %124, i32 0, i32 1
  store i32 8, i32* %126, align 4
  %127 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %124, i32 0, i32 2
  store i32 255, i32* %127, align 8
  %128 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %124, i32 0, i32 3
  store i32 0, i32* %128, align 4
  %129 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %124, i32 0, i32 4
  store i32 0, i32* %129, align 8
  %130 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %124, i32 0, i32 5
  store i32 0, i32* %130, align 4
  %131 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %124, i64 1
  %132 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %131, i32 0, i32 0
  store i32 142, i32* %132, align 8
  %133 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %131, i32 0, i32 1
  store i32 76, i32* %133, align 4
  %134 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %131, i32 0, i32 2
  store i32 255, i32* %134, align 8
  %135 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %131, i32 0, i32 3
  store i32 0, i32* %135, align 4
  %136 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %131, i32 0, i32 4
  store i32 0, i32* %136, align 8
  %137 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %131, i32 0, i32 5
  store i32 0, i32* %137, align 4
  %138 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %131, i64 1
  %139 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %138, i32 0, i32 0
  store i32 143, i32* %139, align 8
  %140 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %138, i32 0, i32 1
  store i32 1, i32* %140, align 4
  %141 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %138, i32 0, i32 2
  store i32 1, i32* %141, align 8
  %142 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %138, i32 0, i32 3
  store i32 0, i32* %142, align 4
  %143 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %138, i32 0, i32 4
  store i32 0, i32* %143, align 8
  %144 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %138, i32 0, i32 5
  store i32 0, i32* %144, align 4
  %145 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %138, i64 1
  %146 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %145, i32 0, i32 0
  store i32 139, i32* %146, align 8
  %147 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %145, i32 0, i32 1
  store i32 4, i32* %147, align 4
  %148 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %145, i32 0, i32 2
  store i32 4, i32* %148, align 8
  %149 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %145, i32 0, i32 3
  store i32 0, i32* %149, align 4
  %150 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %145, i32 0, i32 4
  store i32 0, i32* %150, align 8
  %151 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %145, i32 0, i32 5
  store i32 0, i32* %151, align 4
  %152 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %145, i64 1
  %153 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %152, i32 0, i32 0
  store i32 139, i32* %153, align 8
  %154 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %152, i32 0, i32 1
  store i32 0, i32* %154, align 4
  %155 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %152, i32 0, i32 2
  store i32 4, i32* %155, align 8
  %156 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %152, i32 0, i32 3
  store i32 0, i32* %156, align 4
  %157 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %152, i32 0, i32 4
  store i32 0, i32* %157, align 8
  %158 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %152, i32 0, i32 5
  store i32 0, i32* %158, align 4
  %159 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %152, i64 1
  %160 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %159, i32 0, i32 0
  store i32 135, i32* %160, align 8
  %161 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %159, i32 0, i32 1
  store i32 5, i32* %161, align 4
  %162 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %159, i32 0, i32 2
  store i32 7, i32* %162, align 8
  %163 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %159, i32 0, i32 3
  store i32 0, i32* %163, align 4
  %164 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %159, i32 0, i32 4
  store i32 0, i32* %164, align 8
  %165 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %159, i32 0, i32 5
  store i32 0, i32* %165, align 4
  %166 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %159, i64 1
  %167 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %166, i32 0, i32 0
  store i32 128, i32* %167, align 8
  %168 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %166, i32 0, i32 1
  store i32 0, i32* %168, align 4
  %169 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %166, i32 0, i32 2
  store i32 32, i32* %169, align 8
  %170 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %166, i32 0, i32 3
  store i32 0, i32* %170, align 4
  %171 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %166, i32 0, i32 4
  store i32 0, i32* %171, align 8
  %172 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %166, i32 0, i32 5
  store i32 0, i32* %172, align 4
  %173 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %166, i64 1
  %174 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %173, i32 0, i32 0
  store i32 200, i32* %174, align 8
  %175 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %173, i32 0, i32 1
  store i32 1, i32* %175, align 4
  %176 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %173, i32 0, i32 2
  store i32 255, i32* %176, align 8
  %177 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %173, i32 0, i32 3
  store i32 0, i32* %177, align 4
  %178 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %173, i32 0, i32 4
  store i32 0, i32* %178, align 8
  %179 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %173, i32 0, i32 5
  store i32 0, i32* %179, align 4
  %180 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %173, i64 1
  %181 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %180, i32 0, i32 0
  store i32 180, i32* %181, align 8
  %182 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %180, i32 0, i32 1
  store i32 71, i32* %182, align 4
  %183 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %180, i32 0, i32 2
  store i32 255, i32* %183, align 8
  %184 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %180, i32 0, i32 3
  store i32 0, i32* %184, align 4
  %185 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %180, i32 0, i32 4
  store i32 0, i32* %185, align 8
  %186 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %180, i32 0, i32 5
  store i32 0, i32* %186, align 4
  %187 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %180, i64 1
  %188 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %187, i32 0, i32 0
  store i32 181, i32* %188, align 8
  %189 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %187, i32 0, i32 1
  store i32 156, i32* %189, align 4
  %190 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %187, i32 0, i32 2
  store i32 255, i32* %190, align 8
  %191 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %187, i32 0, i32 3
  store i32 0, i32* %191, align 4
  %192 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %187, i32 0, i32 4
  store i32 0, i32* %192, align 8
  %193 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %187, i32 0, i32 5
  store i32 0, i32* %193, align 4
  %194 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %187, i64 1
  %195 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %194, i32 0, i32 0
  store i32 182, i32* %195, align 8
  %196 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %194, i32 0, i32 1
  store i32 125, i32* %196, align 4
  %197 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %194, i32 0, i32 2
  store i32 255, i32* %197, align 8
  %198 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %194, i32 0, i32 3
  store i32 0, i32* %198, align 4
  %199 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %194, i32 0, i32 4
  store i32 0, i32* %199, align 8
  %200 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %194, i32 0, i32 5
  store i32 0, i32* %200, align 4
  %201 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %194, i64 1
  %202 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %201, i32 0, i32 0
  store i32 186, i32* %202, align 8
  %203 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %201, i32 0, i32 1
  store i32 0, i32* %203, align 4
  %204 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %201, i32 0, i32 2
  store i32 3, i32* %204, align 8
  %205 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %201, i32 0, i32 3
  store i32 0, i32* %205, align 4
  %206 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %201, i32 0, i32 4
  store i32 0, i32* %206, align 8
  %207 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %201, i32 0, i32 5
  store i32 0, i32* %207, align 4
  %208 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %201, i64 1
  %209 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %208, i32 0, i32 0
  store i32 183, i32* %209, align 8
  %210 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %208, i32 0, i32 1
  store i32 71, i32* %210, align 4
  %211 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %208, i32 0, i32 2
  store i32 255, i32* %211, align 8
  %212 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %208, i32 0, i32 3
  store i32 0, i32* %212, align 4
  %213 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %208, i32 0, i32 4
  store i32 0, i32* %213, align 8
  %214 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %208, i32 0, i32 5
  store i32 0, i32* %214, align 4
  %215 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %208, i64 1
  %216 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %215, i32 0, i32 0
  store i32 184, i32* %216, align 8
  %217 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %215, i32 0, i32 1
  store i32 156, i32* %217, align 4
  %218 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %215, i32 0, i32 2
  store i32 255, i32* %218, align 8
  %219 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %215, i32 0, i32 3
  store i32 0, i32* %219, align 4
  %220 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %215, i32 0, i32 4
  store i32 0, i32* %220, align 8
  %221 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %215, i32 0, i32 5
  store i32 0, i32* %221, align 4
  %222 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %215, i64 1
  %223 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %222, i32 0, i32 0
  store i32 185, i32* %223, align 8
  %224 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %222, i32 0, i32 1
  store i32 125, i32* %224, align 4
  %225 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %222, i32 0, i32 2
  store i32 255, i32* %225, align 8
  %226 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %222, i32 0, i32 3
  store i32 0, i32* %226, align 4
  %227 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %222, i32 0, i32 4
  store i32 0, i32* %227, align 8
  %228 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %222, i32 0, i32 5
  store i32 0, i32* %228, align 4
  %229 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %222, i64 1
  %230 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %229, i32 0, i32 0
  store i32 186, i32* %230, align 8
  %231 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %229, i32 0, i32 1
  store i32 0, i32* %231, align 4
  %232 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %229, i32 0, i32 2
  store i32 12, i32* %232, align 8
  %233 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %229, i32 0, i32 3
  store i32 0, i32* %233, align 4
  %234 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %229, i32 0, i32 4
  store i32 0, i32* %234, align 8
  %235 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %229, i32 0, i32 5
  store i32 0, i32* %235, align 4
  %236 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %229, i64 1
  %237 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %236, i32 0, i32 0
  store i32 200, i32* %237, align 8
  %238 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %236, i32 0, i32 1
  store i32 0, i32* %238, align 4
  %239 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %236, i32 0, i32 2
  store i32 255, i32* %239, align 8
  %240 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %236, i32 0, i32 3
  store i32 0, i32* %240, align 4
  %241 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %236, i32 0, i32 4
  store i32 0, i32* %241, align 8
  %242 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %236, i32 0, i32 5
  store i32 0, i32* %242, align 4
  %243 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %236, i64 1
  %244 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %243, i32 0, i32 0
  store i32 205, i32* %244, align 8
  %245 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %243, i32 0, i32 1
  store i32 0, i32* %245, align 4
  %246 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %243, i32 0, i32 2
  store i32 4, i32* %246, align 8
  %247 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %243, i32 0, i32 3
  store i32 0, i32* %247, align 4
  %248 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %243, i32 0, i32 4
  store i32 0, i32* %248, align 8
  %249 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %243, i32 0, i32 5
  store i32 0, i32* %249, align 4
  %250 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %243, i64 1
  %251 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %250, i32 0, i32 0
  store i32 205, i32* %251, align 8
  %252 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %250, i32 0, i32 1
  store i32 0, i32* %252, align 4
  %253 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %250, i32 0, i32 2
  store i32 32, i32* %253, align 8
  %254 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %250, i32 0, i32 3
  store i32 0, i32* %254, align 4
  %255 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %250, i32 0, i32 4
  store i32 0, i32* %255, align 8
  %256 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %250, i32 0, i32 5
  store i32 0, i32* %256, align 4
  %257 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %250, i64 1
  %258 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %257, i32 0, i32 0
  store i32 232, i32* %258, align 8
  %259 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %257, i32 0, i32 1
  store i32 2, i32* %259, align 4
  %260 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %257, i32 0, i32 2
  store i32 255, i32* %260, align 8
  %261 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %257, i32 0, i32 3
  store i32 0, i32* %261, align 4
  %262 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %257, i32 0, i32 4
  store i32 0, i32* %262, align 8
  %263 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %257, i32 0, i32 5
  store i32 0, i32* %263, align 4
  %264 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %257, i64 1
  %265 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %264, i32 0, i32 0
  store i32 207, i32* %265, align 8
  %266 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %264, i32 0, i32 1
  store i32 32, i32* %266, align 4
  %267 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %264, i32 0, i32 2
  store i32 255, i32* %267, align 8
  %268 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %264, i32 0, i32 3
  store i32 0, i32* %268, align 4
  %269 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %264, i32 0, i32 4
  store i32 0, i32* %269, align 8
  %270 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %264, i32 0, i32 5
  store i32 0, i32* %270, align 4
  %271 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %264, i64 1
  %272 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %271, i32 0, i32 0
  store i32 155, i32* %272, align 8
  %273 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %271, i32 0, i32 1
  store i32 215, i32* %273, align 4
  %274 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %271, i32 0, i32 2
  store i32 255, i32* %274, align 8
  %275 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %271, i32 0, i32 3
  store i32 0, i32* %275, align 4
  %276 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %271, i32 0, i32 4
  store i32 0, i32* %276, align 8
  %277 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %271, i32 0, i32 5
  store i32 0, i32* %277, align 4
  %278 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %271, i64 1
  %279 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %278, i32 0, i32 0
  store i32 154, i32* %279, align 8
  %280 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %278, i32 0, i32 1
  store i32 1, i32* %280, align 4
  %281 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %278, i32 0, i32 2
  store i32 3, i32* %281, align 8
  %282 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %278, i32 0, i32 3
  store i32 0, i32* %282, align 4
  %283 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %278, i32 0, i32 4
  store i32 0, i32* %283, align 8
  %284 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %278, i32 0, i32 5
  store i32 0, i32* %284, align 4
  %285 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %278, i64 1
  %286 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %285, i32 0, i32 0
  store i32 168, i32* %286, align 8
  %287 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %285, i32 0, i32 1
  store i32 5, i32* %287, align 4
  %288 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %285, i32 0, i32 2
  store i32 15, i32* %288, align 8
  %289 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %285, i32 0, i32 3
  store i32 0, i32* %289, align 4
  %290 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %285, i32 0, i32 4
  store i32 0, i32* %290, align 8
  %291 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %285, i32 0, i32 5
  store i32 0, i32* %291, align 4
  %292 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %285, i64 1
  %293 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %292, i32 0, i32 0
  store i32 168, i32* %293, align 8
  %294 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %292, i32 0, i32 1
  store i32 101, i32* %294, align 4
  %295 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %292, i32 0, i32 2
  store i32 240, i32* %295, align 8
  %296 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %292, i32 0, i32 3
  store i32 0, i32* %296, align 4
  %297 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %292, i32 0, i32 4
  store i32 0, i32* %297, align 8
  %298 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %292, i32 0, i32 5
  store i32 0, i32* %298, align 4
  %299 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %292, i64 1
  %300 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %299, i32 0, i32 0
  store i32 166, i32* %300, align 8
  %301 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %299, i32 0, i32 1
  store i32 160, i32* %301, align 4
  %302 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %299, i32 0, i32 2
  store i32 240, i32* %302, align 8
  %303 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %299, i32 0, i32 3
  store i32 0, i32* %303, align 4
  %304 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %299, i32 0, i32 4
  store i32 0, i32* %304, align 8
  %305 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %299, i32 0, i32 5
  store i32 0, i32* %305, align 4
  %306 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %299, i64 1
  %307 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %306, i32 0, i32 0
  store i32 157, i32* %307, align 8
  %308 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %306, i32 0, i32 1
  store i32 80, i32* %308, align 4
  %309 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %306, i32 0, i32 2
  store i32 252, i32* %309, align 8
  %310 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %306, i32 0, i32 3
  store i32 0, i32* %310, align 4
  %311 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %306, i32 0, i32 4
  store i32 0, i32* %311, align 8
  %312 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %306, i32 0, i32 5
  store i32 0, i32* %312, align 4
  %313 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %306, i64 1
  %314 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %313, i32 0, i32 0
  store i32 158, i32* %314, align 8
  %315 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %313, i32 0, i32 1
  store i32 32, i32* %315, align 4
  %316 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %313, i32 0, i32 2
  store i32 224, i32* %316, align 8
  %317 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %313, i32 0, i32 3
  store i32 0, i32* %317, align 4
  %318 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %313, i32 0, i32 4
  store i32 0, i32* %318, align 8
  %319 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %313, i32 0, i32 5
  store i32 0, i32* %319, align 4
  %320 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %313, i64 1
  %321 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %320, i32 0, i32 0
  store i32 163, i32* %321, align 8
  %322 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %320, i32 0, i32 1
  store i32 28, i32* %322, align 4
  %323 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %320, i32 0, i32 2
  store i32 124, i32* %323, align 8
  %324 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %320, i32 0, i32 3
  store i32 0, i32* %324, align 4
  %325 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %320, i32 0, i32 4
  store i32 0, i32* %325, align 8
  %326 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %320, i32 0, i32 5
  store i32 0, i32* %326, align 4
  %327 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %320, i64 1
  %328 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %327, i32 0, i32 0
  store i32 213, i32* %328, align 8
  %329 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %327, i32 0, i32 1
  store i32 3, i32* %329, align 4
  %330 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %327, i32 0, i32 2
  store i32 3, i32* %330, align 8
  %331 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %327, i32 0, i32 3
  store i32 0, i32* %331, align 4
  %332 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %327, i32 0, i32 4
  store i32 0, i32* %332, align 8
  %333 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %327, i32 0, i32 5
  store i32 0, i32* %333, align 4
  %334 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %335 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %387

338:                                              ; preds = %1
  store i32 0, i32* %9, align 4
  br label %339

339:                                              ; preds = %366, %338
  %340 = load i32, i32* %9, align 4
  %341 = getelementptr inbounds [10 x %struct.tda10071_reg_val_mask], [10 x %struct.tda10071_reg_val_mask]* %18, i64 0, i64 0
  %342 = call i32 @ARRAY_SIZE(%struct.tda10071_reg_val_mask* %341)
  %343 = icmp slt i32 %340, %342
  br i1 %343, label %344, label %369

344:                                              ; preds = %339
  %345 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %346 = load i32, i32* %9, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [10 x %struct.tda10071_reg_val_mask], [10 x %struct.tda10071_reg_val_mask]* %18, i64 0, i64 %347
  %349 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %348, i32 0, i32 5
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [10 x %struct.tda10071_reg_val_mask], [10 x %struct.tda10071_reg_val_mask]* %18, i64 0, i64 %352
  %354 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %9, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [10 x %struct.tda10071_reg_val_mask], [10 x %struct.tda10071_reg_val_mask]* %18, i64 0, i64 %357
  %359 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @tda10071_wr_reg_mask(%struct.tda10071_dev* %345, i32 %350, i32 %355, i32 %360)
  store i32 %361, i32* %8, align 4
  %362 = load i32, i32* %8, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %344
  br label %869

365:                                              ; preds = %344
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %9, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %9, align 4
  br label %339

369:                                              ; preds = %339
  %370 = load i32, i32* @CMD_SET_SLEEP_MODE, align 4
  %371 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 0
  store i32 %370, i32* %373, align 4
  %374 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 1
  store i32 0, i32* %376, align 4
  %377 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 2
  store i32 0, i32* %379, align 4
  %380 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 1
  store i32 3, i32* %380, align 8
  %381 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %382 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %381, %struct.tda10071_cmd* %7)
  store i32 %382, i32* %8, align 4
  %383 = load i32, i32* %8, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %369
  br label %869

386:                                              ; preds = %369
  br label %824

387:                                              ; preds = %1
  %388 = load i32*, i32** %15, align 8
  %389 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %390 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %389, i32 0, i32 0
  %391 = call i32 @request_firmware(%struct.firmware** %14, i32* %388, i32* %390)
  store i32 %391, i32* %8, align 4
  %392 = load i32, i32* %8, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %400

394:                                              ; preds = %387
  %395 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %396 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %395, i32 0, i32 0
  %397 = load i32*, i32** %15, align 8
  %398 = load i32, i32* %8, align 4
  %399 = call i32 (i32*, i8*, ...) @dev_err(i32* %396, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str, i64 0, i64 0), i32* %397, i32 %398)
  br label %869

400:                                              ; preds = %387
  store i32 0, i32* %9, align 4
  br label %401

401:                                              ; preds = %428, %400
  %402 = load i32, i32* %9, align 4
  %403 = getelementptr inbounds [43 x %struct.tda10071_reg_val_mask], [43 x %struct.tda10071_reg_val_mask]* %19, i64 0, i64 0
  %404 = call i32 @ARRAY_SIZE(%struct.tda10071_reg_val_mask* %403)
  %405 = icmp slt i32 %402, %404
  br i1 %405, label %406, label %431

406:                                              ; preds = %401
  %407 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %408 = load i32, i32* %9, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [43 x %struct.tda10071_reg_val_mask], [43 x %struct.tda10071_reg_val_mask]* %19, i64 0, i64 %409
  %411 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %410, i32 0, i32 5
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* %9, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [43 x %struct.tda10071_reg_val_mask], [43 x %struct.tda10071_reg_val_mask]* %19, i64 0, i64 %414
  %416 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %415, i32 0, i32 4
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* %9, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [43 x %struct.tda10071_reg_val_mask], [43 x %struct.tda10071_reg_val_mask]* %19, i64 0, i64 %419
  %421 = getelementptr inbounds %struct.tda10071_reg_val_mask, %struct.tda10071_reg_val_mask* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @tda10071_wr_reg_mask(%struct.tda10071_dev* %407, i32 %412, i32 %417, i32 %422)
  store i32 %423, i32* %8, align 4
  %424 = load i32, i32* %8, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %406
  br label %866

427:                                              ; preds = %406
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %9, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %9, align 4
  br label %401

431:                                              ; preds = %401
  %432 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %433 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %432, i32 0, i32 7
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @regmap_write(i32 %434, i32 224, i32 127)
  store i32 %435, i32* %8, align 4
  %436 = load i32, i32* %8, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %431
  br label %866

439:                                              ; preds = %431
  %440 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %441 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %440, i32 0, i32 7
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @regmap_write(i32 %442, i32 247, i32 129)
  store i32 %443, i32* %8, align 4
  %444 = load i32, i32* %8, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %439
  br label %866

447:                                              ; preds = %439
  %448 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %449 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %448, i32 0, i32 7
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @regmap_write(i32 %450, i32 248, i32 0)
  store i32 %451, i32* %8, align 4
  %452 = load i32, i32* %8, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %447
  br label %866

455:                                              ; preds = %447
  %456 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %457 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %456, i32 0, i32 7
  %458 = load i32, i32* %457, align 4
  %459 = call i32 @regmap_write(i32 %458, i32 249, i32 0)
  store i32 %459, i32* %8, align 4
  %460 = load i32, i32* %8, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %455
  br label %866

463:                                              ; preds = %455
  %464 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %465 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %464, i32 0, i32 0
  %466 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tda10071_ops, i32 0, i32 0, i32 0), align 8
  %467 = call i32 (i32*, i8*, ...) @dev_info(i32* %465, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32* %466)
  %468 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %469 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %468, i32 0, i32 0
  %470 = load i32*, i32** %15, align 8
  %471 = call i32 (i32*, i8*, ...) @dev_info(i32* %469, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32* %470)
  %472 = load %struct.firmware*, %struct.firmware** %14, align 8
  %473 = getelementptr inbounds %struct.firmware, %struct.firmware* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = sub nsw i32 %474, 1
  store i32 %475, i32* %12, align 4
  %476 = load i32, i32* %12, align 4
  store i32 %476, i32* %11, align 4
  br label %477

477:                                              ; preds = %515, %463
  %478 = load i32, i32* %11, align 4
  %479 = icmp sgt i32 %478, 0
  br i1 %479, label %480, label %522

480:                                              ; preds = %477
  %481 = load i32, i32* %11, align 4
  store i32 %481, i32* %10, align 4
  %482 = load i32, i32* %10, align 4
  %483 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %484 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %483, i32 0, i32 2
  %485 = load i32, i32* %484, align 8
  %486 = sub nsw i32 %485, 1
  %487 = icmp sgt i32 %482, %486
  br i1 %487, label %488, label %493

488:                                              ; preds = %480
  %489 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %490 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 8
  %492 = sub nsw i32 %491, 1
  store i32 %492, i32* %10, align 4
  br label %493

493:                                              ; preds = %488, %480
  %494 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %495 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %494, i32 0, i32 7
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.firmware*, %struct.firmware** %14, align 8
  %498 = getelementptr inbounds %struct.firmware, %struct.firmware* %497, i32 0, i32 1
  %499 = load i32*, i32** %498, align 8
  %500 = load i32, i32* %12, align 4
  %501 = load i32, i32* %11, align 4
  %502 = sub nsw i32 %500, %501
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32, i32* %499, i64 %503
  %505 = load i32, i32* %10, align 4
  %506 = call i32 @regmap_bulk_write(i32 %496, i32 250, i32* %504, i32 %505)
  store i32 %506, i32* %8, align 4
  %507 = load i32, i32* %8, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %493
  %510 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %511 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %510, i32 0, i32 0
  %512 = load i32, i32* %8, align 4
  %513 = call i32 (i32*, i8*, ...) @dev_err(i32* %511, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %512)
  br label %866

514:                                              ; preds = %493
  br label %515

515:                                              ; preds = %514
  %516 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %517 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 8
  %519 = sub nsw i32 %518, 1
  %520 = load i32, i32* %11, align 4
  %521 = sub nsw i32 %520, %519
  store i32 %521, i32* %11, align 4
  br label %477

522:                                              ; preds = %477
  %523 = load %struct.firmware*, %struct.firmware** %14, align 8
  %524 = call i32 @release_firmware(%struct.firmware* %523)
  %525 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %526 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %525, i32 0, i32 7
  %527 = load i32, i32* %526, align 4
  %528 = call i32 @regmap_write(i32 %527, i32 247, i32 12)
  store i32 %528, i32* %8, align 4
  %529 = load i32, i32* %8, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %522
  br label %869

532:                                              ; preds = %522
  %533 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %534 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %533, i32 0, i32 7
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @regmap_write(i32 %535, i32 224, i32 0)
  store i32 %536, i32* %8, align 4
  %537 = load i32, i32* %8, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %540

539:                                              ; preds = %532
  br label %869

540:                                              ; preds = %532
  %541 = call i32 @msleep(i32 250)
  %542 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %543 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %542, i32 0, i32 7
  %544 = load i32, i32* %543, align 4
  %545 = call i32 @regmap_read(i32 %544, i32 81, i32* %13)
  store i32 %545, i32* %8, align 4
  %546 = load i32, i32* %8, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %540
  br label %869

549:                                              ; preds = %540
  %550 = load i32, i32* %13, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %558

552:                                              ; preds = %549
  %553 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %554 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %553, i32 0, i32 0
  %555 = call i32 (i32*, i8*, ...) @dev_info(i32* %554, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %556 = load i32, i32* @EFAULT, align 4
  %557 = sub nsw i32 0, %556
  store i32 %557, i32* %8, align 4
  br label %869

558:                                              ; preds = %549
  %559 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %560 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %559, i32 0, i32 1
  store i32 1, i32* %560, align 4
  br label %561

561:                                              ; preds = %558
  %562 = load i32, i32* @CMD_GET_FW_VERSION, align 4
  %563 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %564 = load i32*, i32** %563, align 8
  %565 = getelementptr inbounds i32, i32* %564, i64 0
  store i32 %562, i32* %565, align 4
  %566 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 1
  store i32 1, i32* %566, align 8
  %567 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %568 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %567, %struct.tda10071_cmd* %7)
  store i32 %568, i32* %8, align 4
  %569 = load i32, i32* %8, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %572

571:                                              ; preds = %561
  br label %869

572:                                              ; preds = %561
  %573 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %574 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %573, i32 0, i32 7
  %575 = load i32, i32* %574, align 4
  %576 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 1
  %577 = load i32, i32* %576, align 8
  %578 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %579 = call i32 @regmap_bulk_read(i32 %575, i32 %577, i32* %578, i32 4)
  store i32 %579, i32* %8, align 4
  %580 = load i32, i32* %8, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %583

582:                                              ; preds = %572
  br label %869

583:                                              ; preds = %572
  %584 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %585 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %584, i32 0, i32 0
  %586 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %587 = load i32, i32* %586, align 16
  %588 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %589 = load i32, i32* %588, align 4
  %590 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %591 = load i32, i32* %590, align 8
  %592 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %593 = load i32, i32* %592, align 4
  %594 = call i32 (i32*, i8*, ...) @dev_info(i32* %585, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %587, i32 %589, i32 %591, i32 %593)
  %595 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %596 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %595, i32 0, i32 0
  %597 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tda10071_ops, i32 0, i32 0, i32 0), align 8
  %598 = call i32 (i32*, i8*, ...) @dev_info(i32* %596, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32* %597)
  %599 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %600 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %599, i32 0, i32 7
  %601 = load i32, i32* %600, align 4
  %602 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %603 = call i32 @regmap_bulk_read(i32 %601, i32 129, i32* %602, i32 2)
  store i32 %603, i32* %8, align 4
  %604 = load i32, i32* %8, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %607

606:                                              ; preds = %583
  br label %869

607:                                              ; preds = %583
  %608 = load i32, i32* @CMD_DEMOD_INIT, align 4
  %609 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %610 = load i32*, i32** %609, align 8
  %611 = getelementptr inbounds i32, i32* %610, i64 0
  store i32 %608, i32* %611, align 4
  %612 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %613 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %612, i32 0, i32 3
  %614 = load i32, i32* %613, align 4
  %615 = sdiv i32 %614, 1000
  %616 = ashr i32 %615, 8
  %617 = and i32 %616, 255
  %618 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %619 = load i32*, i32** %618, align 8
  %620 = getelementptr inbounds i32, i32* %619, i64 1
  store i32 %617, i32* %620, align 4
  %621 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %622 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %621, i32 0, i32 3
  %623 = load i32, i32* %622, align 4
  %624 = sdiv i32 %623, 1000
  %625 = ashr i32 %624, 0
  %626 = and i32 %625, 255
  %627 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %628 = load i32*, i32** %627, align 8
  %629 = getelementptr inbounds i32, i32* %628, i64 2
  store i32 %626, i32* %629, align 4
  %630 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %631 = load i32, i32* %630, align 16
  %632 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %633 = load i32*, i32** %632, align 8
  %634 = getelementptr inbounds i32, i32* %633, i64 3
  store i32 %631, i32* %634, align 4
  %635 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %636 = load i32, i32* %635, align 4
  %637 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %638 = load i32*, i32** %637, align 8
  %639 = getelementptr inbounds i32, i32* %638, i64 4
  store i32 %636, i32* %639, align 4
  %640 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %641 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %640, i32 0, i32 0
  %642 = load i32, i32* %641, align 8
  %643 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %644 = load i32*, i32** %643, align 8
  %645 = getelementptr inbounds i32, i32* %644, i64 5
  store i32 %642, i32* %645, align 4
  %646 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %647 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %646, i32 0, i32 4
  %648 = load i32, i32* %647, align 8
  %649 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %650 = load i32*, i32** %649, align 8
  %651 = getelementptr inbounds i32, i32* %650, i64 6
  store i32 %648, i32* %651, align 4
  %652 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %653 = load i32*, i32** %652, align 8
  %654 = getelementptr inbounds i32, i32* %653, i64 7
  store i32 0, i32* %654, align 4
  %655 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 1
  store i32 8, i32* %655, align 8
  %656 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %657 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %656, %struct.tda10071_cmd* %7)
  store i32 %657, i32* %8, align 4
  %658 = load i32, i32* %8, align 4
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %661

660:                                              ; preds = %607
  br label %869

661:                                              ; preds = %607
  %662 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %663 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %662, i32 0, i32 5
  %664 = load i32, i32* %663, align 4
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %670

666:                                              ; preds = %661
  %667 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %668 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %667, i32 0, i32 5
  %669 = load i32, i32* %668, align 4
  store i32 %669, i32* %16, align 4
  br label %671

670:                                              ; preds = %661
  store i32 20, i32* %16, align 4
  br label %671

671:                                              ; preds = %670, %666
  %672 = load i32, i32* @CMD_TUNER_INIT, align 4
  %673 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %674 = load i32*, i32** %673, align 8
  %675 = getelementptr inbounds i32, i32* %674, i64 0
  store i32 %672, i32* %675, align 4
  %676 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %677 = load i32*, i32** %676, align 8
  %678 = getelementptr inbounds i32, i32* %677, i64 1
  store i32 0, i32* %678, align 4
  %679 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %680 = load i32*, i32** %679, align 8
  %681 = getelementptr inbounds i32, i32* %680, i64 2
  store i32 0, i32* %681, align 4
  %682 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %683 = load i32*, i32** %682, align 8
  %684 = getelementptr inbounds i32, i32* %683, i64 3
  store i32 0, i32* %684, align 4
  %685 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %686 = load i32*, i32** %685, align 8
  %687 = getelementptr inbounds i32, i32* %686, i64 4
  store i32 0, i32* %687, align 4
  %688 = load i32, i32* %16, align 4
  %689 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %690 = load i32*, i32** %689, align 8
  %691 = getelementptr inbounds i32, i32* %690, i64 5
  store i32 %688, i32* %691, align 4
  %692 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %693 = load i32*, i32** %692, align 8
  %694 = getelementptr inbounds i32, i32* %693, i64 6
  store i32 0, i32* %694, align 4
  %695 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %696 = load i32*, i32** %695, align 8
  %697 = getelementptr inbounds i32, i32* %696, i64 7
  store i32 3, i32* %697, align 4
  %698 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %699 = load i32*, i32** %698, align 8
  %700 = getelementptr inbounds i32, i32* %699, i64 8
  store i32 2, i32* %700, align 4
  %701 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %702 = load i32*, i32** %701, align 8
  %703 = getelementptr inbounds i32, i32* %702, i64 9
  store i32 2, i32* %703, align 4
  %704 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %705 = load i32*, i32** %704, align 8
  %706 = getelementptr inbounds i32, i32* %705, i64 10
  store i32 0, i32* %706, align 4
  %707 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %708 = load i32*, i32** %707, align 8
  %709 = getelementptr inbounds i32, i32* %708, i64 11
  store i32 0, i32* %709, align 4
  %710 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %711 = load i32*, i32** %710, align 8
  %712 = getelementptr inbounds i32, i32* %711, i64 12
  store i32 0, i32* %712, align 4
  %713 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %714 = load i32*, i32** %713, align 8
  %715 = getelementptr inbounds i32, i32* %714, i64 13
  store i32 0, i32* %715, align 4
  %716 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %717 = load i32*, i32** %716, align 8
  %718 = getelementptr inbounds i32, i32* %717, i64 14
  store i32 0, i32* %718, align 4
  %719 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 1
  store i32 15, i32* %719, align 8
  %720 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %721 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %720, %struct.tda10071_cmd* %7)
  store i32 %721, i32* %8, align 4
  %722 = load i32, i32* %8, align 4
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %724, label %725

724:                                              ; preds = %671
  br label %869

725:                                              ; preds = %671
  %726 = load i32, i32* @CMD_MPEG_CONFIG, align 4
  %727 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %728 = load i32*, i32** %727, align 8
  %729 = getelementptr inbounds i32, i32* %728, i64 0
  store i32 %726, i32* %729, align 4
  %730 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %731 = load i32*, i32** %730, align 8
  %732 = getelementptr inbounds i32, i32* %731, i64 1
  store i32 0, i32* %732, align 4
  %733 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %734 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %733, i32 0, i32 6
  %735 = load i32, i32* %734, align 8
  %736 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %737 = load i32*, i32** %736, align 8
  %738 = getelementptr inbounds i32, i32* %737, i64 2
  store i32 %735, i32* %738, align 4
  %739 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %740 = load i32*, i32** %739, align 8
  %741 = getelementptr inbounds i32, i32* %740, i64 3
  store i32 0, i32* %741, align 4
  %742 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %743 = load i32*, i32** %742, align 8
  %744 = getelementptr inbounds i32, i32* %743, i64 4
  store i32 4, i32* %744, align 4
  %745 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %746 = load i32*, i32** %745, align 8
  %747 = getelementptr inbounds i32, i32* %746, i64 5
  store i32 0, i32* %747, align 4
  %748 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 1
  store i32 6, i32* %748, align 8
  %749 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %750 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %749, %struct.tda10071_cmd* %7)
  store i32 %750, i32* %8, align 4
  %751 = load i32, i32* %8, align 4
  %752 = icmp ne i32 %751, 0
  br i1 %752, label %753, label %754

753:                                              ; preds = %725
  br label %869

754:                                              ; preds = %725
  %755 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %756 = getelementptr inbounds %struct.tda10071_dev, %struct.tda10071_dev* %755, i32 0, i32 7
  %757 = load i32, i32* %756, align 4
  %758 = call i32 @regmap_update_bits(i32 %757, i32 240, i32 1, i32 1)
  store i32 %758, i32* %8, align 4
  %759 = load i32, i32* %8, align 4
  %760 = icmp ne i32 %759, 0
  br i1 %760, label %761, label %762

761:                                              ; preds = %754
  br label %869

762:                                              ; preds = %754
  %763 = load i32, i32* @CMD_LNB_CONFIG, align 4
  %764 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %765 = load i32*, i32** %764, align 8
  %766 = getelementptr inbounds i32, i32* %765, i64 0
  store i32 %763, i32* %766, align 4
  %767 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %768 = load i32*, i32** %767, align 8
  %769 = getelementptr inbounds i32, i32* %768, i64 1
  store i32 0, i32* %769, align 4
  %770 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %771 = load i32*, i32** %770, align 8
  %772 = getelementptr inbounds i32, i32* %771, i64 2
  store i32 150, i32* %772, align 4
  %773 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %774 = load i32*, i32** %773, align 8
  %775 = getelementptr inbounds i32, i32* %774, i64 3
  store i32 3, i32* %775, align 4
  %776 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %777 = load i32*, i32** %776, align 8
  %778 = getelementptr inbounds i32, i32* %777, i64 4
  store i32 22, i32* %778, align 4
  %779 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %780 = load i32*, i32** %779, align 8
  %781 = getelementptr inbounds i32, i32* %780, i64 5
  store i32 1, i32* %781, align 4
  %782 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %783 = load i32*, i32** %782, align 8
  %784 = getelementptr inbounds i32, i32* %783, i64 6
  store i32 1, i32* %784, align 4
  %785 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %786 = load i32*, i32** %785, align 8
  %787 = getelementptr inbounds i32, i32* %786, i64 7
  store i32 30, i32* %787, align 4
  %788 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %789 = load i32*, i32** %788, align 8
  %790 = getelementptr inbounds i32, i32* %789, i64 8
  store i32 30, i32* %790, align 4
  %791 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %792 = load i32*, i32** %791, align 8
  %793 = getelementptr inbounds i32, i32* %792, i64 9
  store i32 30, i32* %793, align 4
  %794 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %795 = load i32*, i32** %794, align 8
  %796 = getelementptr inbounds i32, i32* %795, i64 10
  store i32 30, i32* %796, align 4
  %797 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 1
  store i32 11, i32* %797, align 8
  %798 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %799 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %798, %struct.tda10071_cmd* %7)
  store i32 %799, i32* %8, align 4
  %800 = load i32, i32* %8, align 4
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %802, label %803

802:                                              ; preds = %762
  br label %869

803:                                              ; preds = %762
  %804 = load i32, i32* @CMD_BER_CONTROL, align 4
  %805 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %806 = load i32*, i32** %805, align 8
  %807 = getelementptr inbounds i32, i32* %806, i64 0
  store i32 %804, i32* %807, align 4
  %808 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %809 = load i32*, i32** %808, align 8
  %810 = getelementptr inbounds i32, i32* %809, i64 1
  store i32 0, i32* %810, align 4
  %811 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %812 = load i32*, i32** %811, align 8
  %813 = getelementptr inbounds i32, i32* %812, i64 2
  store i32 14, i32* %813, align 4
  %814 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 0
  %815 = load i32*, i32** %814, align 8
  %816 = getelementptr inbounds i32, i32* %815, i64 3
  store i32 14, i32* %816, align 4
  %817 = getelementptr inbounds %struct.tda10071_cmd, %struct.tda10071_cmd* %7, i32 0, i32 1
  store i32 4, i32* %817, align 8
  %818 = load %struct.tda10071_dev*, %struct.tda10071_dev** %4, align 8
  %819 = call i32 @tda10071_cmd_execute(%struct.tda10071_dev* %818, %struct.tda10071_cmd* %7)
  store i32 %819, i32* %8, align 4
  %820 = load i32, i32* %8, align 4
  %821 = icmp ne i32 %820, 0
  br i1 %821, label %822, label %823

822:                                              ; preds = %803
  br label %869

823:                                              ; preds = %803
  br label %824

824:                                              ; preds = %823, %386
  %825 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %826 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %825, i32 0, i32 3
  %827 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %826, i32 0, i32 0
  store i32 1, i32* %827, align 8
  %828 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %829 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %830 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %829, i32 0, i32 3
  %831 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %830, i32 0, i32 1
  %832 = load %struct.TYPE_13__*, %struct.TYPE_13__** %831, align 8
  %833 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %832, i64 0
  %834 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %833, i32 0, i32 0
  store i8* %828, i8** %834, align 8
  %835 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %836 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %835, i32 0, i32 2
  %837 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %836, i32 0, i32 0
  store i32 1, i32* %837, align 8
  %838 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %839 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %840 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %839, i32 0, i32 2
  %841 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %840, i32 0, i32 1
  %842 = load %struct.TYPE_15__*, %struct.TYPE_15__** %841, align 8
  %843 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %842, i64 0
  %844 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %843, i32 0, i32 0
  store i8* %838, i8** %844, align 8
  %845 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %846 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %845, i32 0, i32 1
  %847 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %846, i32 0, i32 0
  store i32 1, i32* %847, align 8
  %848 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %849 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %850 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %849, i32 0, i32 1
  %851 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %850, i32 0, i32 1
  %852 = load %struct.TYPE_17__*, %struct.TYPE_17__** %851, align 8
  %853 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %852, i64 0
  %854 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %853, i32 0, i32 0
  store i8* %848, i8** %854, align 8
  %855 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %856 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %855, i32 0, i32 0
  %857 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %856, i32 0, i32 0
  store i32 1, i32* %857, align 8
  %858 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %859 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %860 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %859, i32 0, i32 0
  %861 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %860, i32 0, i32 1
  %862 = load %struct.TYPE_19__*, %struct.TYPE_19__** %861, align 8
  %863 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %862, i64 0
  %864 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %863, i32 0, i32 0
  store i8* %858, i8** %864, align 8
  %865 = load i32, i32* %8, align 4
  store i32 %865, i32* %2, align 4
  br label %875

866:                                              ; preds = %509, %462, %454, %446, %438, %426
  %867 = load %struct.firmware*, %struct.firmware** %14, align 8
  %868 = call i32 @release_firmware(%struct.firmware* %867)
  br label %869

869:                                              ; preds = %866, %822, %802, %761, %753, %724, %660, %606, %582, %571, %552, %548, %539, %531, %394, %385, %364
  %870 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %871 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %870, i32 0, i32 0
  %872 = load i32, i32* %8, align 4
  %873 = call i32 @dev_dbg(i32* %871, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %872)
  %874 = load i32, i32* %8, align 4
  store i32 %874, i32* %2, align 4
  br label %875

875:                                              ; preds = %869, %824
  %876 = load i32, i32* %2, align 4
  ret i32 %876
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.tda10071_reg_val_mask*) #2

declare dso_local i32 @tda10071_wr_reg_mask(%struct.tda10071_dev*, i32, i32, i32) #2

declare dso_local i32 @tda10071_cmd_execute(%struct.tda10071_dev*, %struct.tda10071_cmd*) #2

declare dso_local i32 @request_firmware(%struct.firmware**, i32*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @regmap_write(i32, i32, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, ...) #2

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @regmap_read(i32, i32, i32*) #2

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
