; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_modules_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_modules_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mlxsw_core = type { i32 }
%struct.mlxsw_thermal = type { %struct.mlxsw_thermal_module* }
%struct.mlxsw_thermal_module = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mlxsw_core*, %struct.mlxsw_thermal*)* @mlxsw_thermal_modules_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_thermal_modules_init(%struct.device* %0, %struct.mlxsw_core* %1, %struct.mlxsw_thermal* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mlxsw_core*, align 8
  %7 = alloca %struct.mlxsw_thermal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_thermal_module*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.mlxsw_core* %1, %struct.mlxsw_core** %6, align 8
  store %struct.mlxsw_thermal* %2, %struct.mlxsw_thermal** %7, align 8
  %12 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %13 = call i32 @mlxsw_core_max_ports(%struct.mlxsw_core* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %15 = call i32 @mlxsw_core_res_query_enabled(%struct.mlxsw_core* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %101

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.mlxsw_thermal_module* @kcalloc(i32 %19, i32 4, i32 %20)
  %22 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %23 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %22, i32 0, i32 0
  store %struct.mlxsw_thermal_module* %21, %struct.mlxsw_thermal_module** %23, align 8
  %24 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %25 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %24, i32 0, i32 0
  %26 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %25, align 8
  %27 = icmp ne %struct.mlxsw_thermal_module* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %101

31:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %39 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @mlxsw_thermal_module_init(%struct.device* %37, %struct.mlxsw_core* %38, %struct.mlxsw_thermal* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %78

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %32

49:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %74, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub i32 %52, 1
  %54 = icmp ult i32 %51, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %57 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %56, i32 0, i32 0
  %58 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %58, i64 %60
  store %struct.mlxsw_thermal_module* %61, %struct.mlxsw_thermal_module** %9, align 8
  %62 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %9, align 8
  %63 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %55
  br label %74

67:                                               ; preds = %55
  %68 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %9, align 8
  %69 = call i32 @mlxsw_thermal_module_tz_init(%struct.mlxsw_thermal_module* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %78

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %66
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %50

77:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %101

78:                                               ; preds = %72, %44
  %79 = load i32, i32* %8, align 4
  %80 = sub i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %92, %78
  %82 = load i32, i32* %10, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %86 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %85, i32 0, i32 0
  %87 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.mlxsw_thermal_module, %struct.mlxsw_thermal_module* %87, i64 %89
  %91 = call i32 @mlxsw_thermal_module_fini(%struct.mlxsw_thermal_module* %90)
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %10, align 4
  br label %81

95:                                               ; preds = %81
  %96 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %7, align 8
  %97 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %96, i32 0, i32 0
  %98 = load %struct.mlxsw_thermal_module*, %struct.mlxsw_thermal_module** %97, align 8
  %99 = call i32 @kfree(%struct.mlxsw_thermal_module* %98)
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %95, %77, %28, %17
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @mlxsw_core_max_ports(%struct.mlxsw_core*) #1

declare dso_local i32 @mlxsw_core_res_query_enabled(%struct.mlxsw_core*) #1

declare dso_local %struct.mlxsw_thermal_module* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mlxsw_thermal_module_init(%struct.device*, %struct.mlxsw_core*, %struct.mlxsw_thermal*, i32) #1

declare dso_local i32 @mlxsw_thermal_module_tz_init(%struct.mlxsw_thermal_module*) #1

declare dso_local i32 @mlxsw_thermal_module_fini(%struct.mlxsw_thermal_module*) #1

declare dso_local i32 @kfree(%struct.mlxsw_thermal_module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
