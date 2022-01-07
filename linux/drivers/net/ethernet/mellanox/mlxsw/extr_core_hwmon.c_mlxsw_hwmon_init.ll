; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_hwmon.c_mlxsw_hwmon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_hwmon.c_mlxsw_hwmon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_bus_info = type { i32 }
%struct.mlxsw_hwmon = type { %struct.device*, %struct.TYPE_2__**, i32, %struct.TYPE_2__, %struct.mlxsw_bus_info*, %struct.mlxsw_core* }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mlxsw\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_hwmon_init(%struct.mlxsw_core* %0, %struct.mlxsw_bus_info* %1, %struct.mlxsw_hwmon** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_core*, align 8
  %6 = alloca %struct.mlxsw_bus_info*, align 8
  %7 = alloca %struct.mlxsw_hwmon**, align 8
  %8 = alloca %struct.mlxsw_hwmon*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %5, align 8
  store %struct.mlxsw_bus_info* %1, %struct.mlxsw_bus_info** %6, align 8
  store %struct.mlxsw_hwmon** %2, %struct.mlxsw_hwmon*** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mlxsw_hwmon* @kzalloc(i32 40, i32 %11)
  store %struct.mlxsw_hwmon* %12, %struct.mlxsw_hwmon** %8, align 8
  %13 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %14 = icmp ne %struct.mlxsw_hwmon* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %89

18:                                               ; preds = %3
  %19 = load %struct.mlxsw_core*, %struct.mlxsw_core** %5, align 8
  %20 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %21 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %20, i32 0, i32 5
  store %struct.mlxsw_core* %19, %struct.mlxsw_core** %21, align 8
  %22 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %6, align 8
  %23 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %24 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %23, i32 0, i32 4
  store %struct.mlxsw_bus_info* %22, %struct.mlxsw_bus_info** %24, align 8
  %25 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %26 = call i32 @mlxsw_hwmon_temp_init(%struct.mlxsw_hwmon* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %85

30:                                               ; preds = %18
  %31 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %32 = call i32 @mlxsw_hwmon_fans_init(%struct.mlxsw_hwmon* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %84

36:                                               ; preds = %30
  %37 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %38 = call i32 @mlxsw_hwmon_module_init(%struct.mlxsw_hwmon* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %83

42:                                               ; preds = %36
  %43 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %44 = call i32 @mlxsw_hwmon_gearbox_init(%struct.mlxsw_hwmon* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %82

48:                                               ; preds = %42
  %49 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %50 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %49, i32 0, i32 3
  %51 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %52 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 0
  store %struct.TYPE_2__* %50, %struct.TYPE_2__** %54, align 8
  %55 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %56 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %59 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %6, align 8
  %62 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %65 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %66 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %66, align 8
  %68 = call %struct.device* @hwmon_device_register_with_groups(i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.mlxsw_hwmon* %64, %struct.TYPE_2__** %67)
  store %struct.device* %68, %struct.device** %9, align 8
  %69 = load %struct.device*, %struct.device** %9, align 8
  %70 = call i64 @IS_ERR(%struct.device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %48
  %73 = load %struct.device*, %struct.device** %9, align 8
  %74 = call i32 @PTR_ERR(%struct.device* %73)
  store i32 %74, i32* %10, align 4
  br label %81

75:                                               ; preds = %48
  %76 = load %struct.device*, %struct.device** %9, align 8
  %77 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %78 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %77, i32 0, i32 0
  store %struct.device* %76, %struct.device** %78, align 8
  %79 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %80 = load %struct.mlxsw_hwmon**, %struct.mlxsw_hwmon*** %7, align 8
  store %struct.mlxsw_hwmon* %79, %struct.mlxsw_hwmon** %80, align 8
  store i32 0, i32* %4, align 4
  br label %89

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %47
  br label %83

83:                                               ; preds = %82, %41
  br label %84

84:                                               ; preds = %83, %35
  br label %85

85:                                               ; preds = %84, %29
  %86 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %8, align 8
  %87 = call i32 @kfree(%struct.mlxsw_hwmon* %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %75, %15
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.mlxsw_hwmon* @kzalloc(i32, i32) #1

declare dso_local i32 @mlxsw_hwmon_temp_init(%struct.mlxsw_hwmon*) #1

declare dso_local i32 @mlxsw_hwmon_fans_init(%struct.mlxsw_hwmon*) #1

declare dso_local i32 @mlxsw_hwmon_module_init(%struct.mlxsw_hwmon*) #1

declare dso_local i32 @mlxsw_hwmon_gearbox_init(%struct.mlxsw_hwmon*) #1

declare dso_local %struct.device* @hwmon_device_register_with_groups(i32, i8*, %struct.mlxsw_hwmon*, %struct.TYPE_2__**) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @kfree(%struct.mlxsw_hwmon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
