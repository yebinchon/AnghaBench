; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_identify_module.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_identify_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i64, i32, i32 }
%struct.smiapp_sensor = type { %struct.smiapp_module_info, %struct.TYPE_4__* }
%struct.smiapp_module_info = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32 }

@SMIAPP_NAME = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_MANUFACTURER_ID = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_MODEL_ID = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_REVISION_NUMBER_MAJOR = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_REVISION_NUMBER_MINOR = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_MODULE_DATE_YEAR = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_MODULE_DATE_MONTH = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_MODULE_DATE_DAY = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_SENSOR_MANUFACTURER_ID = common dso_local global i32 0, align 4
@SMIAPP_REG_U16_SENSOR_MODEL_ID = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_SENSOR_REVISION_NUMBER = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_SENSOR_FIRMWARE_VERSION = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_SMIA_VERSION = common dso_local global i32 0, align 4
@SMIAPP_REG_U8_SMIAPP_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"sensor detection failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"module 0x%2.2x-0x%4.4x\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"module revision 0x%2.2x-0x%2.2x date %2.2d-%2.2d-%2.2d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"sensor 0x%2.2x-0x%4.4x\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"sensor revision 0x%2.2x firmware version 0x%2.2x\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"smia version %2.2d smiapp version %2.2d\0A\00", align 1
@smiapp_module_idents = common dso_local global %struct.TYPE_5__* null, align 8
@SMIAPP_MODULE_IDENT_FLAG_REV_LE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"no quirks for this module; let's hope it's fully compliant\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"the sensor is called %s, ident %2.2x%4.4x%2.2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @smiapp_identify_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smiapp_identify_module(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smiapp_sensor*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.smiapp_module_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %3, align 8
  %8 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %9 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %14 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %13, i32 0, i32 0
  store %struct.smiapp_module_info* %14, %struct.smiapp_module_info** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @SMIAPP_NAME, align 4
  %16 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %17 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %16, i32 0, i32 13
  store i32 %15, i32* %17, align 8
  %18 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %19 = load i32, i32* @SMIAPP_REG_U8_MANUFACTURER_ID, align 4
  %20 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %21 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %20, i32 0, i32 0
  %22 = call i32 @smiapp_read_8only(%struct.smiapp_sensor* %18, i32 %19, i64* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %27 = load i32, i32* @SMIAPP_REG_U16_MODEL_ID, align 4
  %28 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %29 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %28, i32 0, i32 1
  %30 = call i32 @smiapp_read_8only(%struct.smiapp_sensor* %26, i32 %27, i64* %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %25, %1
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %36 = load i32, i32* @SMIAPP_REG_U8_REVISION_NUMBER_MAJOR, align 4
  %37 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %38 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %37, i32 0, i32 2
  %39 = call i32 @smiapp_read_8only(%struct.smiapp_sensor* %35, i32 %36, i64* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %45 = load i32, i32* @SMIAPP_REG_U8_REVISION_NUMBER_MINOR, align 4
  %46 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %47 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %46, i32 0, i32 3
  %48 = call i32 @smiapp_read_8only(%struct.smiapp_sensor* %44, i32 %45, i64* %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %54 = load i32, i32* @SMIAPP_REG_U8_MODULE_DATE_YEAR, align 4
  %55 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %56 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %55, i32 0, i32 4
  %57 = call i32 @smiapp_read_8only(%struct.smiapp_sensor* %53, i32 %54, i64* %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %63 = load i32, i32* @SMIAPP_REG_U8_MODULE_DATE_MONTH, align 4
  %64 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %65 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %64, i32 0, i32 5
  %66 = call i32 @smiapp_read_8only(%struct.smiapp_sensor* %62, i32 %63, i64* %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %72 = load i32, i32* @SMIAPP_REG_U8_MODULE_DATE_DAY, align 4
  %73 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %74 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %73, i32 0, i32 6
  %75 = call i32 @smiapp_read_8only(%struct.smiapp_sensor* %71, i32 %72, i64* %74)
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %81 = load i32, i32* @SMIAPP_REG_U8_SENSOR_MANUFACTURER_ID, align 4
  %82 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %83 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %82, i32 0, i32 7
  %84 = call i32 @smiapp_read_8only(%struct.smiapp_sensor* %80, i32 %81, i64* %83)
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %90 = load i32, i32* @SMIAPP_REG_U16_SENSOR_MODEL_ID, align 4
  %91 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %92 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %91, i32 0, i32 8
  %93 = call i32 @smiapp_read_8only(%struct.smiapp_sensor* %89, i32 %90, i64* %92)
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %88, %85
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %99 = load i32, i32* @SMIAPP_REG_U8_SENSOR_REVISION_NUMBER, align 4
  %100 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %101 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %100, i32 0, i32 9
  %102 = call i32 @smiapp_read_8only(%struct.smiapp_sensor* %98, i32 %99, i64* %101)
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %97, %94
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %108 = load i32, i32* @SMIAPP_REG_U8_SENSOR_FIRMWARE_VERSION, align 4
  %109 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %110 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %109, i32 0, i32 10
  %111 = call i32 @smiapp_read_8only(%struct.smiapp_sensor* %107, i32 %108, i64* %110)
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %106, %103
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %117 = load i32, i32* @SMIAPP_REG_U8_SMIA_VERSION, align 4
  %118 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %119 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %118, i32 0, i32 11
  %120 = call i32 @smiapp_read_8only(%struct.smiapp_sensor* %116, i32 %117, i64* %119)
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %115, %112
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %3, align 8
  %126 = load i32, i32* @SMIAPP_REG_U8_SMIAPP_VERSION, align 4
  %127 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %128 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %127, i32 0, i32 12
  %129 = call i32 @smiapp_read_8only(%struct.smiapp_sensor* %125, i32 %126, i64* %128)
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %124, %121
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %134, i32 0, i32 0
  %136 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %331

139:                                              ; preds = %130
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %143 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %146 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i32*, i8*, i64, i64, ...) @dev_dbg(i32* %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %144, i64 %147)
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %152 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %155 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %158 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %161 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %164 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = call i32 (i32*, i8*, i64, i64, ...) @dev_dbg(i32* %150, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %153, i64 %156, i64 %159, i64 %162, i64 %165)
  %167 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %168 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %167, i32 0, i32 0
  %169 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %170 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %169, i32 0, i32 7
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %173 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %172, i32 0, i32 8
  %174 = load i64, i64* %173, align 8
  %175 = call i32 (i32*, i8*, i64, i64, ...) @dev_dbg(i32* %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %171, i64 %174)
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 0
  %178 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %179 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %178, i32 0, i32 9
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %182 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %181, i32 0, i32 10
  %183 = load i64, i64* %182, align 8
  %184 = call i32 (i32*, i8*, i64, i64, ...) @dev_dbg(i32* %177, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %180, i64 %183)
  %185 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %186 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %185, i32 0, i32 0
  %187 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %188 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %187, i32 0, i32 11
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %191 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %190, i32 0, i32 12
  %192 = load i64, i64* %191, align 8
  %193 = call i32 (i32*, i8*, i64, i64, ...) @dev_dbg(i32* %186, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %189, i64 %192)
  %194 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %195 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %219, label %198

198:                                              ; preds = %139
  %199 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %200 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %219, label %203

203:                                              ; preds = %198
  %204 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %205 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %204, i32 0, i32 7
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %208 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  %209 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %210 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %209, i32 0, i32 8
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %213 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %212, i32 0, i32 1
  store i64 %211, i64* %213, align 8
  %214 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %215 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %214, i32 0, i32 9
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %218 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %217, i32 0, i32 2
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %203, %198, %139
  store i32 0, i32* %6, align 4
  br label %220

220:                                              ; preds = %302, %219
  %221 = load i32, i32* %6, align 4
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smiapp_module_idents, align 8
  %223 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %222)
  %224 = icmp ult i32 %221, %223
  br i1 %224, label %225, label %305

225:                                              ; preds = %220
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smiapp_module_idents, align 8
  %227 = load i32, i32* %6, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %233 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %231, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %225
  br label %302

237:                                              ; preds = %225
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smiapp_module_idents, align 8
  %239 = load i32, i32* %6, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %245 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %243, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %237
  br label %302

249:                                              ; preds = %237
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smiapp_module_idents, align 8
  %251 = load i32, i32* %6, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @SMIAPP_MODULE_IDENT_FLAG_REV_LE, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %249
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smiapp_module_idents, align 8
  %261 = load i32, i32* %6, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %267 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = icmp slt i64 %265, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %259
  br label %302

271:                                              ; preds = %259
  br label %285

272:                                              ; preds = %249
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smiapp_module_idents, align 8
  %274 = load i32, i32* %6, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %280 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %278, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %272
  br label %302

284:                                              ; preds = %272
  br label %285

285:                                              ; preds = %284, %271
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smiapp_module_idents, align 8
  %287 = load i32, i32* %6, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %293 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %292, i32 0, i32 13
  store i32 %291, i32* %293, align 8
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smiapp_module_idents, align 8
  %295 = load i32, i32* %6, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %301 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %300, i32 0, i32 14
  store i32 %299, i32* %301, align 4
  br label %305

302:                                              ; preds = %283, %270, %248, %236
  %303 = load i32, i32* %6, align 4
  %304 = add i32 %303, 1
  store i32 %304, i32* %6, align 4
  br label %220

305:                                              ; preds = %285, %220
  %306 = load i32, i32* %6, align 4
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smiapp_module_idents, align 8
  %308 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %307)
  %309 = icmp uge i32 %306, %308
  br i1 %309, label %310, label %314

310:                                              ; preds = %305
  %311 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %312 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %311, i32 0, i32 0
  %313 = call i32 @dev_warn(i32* %312, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  br label %314

314:                                              ; preds = %310, %305
  %315 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %316 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %315, i32 0, i32 0
  %317 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %318 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %317, i32 0, i32 13
  %319 = load i32, i32* %318, align 8
  %320 = sext i32 %319 to i64
  %321 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %322 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %325 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %5, align 8
  %328 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %327, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = call i32 (i32*, i8*, i64, i64, ...) @dev_dbg(i32* %316, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i64 %320, i64 %323, i64 %326, i64 %329)
  store i32 0, i32* %2, align 4
  br label %331

331:                                              ; preds = %314, %133
  %332 = load i32, i32* %2, align 4
  ret i32 %332
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @smiapp_read_8only(%struct.smiapp_sensor*, i32, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
