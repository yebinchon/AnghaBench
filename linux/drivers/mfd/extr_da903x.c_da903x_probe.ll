; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da903x.c_da903x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da903x.c_da903x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.da903x_chip*)*, i32 (%struct.da903x_chip*, i32*)*, i32 (%struct.da903x_chip*, i32)* }
%struct.da903x_chip = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i64 }
%struct.da903x_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da903x_ops = common dso_local global %struct.TYPE_2__* null, align 8
@da903x_irq_work = common dso_local global i32 0, align 4
@da903x_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"da903x\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @da903x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da903x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.da903x_platform_data*, align 8
  %7 = alloca %struct.da903x_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call %struct.da903x_platform_data* @dev_get_platdata(i32* %11)
  store %struct.da903x_platform_data* %12, %struct.da903x_platform_data** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.da903x_chip* @devm_kzalloc(i32* %14, i32 48, i32 %15)
  store %struct.da903x_chip* %16, %struct.da903x_chip** %7, align 8
  %17 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %18 = icmp eq %struct.da903x_chip* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %104

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %25 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %24, i32 0, i32 6
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 1
  %28 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %29 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @da903x_ops, align 8
  %31 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %33
  %35 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %36 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %35, i32 0, i32 1
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %38 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %37, i32 0, i32 4
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %41 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %40, i32 0, i32 3
  %42 = load i32, i32* @da903x_irq_work, align 4
  %43 = call i32 @INIT_WORK(i32* %41, i32 %42)
  %44 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %45 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %44, i32 0, i32 2
  %46 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %45)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %49 = call i32 @i2c_set_clientdata(%struct.i2c_client* %47, %struct.da903x_chip* %48)
  %50 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %51 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.da903x_chip*)*, i32 (%struct.da903x_chip*)** %53, align 8
  %55 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %56 = call i32 %54(%struct.da903x_chip* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %22
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %104

61:                                               ; preds = %22
  %62 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %63 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %65 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32 (%struct.da903x_chip*, i32)*, i32 (%struct.da903x_chip*, i32)** %67, align 8
  %69 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %70 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %71 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %68(%struct.da903x_chip* %69, i32 %72)
  %74 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %75 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32 (%struct.da903x_chip*, i32*)*, i32 (%struct.da903x_chip*, i32*)** %77, align 8
  %79 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %80 = call i32 %78(%struct.da903x_chip* %79, i32* %8)
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 1
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @da903x_irq_handler, align 4
  %87 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %88 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %89 = call i32 @devm_request_irq(i32* %82, i32 %85, i32 %86, i32 %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.da903x_chip* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %61
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 1
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %104

100:                                              ; preds = %61
  %101 = load %struct.da903x_chip*, %struct.da903x_chip** %7, align 8
  %102 = load %struct.da903x_platform_data*, %struct.da903x_platform_data** %6, align 8
  %103 = call i32 @da903x_add_subdevs(%struct.da903x_chip* %101, %struct.da903x_platform_data* %102)
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %92, %59, %19
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.da903x_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.da903x_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.da903x_chip*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.da903x_chip*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @da903x_add_subdevs(%struct.da903x_chip*, %struct.da903x_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
