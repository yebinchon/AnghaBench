; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_si2157.c_si2157_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_si2157.c_si2157_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.i2c_client* }
%struct.dtv_frontend_properties = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.si2157_dev = type { i32, i64, i32, i32 }
%struct.si2157_cmd = type { i32*, i32, i32 }
%struct.firmware = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\15\00\06\07\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"if_frequency kHz=%u\0A\00", align 1
@SI2157_CHIPTYPE_SI2146 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"\C0\05\01\00\00\0B\00\00\01\00", align 1
@SI2157_CHIPTYPE_SI2141 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"\C0\00\0D\0E\00\01\01\01\01\03\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\C0\00\0C\00\00\01\01\01\01\01\01\02\00\00\01\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\C0\08\01\02\00\00\01\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\02\00", align 1
@SI2158_A20_FIRMWARE = common dso_local global i8* null, align 8
@SI2141_A10_FIRMWARE = common dso_local global i8* null, align 8
@SI2157_A30_FIRMWARE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"unknown chip version Si21%d-%c%c%c\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"found a 'Silicon Labs Si21%d-%c%c%c'\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"firmware file '%s' not found\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"firmware file '%s' is invalid\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@SI2157_ARGLEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"Bad firmware length\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"firmware download failed %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\11\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"firmware version: %c.%c.%d\0A\00", align 1
@FE_SCALE_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @si2157_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2157_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.si2157_dev*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.si2157_cmd, align 8
  %11 = alloca %struct.firmware*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %4, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = call %struct.si2157_dev* @i2c_get_clientdata(%struct.i2c_client* %18)
  store %struct.si2157_dev* %19, %struct.si2157_dev** %5, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  store %struct.dtv_frontend_properties* %21, %struct.dtv_frontend_properties** %6, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @memcpy(i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %28 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 1
  store i32 4, i32* %28, align 8
  %29 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 2
  store i32 4, i32* %29, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @si2157_cmd_execute(%struct.i2c_client* %30, %struct.si2157_cmd* %10)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %349

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 0
  %41 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %40, %45
  store i32 %46, i32* %13, align 4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %13, align 4
  %50 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.si2157_dev*, %struct.si2157_dev** %5, align 8
  %53 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %54, 1000
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %35
  br label %329

58:                                               ; preds = %35
  %59 = load %struct.si2157_dev*, %struct.si2157_dev** %5, align 8
  %60 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SI2157_CHIPTYPE_SI2146, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @memcpy(i32* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %68 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 1
  store i32 9, i32* %68, align 8
  br label %86

69:                                               ; preds = %58
  %70 = load %struct.si2157_dev*, %struct.si2157_dev** %5, align 8
  %71 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SI2157_CHIPTYPE_SI2141, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @memcpy(i32* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %79 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 1
  store i32 10, i32* %79, align 8
  br label %85

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @memcpy(i32* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 15)
  %84 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 1
  store i32 15, i32* %84, align 8
  br label %85

85:                                               ; preds = %80, %75
  br label %86

86:                                               ; preds = %85, %64
  %87 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 2
  store i32 1, i32* %87, align 4
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = call i32 @si2157_cmd_execute(%struct.i2c_client* %88, %struct.si2157_cmd* %10)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %349

93:                                               ; preds = %86
  %94 = load %struct.si2157_dev*, %struct.si2157_dev** %5, align 8
  %95 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SI2157_CHIPTYPE_SI2141, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @memcpy(i32* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %103 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 1
  store i32 7, i32* %103, align 8
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = call i32 @si2157_cmd_execute(%struct.i2c_client* %104, %struct.si2157_cmd* %10)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %349

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %93
  %111 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @memcpy(i32* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %114 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 1
  store i32 1, i32* %114, align 8
  %115 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 2
  store i32 13, i32* %115, align 4
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = call i32 @si2157_cmd_execute(%struct.i2c_client* %116, %struct.si2157_cmd* %10)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %349

121:                                              ; preds = %110
  %122 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 24
  %127 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 16
  %132 = or i32 %126, %131
  %133 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 8
  %138 = or i32 %132, %137
  %139 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 0
  %144 = or i32 %138, %143
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  switch i32 %145, label %153 [
    i32 1094332976, label %146
    i32 1093677616, label %146
    i32 1093218608, label %148
    i32 1095578416, label %150
    i32 1094267696, label %152
    i32 1093612336, label %152
    i32 1093546288, label %152
  ]

146:                                              ; preds = %121, %121
  %147 = load i8*, i8** @SI2158_A20_FIRMWARE, align 8
  store i8* %147, i8** %12, align 8
  br label %175

148:                                              ; preds = %121
  %149 = load i8*, i8** @SI2141_A10_FIRMWARE, align 8
  store i8* %149, i8** %12, align 8
  br label %175

150:                                              ; preds = %121
  %151 = load i8*, i8** @SI2157_A30_FIRMWARE, align 8
  store i8* %151, i8** %12, align 8
  br label %175

152:                                              ; preds = %121, %121, %121
  store i8* null, i8** %12, align 8
  br label %175

153:                                              ; preds = %121
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i32*, i8*, ...) @dev_err(i32* %155, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %159, i32 %163, i32 %167, i32 %171)
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %7, align 4
  br label %349

175:                                              ; preds = %152, %150, %148, %146
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 3
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 4
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i32*, i8*, ...) @dev_info(i32* %177, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %181, i32 %185, i32 %189, i32 %193)
  %195 = load i8*, i8** %12, align 8
  %196 = icmp eq i8* %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %175
  br label %291

198:                                              ; preds = %175
  %199 = load i8*, i8** %12, align 8
  %200 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %201 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %200, i32 0, i32 0
  %202 = call i32 @request_firmware(%struct.firmware** %11, i8* %199, i32* %201)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  %206 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %207 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %206, i32 0, i32 0
  %208 = load i8*, i8** %12, align 8
  %209 = call i32 (i32*, i8*, ...) @dev_err(i32* %207, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %208)
  br label %349

210:                                              ; preds = %198
  %211 = load %struct.firmware*, %struct.firmware** %11, align 8
  %212 = getelementptr inbounds %struct.firmware, %struct.firmware* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = srem i32 %213, 17
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %210
  %217 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %218 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %217, i32 0, i32 0
  %219 = load i8*, i8** %12, align 8
  %220 = call i32 (i32*, i8*, ...) @dev_err(i32* %218, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %219)
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %7, align 4
  br label %346

223:                                              ; preds = %210
  %224 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %225 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %224, i32 0, i32 0
  %226 = load i8*, i8** %12, align 8
  %227 = call i32 (i32*, i8*, ...) @dev_info(i32* %225, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i8* %226)
  %228 = load %struct.firmware*, %struct.firmware** %11, align 8
  %229 = getelementptr inbounds %struct.firmware, %struct.firmware* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  store i32 %230, i32* %9, align 4
  br label %231

231:                                              ; preds = %285, %223
  %232 = load i32, i32* %9, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %288

234:                                              ; preds = %231
  %235 = load %struct.firmware*, %struct.firmware** %11, align 8
  %236 = getelementptr inbounds %struct.firmware, %struct.firmware* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.firmware*, %struct.firmware** %11, align 8
  %239 = getelementptr inbounds %struct.firmware, %struct.firmware* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sub nsw i32 %240, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %237, i64 %243
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %8, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* @SI2157_ARGLEN, align 4
  %248 = icmp sgt i32 %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %234
  %250 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %251 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %250, i32 0, i32 0
  %252 = call i32 (i32*, i8*, ...) @dev_err(i32* %251, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %253 = load i32, i32* @EINVAL, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %7, align 4
  br label %346

255:                                              ; preds = %234
  %256 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.firmware*, %struct.firmware** %11, align 8
  %259 = getelementptr inbounds %struct.firmware, %struct.firmware* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.firmware*, %struct.firmware** %11, align 8
  %262 = getelementptr inbounds %struct.firmware, %struct.firmware* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sub nsw i32 %263, %264
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %260, i64 %267
  %269 = bitcast i32* %268 to i8*
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @memcpy(i32* %257, i8* %269, i32 %270)
  %272 = load i32, i32* %8, align 4
  %273 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 1
  store i32 %272, i32* %273, align 8
  %274 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 2
  store i32 1, i32* %274, align 4
  %275 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %276 = call i32 @si2157_cmd_execute(%struct.i2c_client* %275, %struct.si2157_cmd* %10)
  store i32 %276, i32* %7, align 4
  %277 = load i32, i32* %7, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %255
  %280 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %281 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %280, i32 0, i32 0
  %282 = load i32, i32* %7, align 4
  %283 = call i32 (i32*, i8*, ...) @dev_err(i32* %281, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %282)
  br label %346

284:                                              ; preds = %255
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %9, align 4
  %287 = sub nsw i32 %286, 17
  store i32 %287, i32* %9, align 4
  br label %231

288:                                              ; preds = %231
  %289 = load %struct.firmware*, %struct.firmware** %11, align 8
  %290 = call i32 @release_firmware(%struct.firmware* %289)
  br label %291

291:                                              ; preds = %288, %197
  %292 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = call i32 @memcpy(i32* %293, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 2)
  %295 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 1
  store i32 2, i32* %295, align 8
  %296 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 2
  store i32 1, i32* %296, align 4
  %297 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %298 = call i32 @si2157_cmd_execute(%struct.i2c_client* %297, %struct.si2157_cmd* %10)
  store i32 %298, i32* %7, align 4
  %299 = load i32, i32* %7, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %291
  br label %349

302:                                              ; preds = %291
  %303 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = call i32 @memcpy(i32* %304, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 1)
  %306 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 1
  store i32 1, i32* %306, align 8
  %307 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 2
  store i32 10, i32* %307, align 4
  %308 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %309 = call i32 @si2157_cmd_execute(%struct.i2c_client* %308, %struct.si2157_cmd* %10)
  store i32 %309, i32* %7, align 4
  %310 = load i32, i32* %7, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %302
  br label %349

313:                                              ; preds = %302
  %314 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %315 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 6
  %319 = load i32, i32* %318, align 4
  %320 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 7
  %323 = load i32, i32* %322, align 4
  %324 = getelementptr inbounds %struct.si2157_cmd, %struct.si2157_cmd* %10, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 8
  %327 = load i32, i32* %326, align 4
  %328 = call i32 (i32*, i8*, ...) @dev_info(i32* %315, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %319, i32 %323, i32 %327)
  br label %329

329:                                              ; preds = %313, %57
  %330 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %331 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  store i32 1, i32* %332, align 8
  %333 = load i32, i32* @FE_SCALE_NOT_AVAILABLE, align 4
  %334 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %335 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i64 0
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 0
  store i32 %333, i32* %339, align 4
  %340 = load %struct.si2157_dev*, %struct.si2157_dev** %5, align 8
  %341 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %340, i32 0, i32 3
  %342 = call i32 @msecs_to_jiffies(i32 1000)
  %343 = call i32 @schedule_delayed_work(i32* %341, i32 %342)
  %344 = load %struct.si2157_dev*, %struct.si2157_dev** %5, align 8
  %345 = getelementptr inbounds %struct.si2157_dev, %struct.si2157_dev* %344, i32 0, i32 2
  store i32 1, i32* %345, align 8
  store i32 0, i32* %2, align 4
  br label %355

346:                                              ; preds = %279, %249, %216
  %347 = load %struct.firmware*, %struct.firmware** %11, align 8
  %348 = call i32 @release_firmware(%struct.firmware* %347)
  br label %349

349:                                              ; preds = %346, %312, %301, %205, %153, %120, %108, %92, %34
  %350 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %351 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %350, i32 0, i32 0
  %352 = load i32, i32* %7, align 4
  %353 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %351, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %352)
  %354 = load i32, i32* %7, align 4
  store i32 %354, i32* %2, align 4
  br label %355

355:                                              ; preds = %349, %329
  %356 = load i32, i32* %2, align 4
  ret i32 %356
}

declare dso_local %struct.si2157_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @si2157_cmd_execute(%struct.i2c_client*, %struct.si2157_cmd*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
