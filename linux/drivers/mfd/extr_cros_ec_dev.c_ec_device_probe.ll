; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_cros_ec_dev.c_ec_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_cros_ec_dev.c_ec_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_15__*, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.cros_ec_platform = type { i32, i32 }
%struct.cros_ec_dev = type { i32*, %struct.TYPE_14__, %struct.device*, %struct.TYPE_16__*, i32 }
%struct.TYPE_14__ = type { i32, %struct.device*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.device_node* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cros_mcu_devices = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"CrOS %s MCU detected\0A\00", align 1
@cros_class = common dso_local global i32 0, align 4
@cros_ec_class_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"dev_set_name failed => %d\0A\00", align 1
@EC_FEATURE_MOTION_SENSE = common dso_local global i32 0, align 4
@cros_subdevices = common dso_local global %struct.TYPE_15__* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to add %s subdevice: %d\0A\00", align 1
@cros_ec_platform_cells = common dso_local global %struct.TYPE_15__* null, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"failed to add cros-ec platform devices: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"google,has-vbc-nvram\00", align 1
@cros_ec_vbc_cells = common dso_local global %struct.TYPE_15__* null, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to add VBC devices: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ec_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_device_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.cros_ec_platform*, align 8
  %8 = alloca %struct.cros_ec_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.cros_ec_platform* @dev_get_platdata(%struct.device* %14)
  store %struct.cros_ec_platform* %15, %struct.cros_ec_platform** %7, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.cros_ec_dev* @kzalloc(i32 56, i32 %16)
  store %struct.cros_ec_dev* %17, %struct.cros_ec_dev** %8, align 8
  %18 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %19 = icmp ne %struct.cros_ec_dev* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %233

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %25 = call i32 @dev_set_drvdata(%struct.device* %23, %struct.cros_ec_dev* %24)
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_16__* @dev_get_drvdata(i32 %28)
  %30 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %31 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %30, i32 0, i32 3
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %31, align 8
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %34 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %33, i32 0, i32 2
  store %struct.device* %32, %struct.device** %34, align 8
  %35 = load %struct.cros_ec_platform*, %struct.cros_ec_platform** %7, align 8
  %36 = getelementptr inbounds %struct.cros_ec_platform, %struct.cros_ec_platform* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %39 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %41 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 -1, i32* %43, align 4
  %44 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %45 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 -1, i32* %47, align 4
  %48 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %49 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %48, i32 0, i32 1
  %50 = call i32 @device_initialize(%struct.TYPE_14__* %49)
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %84, %22
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cros_mcu_devices, align 8
  %54 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %53)
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %51
  %57 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cros_mcu_devices, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @cros_ec_check_features(%struct.cros_ec_dev* %57, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %56
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cros_mcu_devices, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_info(%struct.device* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cros_mcu_devices, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cros_ec_platform*, %struct.cros_ec_platform** %7, align 8
  %82 = getelementptr inbounds %struct.cros_ec_platform, %struct.cros_ec_platform* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %87

83:                                               ; preds = %56
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %51

87:                                               ; preds = %66, %51
  %88 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %89 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  store i32* @cros_class, i32** %90, align 8
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %93 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  store %struct.device* %91, %struct.device** %94, align 8
  %95 = load i32, i32* @cros_ec_class_release, align 4
  %96 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %97 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %100 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %99, i32 0, i32 1
  %101 = load %struct.cros_ec_platform*, %struct.cros_ec_platform** %7, align 8
  %102 = getelementptr inbounds %struct.cros_ec_platform, %struct.cros_ec_platform* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_set_name(%struct.TYPE_14__* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %87
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = load i32, i32* %4, align 4
  %110 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  br label %228

111:                                              ; preds = %87
  %112 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %113 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %112, i32 0, i32 1
  %114 = call i32 @device_add(%struct.TYPE_14__* %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %228

118:                                              ; preds = %111
  %119 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %120 = load i32, i32* @EC_FEATURE_MOTION_SENSE, align 4
  %121 = call i64 @cros_ec_check_features(%struct.cros_ec_dev* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %125 = call i32 @cros_ec_sensors_register(%struct.cros_ec_dev* %124)
  br label %129

126:                                              ; preds = %118
  %127 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %128 = call i32 @cros_ec_accel_legacy_register(%struct.cros_ec_dev* %127)
  br label %129

129:                                              ; preds = %126, %123
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %180, %129
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cros_subdevices, align 8
  %133 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %132)
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %183

135:                                              ; preds = %130
  %136 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cros_subdevices, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @cros_ec_check_features(%struct.cros_ec_dev* %136, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %179

145:                                              ; preds = %135
  %146 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %147 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %146, i32 0, i32 2
  %148 = load %struct.device*, %struct.device** %147, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cros_subdevices, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cros_subdevices, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @mfd_add_hotplug_devices(%struct.device* %148, %struct.TYPE_15__* %154, i32 %160)
  store i32 %161, i32* %4, align 4
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %145
  %165 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %166 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %165, i32 0, i32 2
  %167 = load %struct.device*, %struct.device** %166, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cros_subdevices, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %4, align 4
  %177 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %167, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %164, %145
  br label %179

179:                                              ; preds = %178, %135
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  br label %130

183:                                              ; preds = %130
  %184 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %185 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %184, i32 0, i32 2
  %186 = load %struct.device*, %struct.device** %185, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cros_ec_platform_cells, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cros_ec_platform_cells, align 8
  %189 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %188)
  %190 = call i32 @mfd_add_hotplug_devices(%struct.device* %186, %struct.TYPE_15__* %187, i32 %189)
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* %4, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %183
  %194 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %195 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %194, i32 0, i32 2
  %196 = load %struct.device*, %struct.device** %195, align 8
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @dev_warn(%struct.device* %196, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %193, %183
  %200 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %201 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %200, i32 0, i32 3
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load %struct.device_node*, %struct.device_node** %205, align 8
  store %struct.device_node* %206, %struct.device_node** %5, align 8
  %207 = load %struct.device_node*, %struct.device_node** %5, align 8
  %208 = call i64 @of_property_read_bool(%struct.device_node* %207, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %199
  %211 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %212 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %211, i32 0, i32 2
  %213 = load %struct.device*, %struct.device** %212, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cros_ec_vbc_cells, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cros_ec_vbc_cells, align 8
  %216 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %215)
  %217 = call i32 @mfd_add_hotplug_devices(%struct.device* %213, %struct.TYPE_15__* %214, i32 %216)
  store i32 %217, i32* %4, align 4
  %218 = load i32, i32* %4, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %210
  %221 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %222 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %221, i32 0, i32 2
  %223 = load %struct.device*, %struct.device** %222, align 8
  %224 = load i32, i32* %4, align 4
  %225 = call i32 @dev_warn(%struct.device* %223, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %224)
  br label %226

226:                                              ; preds = %220, %210
  br label %227

227:                                              ; preds = %226, %199
  store i32 0, i32* %2, align 4
  br label %233

228:                                              ; preds = %117, %107
  %229 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  %230 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %229, i32 0, i32 1
  %231 = call i32 @put_device(%struct.TYPE_14__* %230)
  %232 = load i32, i32* %4, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %228, %227, %20
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.cros_ec_platform* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.cros_ec_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.cros_ec_dev*) #1

declare dso_local %struct.TYPE_16__* @dev_get_drvdata(i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_14__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_15__*) #1

declare dso_local i64 @cros_ec_check_features(%struct.cros_ec_dev*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @device_add(%struct.TYPE_14__*) #1

declare dso_local i32 @cros_ec_sensors_register(%struct.cros_ec_dev*) #1

declare dso_local i32 @cros_ec_accel_legacy_register(%struct.cros_ec_dev*) #1

declare dso_local i32 @mfd_add_hotplug_devices(%struct.device*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @put_device(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
