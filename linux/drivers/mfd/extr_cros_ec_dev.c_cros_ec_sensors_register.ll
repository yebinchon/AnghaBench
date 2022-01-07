; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_cros_ec_dev.c_cros_ec_sensors_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_cros_ec_dev.c_cros_ec_sensors_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_dev = type { i32, i32, i32, i64 }
%struct.mfd_cell = type { i32, i32, i32, i8*, i32, i32, i32, %struct.mfd_cell*, i32, i64, i64 }
%struct.cros_ec_sensor_platform = type { i32, i32, i32, i8*, i32, i32, i32, %struct.cros_ec_sensor_platform*, i32, i64, i64 }
%struct.ec_params_motion_sense = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ec_response_motion_sense = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cros_ec_command = type { i32, i32, i32, i8*, i32, i32, i32, %struct.cros_ec_command*, i32, i64, i64 }

@MOTIONSENSE_TYPE_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EC_CMD_MOTION_SENSE_CMD = common dso_local global i64 0, align 8
@MOTIONSENSE_CMD_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cannot get EC sensor information: %d/%d\0A\00", align 1
@MOTIONSENSE_CMD_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"no info for EC sensor %d : %d/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"cros-ec-accel\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"cros-ec-baro\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"cros-ec-gyro\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"cros-ec-mag\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"cros-ec-prox\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"cros-ec-light\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"cros-ec-activity\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"unknown type %d\0A\00", align 1
@EC_FEATURE_MOTION_SENSE_FIFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"cros-ec-ring\00", align 1
@EC_FEATURE_REFINED_TABLET_MODE_HYSTERESIS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"cros-ec-lid-angle\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"failed to add EC sensors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cros_ec_dev*)* @cros_ec_sensors_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cros_ec_sensors_register(%struct.cros_ec_dev* %0) #0 {
  %2 = alloca %struct.cros_ec_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mfd_cell*, align 8
  %8 = alloca %struct.cros_ec_sensor_platform*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ec_params_motion_sense*, align 8
  %12 = alloca %struct.ec_response_motion_sense*, align 8
  %13 = alloca %struct.cros_ec_command*, align 8
  %14 = alloca i32, align 4
  store %struct.cros_ec_dev* %0, %struct.cros_ec_dev** %2, align 8
  %15 = load i32, i32* @MOTIONSENSE_TYPE_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = call i64 @max(i32 8, i32 8)
  %20 = add i64 72, %19
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mfd_cell* @kzalloc(i64 %20, i32 %21)
  %23 = bitcast %struct.mfd_cell* %22 to %struct.cros_ec_command*
  store %struct.cros_ec_command* %23, %struct.cros_ec_command** %13, align 8
  %24 = load %struct.cros_ec_command*, %struct.cros_ec_command** %13, align 8
  %25 = icmp eq %struct.cros_ec_command* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 1, i32* %14, align 4
  br label %284

27:                                               ; preds = %1
  %28 = load %struct.cros_ec_command*, %struct.cros_ec_command** %13, align 8
  %29 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %28, i32 0, i32 0
  store i32 2, i32* %29, align 8
  %30 = load i64, i64* @EC_CMD_MOTION_SENSE_CMD, align 8
  %31 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %2, align 8
  %32 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.cros_ec_command*, %struct.cros_ec_command** %13, align 8
  %36 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %35, i32 0, i32 10
  store i64 %34, i64* %36, align 8
  %37 = load %struct.cros_ec_command*, %struct.cros_ec_command** %13, align 8
  %38 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %37, i32 0, i32 1
  store i32 8, i32* %38, align 4
  %39 = load %struct.cros_ec_command*, %struct.cros_ec_command** %13, align 8
  %40 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %39, i32 0, i32 2
  store i32 8, i32* %40, align 8
  %41 = load %struct.cros_ec_command*, %struct.cros_ec_command** %13, align 8
  %42 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ec_params_motion_sense*
  store %struct.ec_params_motion_sense* %44, %struct.ec_params_motion_sense** %11, align 8
  %45 = load i32, i32* @MOTIONSENSE_CMD_DUMP, align 4
  %46 = load %struct.ec_params_motion_sense*, %struct.ec_params_motion_sense** %11, align 8
  %47 = getelementptr inbounds %struct.ec_params_motion_sense, %struct.ec_params_motion_sense* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %2, align 8
  %49 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.cros_ec_command*, %struct.cros_ec_command** %13, align 8
  %52 = bitcast %struct.cros_ec_command* %51 to %struct.mfd_cell*
  %53 = call i32 @cros_ec_cmd_xfer_status(i32 %50, %struct.mfd_cell* %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %27
  %57 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %2, align 8
  %58 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.cros_ec_command*, %struct.cros_ec_command** %13, align 8
  %62 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63)
  br label %280

