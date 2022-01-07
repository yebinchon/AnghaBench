; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6030-irq.c_twl6030_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6030-irq.c_twl6030_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i32, i32* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i64 }

@twl6030_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown TWL device model\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TWL6030_NR_IRQS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@twl6030_irq = common dso_local global %struct.TYPE_7__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@TWL_MODULE_PIH = common dso_local global i32 0, align 4
@REG_INT_MSK_LINE_A = common dso_local global i32 0, align 4
@REG_INT_MSK_STS_A = common dso_local global i32 0, align 4
@REG_INT_STS_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"I2C err writing TWL_MODULE_PIH: %d\0A\00", align 1
@dummy_irq_chip = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"twl6030\00", align 1
@twl6030_irq_set_wake = common dso_local global i32 0, align 4
@twl6030_irq_pm_notifier = common dso_local global i32 0, align 4
@twl6030_irq_domain_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Can't add irq_domain\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"PIH (irq %d) nested IRQs\0A\00", align 1
@twl6030_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"TWL6030-PIH\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"could not claim irq %d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl6030_init_irq(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca %struct.of_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = load i32, i32* @twl6030_of_match, align 4
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.of_device_id* @of_match_device(i32 %14, %struct.device* %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %10, align 8
  %17 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %18 = icmp ne %struct.of_device_id* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %21 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %136

29:                                               ; preds = %19
  %30 = load i32, i32* @TWL6030_NR_IRQS, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.TYPE_7__* @devm_kzalloc(%struct.device* %31, i32 56, i32 %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** @twl6030_irq, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %136

39:                                               ; preds = %29
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 255, i32* %40, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 255, i32* %41, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 255, i32* %42, align 4
  %43 = load i32, i32* @TWL_MODULE_PIH, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %45 = load i32, i32* @REG_INT_MSK_LINE_A, align 4
  %46 = call i32 @twl_i2c_write(i32 %43, i32* %44, i32 %45, i32 3)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @TWL_MODULE_PIH, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %49 = load i32, i32* @REG_INT_MSK_STS_A, align 4
  %50 = call i32 @twl_i2c_write(i32 %47, i32* %48, i32 %49, i32 3)
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @TWL_MODULE_PIH, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %55 = load i32, i32* @REG_INT_STS_A, align 4
  %56 = call i32 @twl_i2c_write(i32 %53, i32* %54, i32 %55, i32 3)
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %39
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %136

66:                                               ; preds = %39
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 5
  %69 = bitcast %struct.TYPE_9__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 bitcast (%struct.TYPE_9__* @dummy_irq_chip to i8*), i64 24, i1 false)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %72, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  store i32* null, i32** %75, align 8
  %76 = load i32, i32* @twl6030_irq_set_wake, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @twl6030_irq_pm_notifier, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = call i32 @atomic_set(i32* %85, i32 0)
  %87 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %88 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  %92 = load %struct.device_node*, %struct.device_node** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %95 = call i32 @irq_domain_add_linear(%struct.device_node* %92, i32 %93, i32* @twl6030_irq_domain_ops, %struct.TYPE_7__* %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %66
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %136

107:                                              ; preds = %66
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @dev_info(%struct.device* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @twl6030_irq_thread, align 4
  %113 = load i32, i32* @IRQF_ONESHOT, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %115 = call i32 @request_threaded_irq(i32 %111, i32* null, i32 %112, i32 %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_7__* %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %107
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %120, i32 %121)
  br label %130

123:                                              ; preds = %107
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = call i32 @register_pm_notifier(%struct.TYPE_8__* %128)
  store i32 0, i32* %3, align 4
  br label %136

130:                                              ; preds = %118
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** @twl6030_irq, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @irq_domain_remove(i32 %133)
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %130, %123, %102, %61, %36, %24
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @twl_i2c_write(i32, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @register_pm_notifier(%struct.TYPE_8__*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
