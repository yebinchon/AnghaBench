; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmfx.c_stmfx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmfx.c_stmfx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.stmfx = type { i32, i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stmfx_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to get IRQ: %d\0A\00", align 1
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@stmfx_cells = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @stmfx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfx_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.stmfx*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.stmfx* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.stmfx* %13, %struct.stmfx** %7, align 8
  %14 = load %struct.stmfx*, %struct.stmfx** %7, align 8
  %15 = icmp ne %struct.stmfx* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %103

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.stmfx*, %struct.stmfx** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.stmfx* %21)
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load %struct.stmfx*, %struct.stmfx** %7, align 8
  %25 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %24, i32 0, i32 3
  store %struct.device* %23, %struct.device** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %26, i32* @stmfx_regmap_config)
  %28 = load %struct.stmfx*, %struct.stmfx** %7, align 8
  %29 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.stmfx*, %struct.stmfx** %7, align 8
  %31 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %19
  %36 = load %struct.stmfx*, %struct.stmfx** %7, align 8
  %37 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %103

44:                                               ; preds = %19
  %45 = load %struct.stmfx*, %struct.stmfx** %7, align 8
  %46 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %45, i32 0, i32 1
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = call i32 @stmfx_chip_init(%struct.i2c_client* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EPROBE_DEFER, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %103

60:                                               ; preds = %52
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %103

62:                                               ; preds = %44
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %8, align 4
  br label %99

76:                                               ; preds = %62
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = call i32 @stmfx_irq_init(%struct.i2c_client* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %99

82:                                               ; preds = %76
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %85 = load i32, i32* @stmfx_cells, align 4
  %86 = load i32, i32* @stmfx_cells, align 4
  %87 = call i32 @ARRAY_SIZE(i32 %86)
  %88 = load %struct.stmfx*, %struct.stmfx** %7, align 8
  %89 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @devm_mfd_add_devices(%struct.device* %83, i32 %84, i32 %85, i32 %87, i32* null, i32 0, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %96

95:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %103

96:                                               ; preds = %94
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = call i32 @stmfx_irq_exit(%struct.i2c_client* %97)
  br label %99

99:                                               ; preds = %96, %81, %67
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = call i32 @stmfx_chip_exit(%struct.i2c_client* %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %95, %60, %57, %35, %16
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.stmfx* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.stmfx*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @stmfx_chip_init(%struct.i2c_client*) #1

declare dso_local i32 @stmfx_irq_init(%struct.i2c_client*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.device*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @stmfx_irq_exit(%struct.i2c_client*) #1

declare dso_local i32 @stmfx_chip_exit(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