65:                                               ; preds = %27
  %66 = load %struct.cros_ec_command*, %struct.cros_ec_command** %13, align 8
  %67 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %66, i32 0, i32 9
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.ec_response_motion_sense*
  store %struct.ec_response_motion_sense* %69, %struct.ec_response_motion_sense** %12, align 8
  %70 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %12, align 8
  %71 = getelementptr inbounds %struct.ec_response_motion_sense, %struct.ec_response_motion_sense* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 2
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.mfd_cell* @kcalloc(i32 %75, i32 72, i32 %76)
  store %struct.mfd_cell* %77, %struct.mfd_cell** %7, align 8
  %78 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %79 = icmp eq %struct.mfd_cell* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %280

81:                                               ; preds = %65
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call %struct.mfd_cell* @kcalloc(i32 %82, i32 72, i32 %83)
  %85 = bitcast %struct.mfd_cell* %84 to %struct.cros_ec_sensor_platform*
  store %struct.cros_ec_sensor_platform* %85, %struct.cros_ec_sensor_platform** %8, align 8
  %86 = load %struct.cros_ec_sensor_platform*, %struct.cros_ec_sensor_platform** %8, align 8
  %87 = icmp eq %struct.cros_ec_sensor_platform* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %277

89:                                               ; preds = %81
  %90 = mul nuw i64 4, %16
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memset(i32* %18, i32 0, i32 %91)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %223, %89
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %226

97:                                               ; preds = %93
  %98 = load i32, i32* @MOTIONSENSE_CMD_INFO, align 4
  %99 = load %struct.ec_params_motion_sense*, %struct.ec_params_motion_sense** %11, align 8
  %100 = getelementptr inbounds %struct.ec_params_motion_sense, %struct.ec_params_motion_sense* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.ec_params_motion_sense*, %struct.ec_params_motion_sense** %11, align 8
  %103 = getelementptr inbounds %struct.ec_params_motion_sense, %struct.ec_params_motion_sense* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 4
  %105 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %2, align 8
  %106 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.cros_ec_command*, %struct.cros_ec_command** %13, align 8
  %109 = bitcast %struct.cros_ec_command* %108 to %struct.mfd_cell*
  %110 = call i32 @cros_ec_cmd_xfer_status(i32 %107, %struct.mfd_cell* %109)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %97
  %114 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %2, align 8
  %115 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* %3, align 4
  %119 = load %struct.cros_ec_command*, %struct.cros_ec_command** %13, align 8
  %120 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118, i32 %121)
  br label %223

123:                                              ; preds = %97
  %124 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %12, align 8
  %125 = getelementptr inbounds %struct.ec_response_motion_sense, %struct.ec_response_motion_sense* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %170 [
    i32 134, label %128
    i32 132, label %134
    i32 131, label %140
    i32 129, label %146
    i32 128, label %152
    i32 130, label %158
    i32 133, label %164
  ]

128:                                              ; preds = %123
  %129 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %129, i64 %131
  %133 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %132, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %133, align 8
  br label %179

134:                                              ; preds = %123
  %135 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %135, i64 %137
  %139 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %138, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %139, align 8
  br label %179

140:                                              ; preds = %123
  %141 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %141, i64 %143
  %145 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %144, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %145, align 8
  br label %179

146:                                              ; preds = %123
  %147 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %147, i64 %149
  %151 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %150, i32 0, i32 3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %151, align 8
  br label %179

152:                                              ; preds = %123
  %153 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %153, i64 %155
  %157 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %156, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %157, align 8
  br label %179

158:                                              ; preds = %123
  %159 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %159, i64 %161
  %163 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %162, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %163, align 8
  br label %179

164:                                              ; preds = %123
  %165 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %165, i64 %167
  %169 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %168, i32 0, i32 3
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %169, align 8
  br label %179

170:                                              ; preds = %123
  %171 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %2, align 8
  %172 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %12, align 8
  %175 = getelementptr inbounds %struct.ec_response_motion_sense, %struct.ec_response_motion_sense* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %173, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %177)
  br label %223

