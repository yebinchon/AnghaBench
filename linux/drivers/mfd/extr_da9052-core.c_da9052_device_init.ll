; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-core.c_da9052_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9052-core.c_da9052_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9052 = type { i32, i32, i32, i32 }
%struct.da9052_pdata = type { i32 (%struct.da9052.0*)* }
%struct.da9052.0 = type opaque

@.str = private unnamed_addr constant [24 x i8] c"Cannot clear FAULT_LOG\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"da9052_irq_init failed: %d\0A\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@da9052_subdev_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"mfd_add_devices failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"dlg,tsi-as-adc\00", align 1
@da9052_tsi_subdev_info = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to add TSI subdev: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @da9052_device_init(%struct.da9052* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9052*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9052_pdata*, align 8
  %7 = alloca i32, align 4
  store %struct.da9052* %0, %struct.da9052** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.da9052*, %struct.da9052** %4, align 8
  %9 = getelementptr inbounds %struct.da9052, %struct.da9052* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.da9052_pdata* @dev_get_platdata(i32 %10)
  store %struct.da9052_pdata* %11, %struct.da9052_pdata** %6, align 8
  %12 = load %struct.da9052*, %struct.da9052** %4, align 8
  %13 = getelementptr inbounds %struct.da9052, %struct.da9052* %12, i32 0, i32 3
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.da9052*, %struct.da9052** %4, align 8
  %16 = getelementptr inbounds %struct.da9052, %struct.da9052* %15, i32 0, i32 2
  %17 = call i32 @init_completion(i32* %16)
  %18 = load %struct.da9052*, %struct.da9052** %4, align 8
  %19 = call i32 @da9052_clear_fault_log(%struct.da9052* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.da9052*, %struct.da9052** %4, align 8
  %24 = getelementptr inbounds %struct.da9052, %struct.da9052* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.da9052_pdata*, %struct.da9052_pdata** %6, align 8
  %29 = icmp ne %struct.da9052_pdata* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load %struct.da9052_pdata*, %struct.da9052_pdata** %6, align 8
  %32 = getelementptr inbounds %struct.da9052_pdata, %struct.da9052_pdata* %31, i32 0, i32 0
  %33 = load i32 (%struct.da9052.0*)*, i32 (%struct.da9052.0*)** %32, align 8
  %34 = icmp ne i32 (%struct.da9052.0*)* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.da9052_pdata*, %struct.da9052_pdata** %6, align 8
  %37 = getelementptr inbounds %struct.da9052_pdata, %struct.da9052_pdata* %36, i32 0, i32 0
  %38 = load i32 (%struct.da9052.0*)*, i32 (%struct.da9052.0*)** %37, align 8
  %39 = load %struct.da9052*, %struct.da9052** %4, align 8
  %40 = bitcast %struct.da9052* %39 to %struct.da9052.0*
  %41 = call i32 %38(%struct.da9052.0* %40)
  br label %42

42:                                               ; preds = %35, %30, %27
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.da9052*, %struct.da9052** %4, align 8
  %45 = getelementptr inbounds %struct.da9052, %struct.da9052* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.da9052*, %struct.da9052** %4, align 8
  %47 = call i32 @da9052_irq_init(%struct.da9052* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.da9052*, %struct.da9052** %4, align 8
  %52 = getelementptr inbounds %struct.da9052, %struct.da9052* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %107

57:                                               ; preds = %42
  %58 = load %struct.da9052*, %struct.da9052** %4, align 8
  %59 = getelementptr inbounds %struct.da9052, %struct.da9052* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %62 = load i32, i32* @da9052_subdev_info, align 4
  %63 = load i32, i32* @da9052_subdev_info, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = call i32 @mfd_add_devices(i32 %60, i32 %61, i32 %62, i32 %64, i32* null, i32 0, i32* null)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load %struct.da9052*, %struct.da9052** %4, align 8
  %70 = getelementptr inbounds %struct.da9052, %struct.da9052* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %99

74:                                               ; preds = %57
  %75 = load %struct.da9052*, %struct.da9052** %4, align 8
  %76 = getelementptr inbounds %struct.da9052, %struct.da9052* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @device_property_read_bool(i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %74
  %81 = load %struct.da9052*, %struct.da9052** %4, align 8
  %82 = getelementptr inbounds %struct.da9052, %struct.da9052* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %85 = load i32, i32* @da9052_tsi_subdev_info, align 4
  %86 = load i32, i32* @da9052_tsi_subdev_info, align 4
  %87 = call i32 @ARRAY_SIZE(i32 %86)
  %88 = call i32 @mfd_add_devices(i32 %83, i32 %84, i32 %85, i32 %87, i32* null, i32 0, i32* null)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %80
  %92 = load %struct.da9052*, %struct.da9052** %4, align 8
  %93 = getelementptr inbounds %struct.da9052, %struct.da9052* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %99

97:                                               ; preds = %80
  br label %98

98:                                               ; preds = %97, %74
  store i32 0, i32* %3, align 4
  br label %107

99:                                               ; preds = %91, %68
  %100 = load %struct.da9052*, %struct.da9052** %4, align 8
  %101 = getelementptr inbounds %struct.da9052, %struct.da9052* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @mfd_remove_devices(i32 %102)
  %104 = load %struct.da9052*, %struct.da9052** %4, align 8
  %105 = call i32 @da9052_irq_exit(%struct.da9052* %104)
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %99, %98, %50
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.da9052_pdata* @dev_get_platdata(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @da9052_clear_fault_log(%struct.da9052*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @da9052_irq_init(%struct.da9052*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mfd_add_devices(i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @device_property_read_bool(i32, i8*) #1

declare dso_local i32 @mfd_remove_devices(i32) #1

declare dso_local i32 @da9052_irq_exit(%struct.da9052*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
