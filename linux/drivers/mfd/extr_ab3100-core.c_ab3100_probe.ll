; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab3100-core.c_ab3100_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab3100-core.c_ab3100_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, %struct.ab3100_platform_data* }
%struct.ab3100_platform_data = type { i32 }
%struct.i2c_client = type { i32, i32, i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.ab3100 = type { i32, i32, i32*, %struct.i2c_client*, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AB3100_CID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to communicate with AB3100 chip\0A\00", align 1
@ids = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"AB3000 is not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"AB3100 %s\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"unknown analog baseband chip id: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"accepting it anyway. Please update the driver.\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Detected chip: %s\0A\00", align 1
@ab3100_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"ab3100-core\00", align 1
@ab3100_ops = common dso_local global i32 0, align 4
@ab3100_devs = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ab3100_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ab3100*, align 8
  %7 = alloca %struct.ab3100_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.ab3100_platform_data* @dev_get_platdata(i32* %11)
  store %struct.ab3100_platform_data* %12, %struct.ab3100_platform_data** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ab3100* @devm_kzalloc(i32* %14, i32 40, i32 %15)
  store %struct.ab3100* %16, %struct.ab3100** %6, align 8
  %17 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %18 = icmp ne %struct.ab3100* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %212

22:                                               ; preds = %2
  %23 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %24 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %23, i32 0, i32 6
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %27 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %26, i32 0, i32 5
  %28 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %31 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %30, i32 0, i32 3
  store %struct.i2c_client* %29, %struct.i2c_client** %31, align 8
  %32 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %33 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %32, i32 0, i32 3
  %34 = load %struct.i2c_client*, %struct.i2c_client** %33, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %37 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %36, i32 0, i32 4
  store i32* %35, i32** %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %40 = call i32 @i2c_set_clientdata(%struct.i2c_client* %38, %struct.ab3100* %39)
  %41 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %42 = load i32, i32* @AB3100_CID, align 4
  %43 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %44 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %43, i32 0, i32 0
  %45 = call i32 @ab3100_get_register_interruptible(%struct.ab3100* %41, i32 %42, i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %22
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %210

52:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %86, %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ids, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %53
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ids, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %69 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %61
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ids, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %89

81:                                               ; preds = %72
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = call i32 (i32*, i8*, ...) @dev_err(i32* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %210

85:                                               ; preds = %61
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %53

89:                                               ; preds = %80, %53
  %90 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %91 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ids, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @snprintf(i32* %93, i32 7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ids, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %89
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %112 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32*, i8*, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %210

118:                                              ; preds = %89
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %119, i32 0, i32 0
  %121 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %122 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = call i32 @dev_info(i32* %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %124)
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  %133 = call i32 @i2c_new_dummy_device(i32 %128, i64 %132)
  %134 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %135 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %137 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @IS_ERR(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %118
  %142 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %143 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @PTR_ERR(i32 %144)
  store i32 %145, i32* %8, align 4
  br label %209

146:                                              ; preds = %118
  %147 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %148 = call i32 @ab3100_setup(%struct.ab3100* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %204

152:                                              ; preds = %146
  %153 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %154 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %153, i32 0, i32 0
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @ab3100_irq_handler, align 4
  %159 = load i32, i32* @IRQF_ONESHOT, align 4
  %160 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %161 = call i32 @devm_request_threaded_irq(i32* %154, i32 %157, i32* null, i32 %158, i32 %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), %struct.ab3100* %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %152
  br label %203

165:                                              ; preds = %152
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %166, i32 0, i32 0
  %168 = call i32 @abx500_register_ops(i32* %167, i32* @ab3100_ops)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %202

172:                                              ; preds = %165
  store i32 0, i32* %9, align 4
  br label %173

173:                                              ; preds = %190, %172
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ab3100_devs, align 8
  %176 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %175)
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %178, label %193

178:                                              ; preds = %173
  %179 = load %struct.ab3100_platform_data*, %struct.ab3100_platform_data** %7, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ab3100_devs, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  store %struct.ab3100_platform_data* %179, %struct.ab3100_platform_data** %184, align 8
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ab3100_devs, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  store i32 4, i32* %189, align 8
  br label %190

190:                                              ; preds = %178
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  br label %173

193:                                              ; preds = %173
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 0
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ab3100_devs, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ab3100_devs, align 8
  %198 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %197)
  %199 = call i32 @mfd_add_devices(i32* %195, i32 0, %struct.TYPE_5__* %196, i32 %198, i32* null, i32 0, i32* null)
  store i32 %199, i32* %8, align 4
  %200 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %201 = call i32 @ab3100_setup_debugfs(%struct.ab3100* %200)
  store i32 0, i32* %3, align 4
  br label %212

202:                                              ; preds = %171
  br label %203

203:                                              ; preds = %202, %164
  br label %204

204:                                              ; preds = %203, %151
  %205 = load %struct.ab3100*, %struct.ab3100** %6, align 8
  %206 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @i2c_unregister_device(i32 %207)
  br label %209

209:                                              ; preds = %204, %141
  br label %210

210:                                              ; preds = %209, %108, %81, %48
  %211 = load i32, i32* %8, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %210, %193, %19
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local %struct.ab3100_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.ab3100* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ab3100*) #1

declare dso_local i32 @ab3100_get_register_interruptible(%struct.ab3100*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32*) #1

declare dso_local i32 @i2c_new_dummy_device(i32, i64) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ab3100_setup(%struct.ab3100*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.ab3100*) #1

declare dso_local i32 @abx500_register_ops(i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, %struct.TYPE_5__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ab3100_setup_debugfs(%struct.ab3100*) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