179:                                              ; preds = %164, %158, %152, %146, %140, %134, %128
  %180 = load i32, i32* %4, align 4
  %181 = load %struct.cros_ec_sensor_platform*, %struct.cros_ec_sensor_platform** %8, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.cros_ec_sensor_platform, %struct.cros_ec_sensor_platform* %181, i64 %183
  %185 = getelementptr inbounds %struct.cros_ec_sensor_platform, %struct.cros_ec_sensor_platform* %184, i32 0, i32 4
  store i32 %180, i32* %185, align 8
  %186 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %12, align 8
  %187 = getelementptr inbounds %struct.ec_response_motion_sense, %struct.ec_response_motion_sense* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %18, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %193, i64 %195
  %197 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %196, i32 0, i32 5
  store i32 %192, i32* %197, align 4
  %198 = load %struct.cros_ec_sensor_platform*, %struct.cros_ec_sensor_platform** %8, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.cros_ec_sensor_platform, %struct.cros_ec_sensor_platform* %198, i64 %200
  %202 = bitcast %struct.cros_ec_sensor_platform* %201 to %struct.mfd_cell*
  %203 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %203, i64 %205
  %207 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %206, i32 0, i32 7
  store %struct.mfd_cell* %202, %struct.mfd_cell** %207, align 8
  %208 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %208, i64 %210
  %212 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %211, i32 0, i32 6
  store i32 72, i32* %212, align 8
  %213 = load %struct.ec_response_motion_sense*, %struct.ec_response_motion_sense** %12, align 8
  %214 = getelementptr inbounds %struct.ec_response_motion_sense, %struct.ec_response_motion_sense* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %18, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4
  %221 = load i32, i32* %5, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %179, %170, %113
  %224 = load i32, i32* %4, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %4, align 4
  br label %93

226:                                              ; preds = %93
  %227 = getelementptr inbounds i32, i32* %18, i64 134
  %228 = load i32, i32* %227, align 8
  %229 = icmp sge i32 %228, 2
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %2, align 8
  %232 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %231, i32 0, i32 0
  store i32 1, i32* %232, align 8
  br label %233

233:                                              ; preds = %230, %226
  %234 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %2, align 8
  %235 = load i32, i32* @EC_FEATURE_MOTION_SENSE_FIFO, align 4
  %236 = call i64 @cros_ec_check_features(%struct.cros_ec_dev* %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %233
  %239 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %240 = load i32, i32* %5, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %239, i64 %241
  %243 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %242, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %243, align 8
  %244 = load i32, i32* %5, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %5, align 4
  br label %246

246:                                              ; preds = %238, %233
  %247 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %2, align 8
  %248 = load i32, i32* @EC_FEATURE_REFINED_TABLET_MODE_HYSTERESIS, align 4
  %249 = call i64 @cros_ec_check_features(%struct.cros_ec_dev* %247, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %246
  %252 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %252, i64 %254
  %256 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %255, i32 0, i32 3
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %256, align 8
  %257 = load i32, i32* %5, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %5, align 4
  br label %259

259:                                              ; preds = %251, %246
  %260 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %2, align 8
  %261 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %264 = load i32, i32* %5, align 4
  %265 = call i32 @mfd_add_devices(i32 %262, i32 0, %struct.mfd_cell* %263, i32 %264, i32* null, i32 0, i32* null)
  store i32 %265, i32* %3, align 4
  %266 = load i32, i32* %3, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %259
  %269 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %2, align 8
  %270 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @dev_err(i32 %271, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %273

273:                                              ; preds = %268, %259
  %274 = load %struct.cros_ec_sensor_platform*, %struct.cros_ec_sensor_platform** %8, align 8
  %275 = bitcast %struct.cros_ec_sensor_platform* %274 to %struct.mfd_cell*
  %276 = call i32 @kfree(%struct.mfd_cell* %275)
  br label %277

277:                                              ; preds = %273, %88
  %278 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %279 = call i32 @kfree(%struct.mfd_cell* %278)
  br label %280

280:                                              ; preds = %277, %80, %56
  %281 = load %struct.cros_ec_command*, %struct.cros_ec_command** %13, align 8
  %282 = bitcast %struct.cros_ec_command* %281 to %struct.mfd_cell*
  %283 = call i32 @kfree(%struct.mfd_cell* %282)
  store i32 0, i32* %14, align 4
  br label %284

284:                                              ; preds = %280, %26
  %285 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %285)
  %286 = load i32, i32* %14, align 4
  switch i32 %286, label %288 [
    i32 0, label %287
    i32 1, label %287
  ]

287:                                              ; preds = %284, %284
  ret void

288:                                              ; preds = %284
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mfd_cell* @kzalloc(i64, i32) #2

declare dso_local i64 @max(i32, i32) #2

declare dso_local i32 @cros_ec_cmd_xfer_status(i32, %struct.mfd_cell*) #2

declare dso_local i32 @dev_warn(i32, i8*, i32, ...) #2

declare dso_local %struct.mfd_cell* @kcalloc(i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @cros_ec_check_features(%struct.cros_ec_dev*, i32) #2

declare dso_local i32 @mfd_add_devices(i32, i32, %struct.mfd_cell*, i32, i32*, i32, i32*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @kfree(%struct.mfd_cell*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
