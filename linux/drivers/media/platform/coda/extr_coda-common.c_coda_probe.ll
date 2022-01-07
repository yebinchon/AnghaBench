; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device_id = type { i64, i64, i32, i64, i64 }
%struct.platform_device = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.device_node*, %struct.coda_platform_data* }
%struct.device_node = type { i32 }
%struct.coda_platform_data = type { i32 }
%struct.of_device_id = type { %struct.platform_device_id* }
%struct.gen_pool = type { i32 }
%struct.coda_dev = type { i32, i32, %struct.TYPE_16__, i32, %struct.gen_pool*, %struct.platform_device_id*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_17__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32, i32, i64, i32 }
%struct.TYPE_15__ = type { i32, i64 }

@coda_dt_ids = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@coda_devdata = common dso_local global %struct.platform_device_id* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"per\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not get per clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Could not get ahb clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to get irq resource\0A\00", align 1
@coda_irq_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to request irq: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"failed get reset control: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"iram\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"iram pool not available\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"coda\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"failed to create debugfs root\0A\00", align 1
@CODA_DX6 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"workbuf\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"tempbuf\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"unable to alloc iram\0A\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"unable to alloc workqueue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @coda_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.platform_device_id*, align 8
  %6 = alloca %struct.coda_platform_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.gen_pool*, align 8
  %9 = alloca %struct.coda_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load i32, i32* @coda_dt_ids, align 4
  %13 = call i32 @of_match_ptr(i32 %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.of_device_id* @of_match_device(i32 %13, %struct.TYPE_17__* %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %4, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load %struct.coda_platform_data*, %struct.coda_platform_data** %19, align 8
  store %struct.coda_platform_data* %20, %struct.coda_platform_data** %6, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load %struct.device_node*, %struct.device_node** %23, align 8
  store %struct.device_node* %24, %struct.device_node** %7, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.coda_dev* @devm_kzalloc(%struct.TYPE_17__* %26, i32 152, i32 %27)
  store %struct.coda_dev* %28, %struct.coda_dev** %9, align 8
  %29 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %30 = icmp ne %struct.coda_dev* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %417

34:                                               ; preds = %1
  %35 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %36 = icmp ne %struct.of_device_id* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %39 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %38, i32 0, i32 0
  %40 = load %struct.platform_device_id*, %struct.platform_device_id** %39, align 8
  br label %44

41:                                               ; preds = %34
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %42)
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi %struct.platform_device_id* [ %40, %37 ], [ %43, %41 ]
  store %struct.platform_device_id* %45, %struct.platform_device_id** %5, align 8
  %46 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %47 = icmp ne %struct.of_device_id* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %50 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %49, i32 0, i32 0
  %51 = load %struct.platform_device_id*, %struct.platform_device_id** %50, align 8
  %52 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %53 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %52, i32 0, i32 5
  store %struct.platform_device_id* %51, %struct.platform_device_id** %53, align 8
  br label %69

54:                                               ; preds = %44
  %55 = load %struct.platform_device_id*, %struct.platform_device_id** %5, align 8
  %56 = icmp ne %struct.platform_device_id* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.platform_device_id*, %struct.platform_device_id** @coda_devdata, align 8
  %59 = load %struct.platform_device_id*, %struct.platform_device_id** %5, align 8
  %60 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %58, i64 %61
  %63 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %64 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %63, i32 0, i32 5
  store %struct.platform_device_id* %62, %struct.platform_device_id** %64, align 8
  br label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %417

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %48
  %70 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %71 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %70, i32 0, i32 17
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %76 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %75, i32 0, i32 16
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i8* @devm_clk_get(%struct.TYPE_17__* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %81 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %80, i32 0, i32 15
  store i8* %79, i8** %81, align 8
  %82 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %83 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %82, i32 0, i32 15
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @IS_ERR(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %69
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %92 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %91, i32 0, i32 15
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %2, align 4
  br label %417

95:                                               ; preds = %69
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i8* @devm_clk_get(%struct.TYPE_17__* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %100 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %99, i32 0, i32 14
  store i8* %98, i8** %100, align 8
  %101 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %102 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %101, i32 0, i32 14
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @IS_ERR(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %95
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %110 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %111 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %110, i32 0, i32 14
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  store i32 %113, i32* %2, align 4
  br label %417

114:                                              ; preds = %95
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %115, i32 0)
  %117 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %118 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %117, i32 0, i32 13
  store i8* %116, i8** %118, align 8
  %119 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %120 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %119, i32 0, i32 13
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @IS_ERR(i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %114
  %125 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %126 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %125, i32 0, i32 13
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @PTR_ERR(i8* %127)
  store i32 %128, i32* %2, align 4
  br label %417

129:                                              ; preds = %114
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = call i32 @platform_get_irq_byname(%struct.platform_device* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = call i32 @platform_get_irq(%struct.platform_device* %135, i32 0)
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %134, %129
  %138 = load i32, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %2, align 4
  br label %417

145:                                              ; preds = %137
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @coda_irq_handler, align 4
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 @dev_name(%struct.TYPE_17__* %151)
  %153 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %154 = call i32 @devm_request_irq(%struct.TYPE_17__* %147, i32 %148, i32 %149, i32 0, i32 %152, %struct.coda_dev* %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %145
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = load i32, i32* %10, align 4
  %161 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %159, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %2, align 4
  br label %417

163:                                              ; preds = %145
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = call i8* @devm_reset_control_get_optional_exclusive(%struct.TYPE_17__* %165, i32* null)
  %167 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %168 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %167, i32 0, i32 12
  store i8* %166, i8** %168, align 8
  %169 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %170 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %169, i32 0, i32 12
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @IS_ERR(i8* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %163
  %175 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %176 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %175, i32 0, i32 12
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @PTR_ERR(i8* %177)
  store i32 %178, i32* %10, align 4
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = load i32, i32* %10, align 4
  %182 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %2, align 4
  br label %417

184:                                              ; preds = %163
  %185 = load %struct.device_node*, %struct.device_node** %7, align 8
  %186 = call %struct.gen_pool* @of_gen_pool_get(%struct.device_node* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 0)
  store %struct.gen_pool* %186, %struct.gen_pool** %8, align 8
  %187 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  %188 = icmp ne %struct.gen_pool* %187, null
  br i1 %188, label %197, label %189

189:                                              ; preds = %184
  %190 = load %struct.coda_platform_data*, %struct.coda_platform_data** %6, align 8
  %191 = icmp ne %struct.coda_platform_data* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = load %struct.coda_platform_data*, %struct.coda_platform_data** %6, align 8
  %194 = getelementptr inbounds %struct.coda_platform_data, %struct.coda_platform_data* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call %struct.gen_pool* @gen_pool_get(i32 %195, i32* null)
  store %struct.gen_pool* %196, %struct.gen_pool** %8, align 8
  br label %197

197:                                              ; preds = %192, %189, %184
  %198 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  %199 = icmp ne %struct.gen_pool* %198, null
  br i1 %199, label %206, label %200

200:                                              ; preds = %197
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 0
  %203 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %202, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %2, align 4
  br label %417

206:                                              ; preds = %197
  %207 = load %struct.gen_pool*, %struct.gen_pool** %8, align 8
  %208 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %209 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %208, i32 0, i32 4
  store %struct.gen_pool* %207, %struct.gen_pool** %209, align 8
  %210 = call i8* (...) @coda_get_vdoa_data()
  %211 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %212 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %211, i32 0, i32 11
  store i8* %210, i8** %212, align 8
  %213 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %214 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %213, i32 0, i32 11
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @PTR_ERR(i8* %215)
  %217 = load i32, i32* @EPROBE_DEFER, align 4
  %218 = sub nsw i32 0, %217
  %219 = icmp eq i32 %216, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %206
  %221 = load i32, i32* @EPROBE_DEFER, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %2, align 4
  br label %417

223:                                              ; preds = %206
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %224, i32 0, i32 0
  %226 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %227 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %226, i32 0, i32 0
  %228 = call i32 @v4l2_device_register(%struct.TYPE_17__* %225, i32* %227)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %223
  %232 = load i32, i32* %10, align 4
  store i32 %232, i32* %2, align 4
  br label %417

233:                                              ; preds = %223
  %234 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %235 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %234, i32 0, i32 10
  %236 = call i32 @mutex_init(i32* %235)
  %237 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %238 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %237, i32 0, i32 9
  %239 = call i32 @mutex_init(i32* %238)
  %240 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %241 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %240, i32 0, i32 8
  %242 = call i32 @ida_init(i32* %241)
  %243 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* null)
  %244 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %245 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 8
  %246 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %247 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %233
  %251 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %252 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %251, i32 0, i32 0
  %253 = call i32 @dev_warn(%struct.TYPE_17__* %252, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  br label %254

254:                                              ; preds = %250, %233
  %255 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %256 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %255, i32 0, i32 5
  %257 = load %struct.platform_device_id*, %struct.platform_device_id** %256, align 8
  %258 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @CODA_DX6, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %279

262:                                              ; preds = %254
  %263 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %264 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %265 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %264, i32 0, i32 7
  %266 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %267 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %266, i32 0, i32 5
  %268 = load %struct.platform_device_id*, %struct.platform_device_id** %267, align 8
  %269 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %272 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @coda_alloc_aux_buf(%struct.coda_dev* %263, i32* %265, i64 %270, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %273)
  store i32 %274, i32* %10, align 4
  %275 = load i32, i32* %10, align 4
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %262
  br label %412

278:                                              ; preds = %262
  br label %279

279:                                              ; preds = %278, %254
  %280 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %281 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %280, i32 0, i32 5
  %282 = load %struct.platform_device_id*, %struct.platform_device_id** %281, align 8
  %283 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %303

286:                                              ; preds = %279
  %287 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %288 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %289 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %288, i32 0, i32 6
  %290 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %291 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %290, i32 0, i32 5
  %292 = load %struct.platform_device_id*, %struct.platform_device_id** %291, align 8
  %293 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %296 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @coda_alloc_aux_buf(%struct.coda_dev* %287, i32* %289, i64 %294, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %297)
  store i32 %298, i32* %10, align 4
  %299 = load i32, i32* %10, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %286
  br label %412

302:                                              ; preds = %286
  br label %303

303:                                              ; preds = %302, %279
  %304 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %305 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %304, i32 0, i32 5
  %306 = load %struct.platform_device_id*, %struct.platform_device_id** %305, align 8
  %307 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %310 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 2
  store i32 %308, i32* %311, align 4
  %312 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %313 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %312, i32 0, i32 4
  %314 = load %struct.gen_pool*, %struct.gen_pool** %313, align 8
  %315 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %316 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %320 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 4
  %322 = call i64 @gen_pool_dma_alloc(%struct.gen_pool* %314, i32 %318, i32* %321)
  %323 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %324 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 3
  store i64 %322, i64* %325, align 8
  %326 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %327 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 3
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %335, label %331

331:                                              ; preds = %303
  %332 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %333 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %332, i32 0, i32 0
  %334 = call i32 @dev_warn(%struct.TYPE_17__* %333, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %371

335:                                              ; preds = %303
  %336 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %337 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 3
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %341 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @memset(i64 %339, i32 0, i32 %343)
  %345 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %346 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 3
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %350 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 1
  store i64 %348, i64* %352, align 8
  %353 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %354 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %358 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %359, i32 0, i32 0
  store i32 %356, i32* %360, align 8
  %361 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %362 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %365 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 0
  %367 = call i32 @debugfs_create_blob(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 420, i32 %363, %struct.TYPE_15__* %366)
  %368 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %369 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 1
  store i32 %367, i32* %370, align 8
  br label %371

371:                                              ; preds = %335, %331
  %372 = load i32, i32* @WQ_UNBOUND, align 4
  %373 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %374 = or i32 %372, %373
  %375 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %374, i32 1)
  %376 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %377 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %376, i32 0, i32 1
  store i32 %375, i32* %377, align 4
  %378 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %379 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %388, label %382

382:                                              ; preds = %371
  %383 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %384 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %383, i32 0, i32 0
  %385 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %384, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %386 = load i32, i32* @ENOMEM, align 4
  %387 = sub nsw i32 0, %386
  store i32 %387, i32* %10, align 4
  br label %412

388:                                              ; preds = %371
  %389 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %390 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %391 = call i32 @platform_set_drvdata(%struct.platform_device* %389, %struct.coda_dev* %390)
  %392 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %393 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %392, i32 0, i32 0
  %394 = call i32 @pm_runtime_get_noresume(%struct.TYPE_17__* %393)
  %395 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %396 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %395, i32 0, i32 0
  %397 = call i32 @pm_runtime_set_active(%struct.TYPE_17__* %396)
  %398 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %399 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %398, i32 0, i32 0
  %400 = call i32 @pm_runtime_enable(%struct.TYPE_17__* %399)
  %401 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %402 = call i32 @coda_firmware_request(%struct.coda_dev* %401)
  store i32 %402, i32* %10, align 4
  %403 = load i32, i32* %10, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %388
  br label %407

406:                                              ; preds = %388
  store i32 0, i32* %2, align 4
  br label %417

407:                                              ; preds = %405
  %408 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %409 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @destroy_workqueue(i32 %410)
  br label %412

412:                                              ; preds = %407, %382, %301, %277
  %413 = load %struct.coda_dev*, %struct.coda_dev** %9, align 8
  %414 = getelementptr inbounds %struct.coda_dev, %struct.coda_dev* %413, i32 0, i32 0
  %415 = call i32 @v4l2_device_unregister(i32* %414)
  %416 = load i32, i32* %10, align 4
  store i32 %416, i32* %2, align 4
  br label %417

417:                                              ; preds = %412, %406, %231, %220, %200, %174, %157, %140, %124, %106, %87, %65, %31
  %418 = load i32, i32* %2, align 4
  ret i32 %418
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local %struct.coda_dev* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_17__*, i32, i32, i32, i32, %struct.coda_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_17__*) #1

declare dso_local i8* @devm_reset_control_get_optional_exclusive(%struct.TYPE_17__*, i32*) #1

declare dso_local %struct.gen_pool* @of_gen_pool_get(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.gen_pool* @gen_pool_get(i32, i32*) #1

declare dso_local i8* @coda_get_vdoa_data(...) #1

declare dso_local i32 @v4l2_device_register(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @coda_alloc_aux_buf(%struct.coda_dev*, i32*, i64, i8*, i32) #1

declare dso_local i64 @gen_pool_dma_alloc(%struct.gen_pool*, i32, i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @debugfs_create_blob(i8*, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.coda_dev*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_17__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_17__*) #1

declare dso_local i32 @coda_firmware_request(%struct.coda_dev*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
