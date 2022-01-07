; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc3589x.c_tc3589x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc3589x.c_tc3589x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tc3589x_platform_data = type { i32 }
%struct.tc3589x = type { i32, %struct.TYPE_5__*, %struct.i2c_client*, %struct.tc3589x_platform_data*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"No platform data or DT found\0A\00", align 1
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tc3589x_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"tc3589x\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to request IRQ: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to add child devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tc3589x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc3589x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.tc3589x_platform_data*, align 8
  %8 = alloca %struct.tc3589x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = call %struct.tc3589x_platform_data* @dev_get_platdata(%struct.TYPE_5__* %16)
  store %struct.tc3589x_platform_data* %17, %struct.tc3589x_platform_data** %7, align 8
  %18 = load %struct.tc3589x_platform_data*, %struct.tc3589x_platform_data** %7, align 8
  %19 = icmp ne %struct.tc3589x_platform_data* %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = call %struct.tc3589x_platform_data* @tc3589x_of_probe(%struct.TYPE_5__* %22, i32* %9)
  store %struct.tc3589x_platform_data* %23, %struct.tc3589x_platform_data** %7, align 8
  %24 = load %struct.tc3589x_platform_data*, %struct.tc3589x_platform_data** %7, align 8
  %25 = call i64 @IS_ERR(%struct.tc3589x_platform_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.tc3589x_platform_data*, %struct.tc3589x_platform_data** %7, align 8
  %32 = call i32 @PTR_ERR(%struct.tc3589x_platform_data* %31)
  store i32 %32, i32* %3, align 4
  br label %133

33:                                               ; preds = %20
  br label %38

34:                                               ; preds = %2
  %35 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %33
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %43 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @i2c_check_functionality(i32 %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %133

50:                                               ; preds = %38
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 1
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.tc3589x* @devm_kzalloc(%struct.TYPE_5__* %52, i32 40, i32 %53)
  store %struct.tc3589x* %54, %struct.tc3589x** %8, align 8
  %55 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %56 = icmp ne %struct.tc3589x* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %133

60:                                               ; preds = %50
  %61 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %62 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %61, i32 0, i32 4
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 1
  %66 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %67 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %66, i32 0, i32 1
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %67, align 8
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %70 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %69, i32 0, i32 2
  store %struct.i2c_client* %68, %struct.i2c_client** %70, align 8
  %71 = load %struct.tc3589x_platform_data*, %struct.tc3589x_platform_data** %7, align 8
  %72 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %73 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %72, i32 0, i32 3
  store %struct.tc3589x_platform_data* %71, %struct.tc3589x_platform_data** %73, align 8
  %74 = load i32, i32* %9, align 4
  switch i32 %74, label %79 [
    i32 132, label %75
    i32 130, label %75
    i32 129, label %75
    i32 134, label %78
    i32 133, label %78
    i32 131, label %78
    i32 128, label %78
  ]

75:                                               ; preds = %60, %60, %60
  %76 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %77 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %76, i32 0, i32 0
  store i32 20, i32* %77, align 8
  br label %82

78:                                               ; preds = %60, %60, %60, %60
  br label %79

79:                                               ; preds = %60, %78
  %80 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %81 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %80, i32 0, i32 0
  store i32 24, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %75
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %85 = call i32 @i2c_set_clientdata(%struct.i2c_client* %83, %struct.tc3589x* %84)
  %86 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %87 = call i32 @tc3589x_chip_init(%struct.tc3589x* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  br label %133

92:                                               ; preds = %82
  %93 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %94 = load %struct.device_node*, %struct.device_node** %6, align 8
  %95 = call i32 @tc3589x_irq_init(%struct.tc3589x* %93, %struct.device_node* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %3, align 4
  br label %133

100:                                              ; preds = %92
  %101 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %102 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %101, i32 0, i32 2
  %103 = load %struct.i2c_client*, %struct.i2c_client** %102, align 8
  %104 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @tc3589x_irq, align 4
  %107 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %108 = load i32, i32* @IRQF_ONESHOT, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %111 = call i32 @request_threaded_irq(i32 %105, i32* null, i32 %106, i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.tc3589x* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %100
  %115 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %116 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %115, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %133

121:                                              ; preds = %100
  %122 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %123 = call i32 @tc3589x_device_init(%struct.tc3589x* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.tc3589x*, %struct.tc3589x** %8, align 8
  %128 = getelementptr inbounds %struct.tc3589x, %struct.tc3589x* %127, i32 0, i32 1
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %3, align 4
  br label %133

132:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %126, %114, %98, %90, %57, %47, %27
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.tc3589x_platform_data* @dev_get_platdata(%struct.TYPE_5__*) #1

declare dso_local %struct.tc3589x_platform_data* @tc3589x_of_probe(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tc3589x_platform_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.tc3589x_platform_data*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.tc3589x* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tc3589x*) #1

declare dso_local i32 @tc3589x_chip_init(%struct.tc3589x*) #1

declare dso_local i32 @tc3589x_irq_init(%struct.tc3589x*, %struct.device_node*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.tc3589x*) #1

declare dso_local i32 @tc3589x_device_init(%struct.tc3589x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
