; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-i2c.c_da9052_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-i2c.c_da9052_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.da9052 = type { i32, i32, i32, %struct.TYPE_3__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da9052_i2c_fix = common dso_local global i32 0, align 4
@da9052_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"id is null.\0A\00", align 1
@dialog_dt_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @da9052_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9052_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.da9052*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.da9052* @devm_kzalloc(%struct.TYPE_3__* %9, i32 24, i32 %10)
  store %struct.da9052* %11, %struct.da9052** %6, align 8
  %12 = load %struct.da9052*, %struct.da9052** %6, align 8
  %13 = icmp ne %struct.da9052* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load %struct.da9052*, %struct.da9052** %6, align 8
  %21 = getelementptr inbounds %struct.da9052, %struct.da9052* %20, i32 0, i32 3
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %21, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.da9052*, %struct.da9052** %6, align 8
  %26 = getelementptr inbounds %struct.da9052, %struct.da9052* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @da9052_i2c_fix, align 4
  %28 = load %struct.da9052*, %struct.da9052** %6, align 8
  %29 = getelementptr inbounds %struct.da9052, %struct.da9052* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.da9052*, %struct.da9052** %6, align 8
  %32 = call i32 @i2c_set_clientdata(%struct.i2c_client* %30, %struct.da9052* %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %33, i32* @da9052_regmap_config)
  %35 = load %struct.da9052*, %struct.da9052** %6, align 8
  %36 = getelementptr inbounds %struct.da9052, %struct.da9052* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.da9052*, %struct.da9052** %6, align 8
  %38 = getelementptr inbounds %struct.da9052, %struct.da9052* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %17
  %43 = load %struct.da9052*, %struct.da9052** %6, align 8
  %44 = getelementptr inbounds %struct.da9052, %struct.da9052* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %75

52:                                               ; preds = %17
  %53 = load %struct.da9052*, %struct.da9052** %6, align 8
  %54 = call i32 @da9052_i2c_disable_multiwrite(%struct.da9052* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %75

59:                                               ; preds = %52
  %60 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %61 = icmp ne %struct.i2c_device_id* %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %75

69:                                               ; preds = %59
  %70 = load %struct.da9052*, %struct.da9052** %6, align 8
  %71 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %72 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @da9052_device_init(%struct.da9052* %70, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %69, %62, %57, %42, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.da9052* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.da9052*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i32 @da9052_i2c_disable_multiwrite(%struct.da9052*) #1

declare dso_local i32 @da9052_device_init(%struct.da9052*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
