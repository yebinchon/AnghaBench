; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps80031.c_tps80031_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps80031.c_tps80031_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps80031 = type { i32, i32*, i32, i32, %struct.i2c_client**, %struct.i2c_client** }
%struct.i2c_client = type { i64, i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.tps80031_platform_data = type { i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"tps80031 requires platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TPS80031_NUM_SLAVES = common dso_local global i32 0, align 4
@tps80031_slave_address = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"can't attach client %d\0A\00", align 1
@tps80031_regmap_configs = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"regmap %d init failed, err %d\0A\00", align 1
@TPS80031_SLAVE_ID3 = common dso_local global i32 0, align 4
@TPS80031_JTAGVERNUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Silicon version number read failed: %d\0A\00", align 1
@TPS80031_EPROM_REV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Silicon eeprom version read failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"ES version 0x%02x and EPROM version 0x%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"IRQ init failed: %d\0A\00", align 1
@tps80031_cell = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"mfd_add_devices failed: %d\0A\00", align 1
@pm_power_off = common dso_local global i64 0, align 8
@tps80031_power_off_dev = common dso_local global %struct.tps80031* null, align 8
@tps80031_power_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tps80031_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps80031_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tps80031_platform_data*, align 8
  %7 = alloca %struct.tps80031*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 2
  %14 = call %struct.tps80031_platform_data* @dev_get_platdata(i32* %13)
  store %struct.tps80031_platform_data* %14, %struct.tps80031_platform_data** %6, align 8
  %15 = load %struct.tps80031_platform_data*, %struct.tps80031_platform_data** %6, align 8
  %16 = icmp ne %struct.tps80031_platform_data* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 2
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %264

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 2
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.tps80031* @devm_kzalloc(i32* %25, i32 40, i32 %26)
  store %struct.tps80031* %27, %struct.tps80031** %7, align 8
  %28 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %29 = icmp ne %struct.tps80031* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %264

33:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %150, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @TPS80031_NUM_SLAVES, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %153

38:                                               ; preds = %34
  %39 = load i64*, i64** @tps80031_slave_address, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %51 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %50, i32 0, i32 5
  %52 = load %struct.i2c_client**, %struct.i2c_client*** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %52, i64 %54
  store %struct.i2c_client* %49, %struct.i2c_client** %55, align 8
  br label %74

56:                                               ; preds = %38
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 2
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i64*, i64** @tps80031_slave_address, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.i2c_client* @devm_i2c_new_dummy_device(i32* %58, i32 %61, i64 %66)
  %68 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %69 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %68, i32 0, i32 5
  %70 = load %struct.i2c_client**, %struct.i2c_client*** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %70, i64 %72
  store %struct.i2c_client* %67, %struct.i2c_client** %73, align 8
  br label %74

74:                                               ; preds = %56, %48
  %75 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %76 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %75, i32 0, i32 5
  %77 = load %struct.i2c_client**, %struct.i2c_client*** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %77, i64 %79
  %81 = load %struct.i2c_client*, %struct.i2c_client** %80, align 8
  %82 = call i64 @IS_ERR(%struct.i2c_client* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %74
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 2
  %87 = load i32, i32* %11, align 4
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %90 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %89, i32 0, i32 5
  %91 = load %struct.i2c_client**, %struct.i2c_client*** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %91, i64 %93
  %95 = load %struct.i2c_client*, %struct.i2c_client** %94, align 8
  %96 = call i32 @PTR_ERR(%struct.i2c_client* %95)
  store i32 %96, i32* %3, align 4
  br label %264

97:                                               ; preds = %74
  %98 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %99 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %98, i32 0, i32 5
  %100 = load %struct.i2c_client**, %struct.i2c_client*** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %100, i64 %102
  %104 = load %struct.i2c_client*, %struct.i2c_client** %103, align 8
  %105 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %106 = call i32 @i2c_set_clientdata(%struct.i2c_client* %104, %struct.tps80031* %105)
  %107 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %108 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %107, i32 0, i32 5
  %109 = load %struct.i2c_client**, %struct.i2c_client*** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %109, i64 %111
  %113 = load %struct.i2c_client*, %struct.i2c_client** %112, align 8
  %114 = load i32*, i32** @tps80031_regmap_configs, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call %struct.i2c_client* @devm_regmap_init_i2c(%struct.i2c_client* %113, i32* %117)
  %119 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %120 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %119, i32 0, i32 4
  %121 = load %struct.i2c_client**, %struct.i2c_client*** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %121, i64 %123
  store %struct.i2c_client* %118, %struct.i2c_client** %124, align 8
  %125 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %126 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %125, i32 0, i32 4
  %127 = load %struct.i2c_client**, %struct.i2c_client*** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %127, i64 %129
  %131 = load %struct.i2c_client*, %struct.i2c_client** %130, align 8
  %132 = call i64 @IS_ERR(%struct.i2c_client* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %97
  %135 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %136 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %135, i32 0, i32 4
  %137 = load %struct.i2c_client**, %struct.i2c_client*** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %137, i64 %139
  %141 = load %struct.i2c_client*, %struct.i2c_client** %140, align 8
  %142 = call i32 @PTR_ERR(%struct.i2c_client* %141)
  store i32 %142, i32* %8, align 4
  %143 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %144 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %143, i32 0, i32 2
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 (i32*, i8*, ...) @dev_err(i32* %144, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %146)
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %3, align 4
  br label %264

149:                                              ; preds = %97
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %34

153:                                              ; preds = %34
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 2
  %156 = load i32, i32* @TPS80031_SLAVE_ID3, align 4
  %157 = load i32, i32* @TPS80031_JTAGVERNUM, align 4
  %158 = call i32 @tps80031_read(i32* %155, i32 %156, i32 %157, i32* %9)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %153
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 2
  %164 = load i32, i32* %8, align 4
  %165 = call i32 (i32*, i8*, ...) @dev_err(i32* %163, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %3, align 4
  br label %264

167:                                              ; preds = %153
  %168 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %169 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %168, i32 0, i32 2
  %170 = load i32, i32* @TPS80031_SLAVE_ID3, align 4
  %171 = load i32, i32* @TPS80031_EPROM_REV, align 4
  %172 = call i32 @tps80031_read(i32* %169, i32 %170, i32 %171, i32* %10)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 2
  %178 = load i32, i32* %8, align 4
  %179 = call i32 (i32*, i8*, ...) @dev_err(i32* %177, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %3, align 4
  br label %264

181:                                              ; preds = %167
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 2
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @dev_info(i32* %183, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %184, i32 %185)
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %189 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  %190 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %191 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %190, i32 0, i32 2
  %192 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %193 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %192, i32 0, i32 1
  store i32* %191, i32** %193, align 8
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %196 = call i32 @i2c_set_clientdata(%struct.i2c_client* %194, %struct.tps80031* %195)
  %197 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %198 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %201 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  %202 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %203 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %204 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.tps80031_platform_data*, %struct.tps80031_platform_data** %6, align 8
  %207 = getelementptr inbounds %struct.tps80031_platform_data, %struct.tps80031_platform_data* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @tps80031_irq_init(%struct.tps80031* %202, i32 %205, i32 %208)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %181
  %213 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %214 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %213, i32 0, i32 2
  %215 = load i32, i32* %8, align 4
  %216 = call i32 (i32*, i8*, ...) @dev_err(i32* %214, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* %8, align 4
  store i32 %217, i32* %3, align 4
  br label %264

218:                                              ; preds = %181
  %219 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %220 = load %struct.tps80031_platform_data*, %struct.tps80031_platform_data** %6, align 8
  %221 = call i32 @tps80031_pupd_init(%struct.tps80031* %219, %struct.tps80031_platform_data* %220)
  %222 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %223 = load %struct.tps80031_platform_data*, %struct.tps80031_platform_data** %6, align 8
  %224 = call i32 @tps80031_init_ext_control(%struct.tps80031* %222, %struct.tps80031_platform_data* %223)
  %225 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %226 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* @tps80031_cell, align 4
  %229 = load i32, i32* @tps80031_cell, align 4
  %230 = call i32 @ARRAY_SIZE(i32 %229)
  %231 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %232 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @regmap_irq_get_domain(i32 %233)
  %235 = call i32 @mfd_add_devices(i32* %227, i32 -1, i32 %228, i32 %230, i32* null, i32 0, i32 %234)
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %218
  %239 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %240 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %239, i32 0, i32 2
  %241 = load i32, i32* %8, align 4
  %242 = call i32 (i32*, i8*, ...) @dev_err(i32* %240, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %241)
  br label %255

243:                                              ; preds = %218
  %244 = load %struct.tps80031_platform_data*, %struct.tps80031_platform_data** %6, align 8
  %245 = getelementptr inbounds %struct.tps80031_platform_data, %struct.tps80031_platform_data* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %243
  %249 = load i64, i64* @pm_power_off, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %248
  %252 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  store %struct.tps80031* %252, %struct.tps80031** @tps80031_power_off_dev, align 8
  %253 = load i64, i64* @tps80031_power_off, align 8
  store i64 %253, i64* @pm_power_off, align 8
  br label %254

254:                                              ; preds = %251, %248, %243
  store i32 0, i32* %3, align 4
  br label %264

255:                                              ; preds = %238
  %256 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %257 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.tps80031*, %struct.tps80031** %7, align 8
  %260 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @regmap_del_irq_chip(i32 %258, i32 %261)
  %263 = load i32, i32* %8, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %255, %254, %212, %175, %161, %134, %84, %30, %17
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local %struct.tps80031_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.tps80031* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.i2c_client* @devm_i2c_new_dummy_device(i32*, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_client*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tps80031*) #1

declare dso_local %struct.i2c_client* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @tps80031_read(i32*, i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @tps80031_irq_init(%struct.tps80031*, i32, i32) #1

declare dso_local i32 @tps80031_pupd_init(%struct.tps80031*, %struct.tps80031_platform_data*) #1

declare dso_local i32 @tps80031_init_ext_control(%struct.tps80031*, %struct.tps80031_platform_data*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

declare dso_local i32 @regmap_del_irq_chip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
