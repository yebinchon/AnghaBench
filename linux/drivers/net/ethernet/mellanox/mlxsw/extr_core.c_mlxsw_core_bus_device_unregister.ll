; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_bus_device_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_bus_device_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.mlxsw_core*)*, i32 (%struct.mlxsw_core*)* }
%struct.TYPE_5__ = type { i32 (i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.devlink = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_core_bus_device_unregister(%struct.mlxsw_core* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink*, align 8
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %7 = call %struct.devlink* @priv_to_devlink(%struct.mlxsw_core* %6)
  store %struct.devlink* %7, %struct.devlink** %5, align 8
  %8 = load %struct.devlink*, %struct.devlink** %5, align 8
  %9 = call i64 @devlink_is_reload_failed(%struct.devlink* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  br label %98

15:                                               ; preds = %11
  br label %120

16:                                               ; preds = %2
  %17 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %18 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32 (%struct.mlxsw_core*)*, i32 (%struct.mlxsw_core*)** %20, align 8
  %22 = icmp ne i32 (%struct.mlxsw_core*)* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.devlink*, %struct.devlink** %5, align 8
  %25 = call i32 @devlink_params_unpublish(%struct.devlink* %24)
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %28 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mlxsw_thermal_fini(i32 %29)
  %31 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %32 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlxsw_hwmon_fini(i32 %33)
  %35 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %36 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32 (%struct.mlxsw_core*)*, i32 (%struct.mlxsw_core*)** %38, align 8
  %40 = icmp ne i32 (%struct.mlxsw_core*)* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %26
  %42 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %43 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32 (%struct.mlxsw_core*)*, i32 (%struct.mlxsw_core*)** %45, align 8
  %47 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %48 = call i32 %46(%struct.mlxsw_core* %47)
  br label %49

49:                                               ; preds = %41, %26
  %50 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %51 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (%struct.mlxsw_core*)*, i32 (%struct.mlxsw_core*)** %53, align 8
  %55 = icmp ne i32 (%struct.mlxsw_core*)* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %61 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32 (%struct.mlxsw_core*)*, i32 (%struct.mlxsw_core*)** %63, align 8
  %65 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %66 = call i32 %64(%struct.mlxsw_core* %65)
  br label %67

67:                                               ; preds = %59, %56, %49
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load %struct.devlink*, %struct.devlink** %5, align 8
  %72 = call i32 @devlink_unregister(%struct.devlink* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %75 = call i32 @mlxsw_emad_fini(%struct.mlxsw_core* %74)
  %76 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %77 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @kfree(i32 %79)
  %81 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %82 = call i32 @mlxsw_ports_fini(%struct.mlxsw_core* %81)
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %73
  %86 = load %struct.devlink*, %struct.devlink** %5, align 8
  %87 = call i32 @devlink_resources_unregister(%struct.devlink* %86, i32* null)
  br label %88

88:                                               ; preds = %85, %73
  %89 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %90 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32 (i32)*, i32 (i32)** %92, align 8
  %94 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %95 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 %93(i32 %96)
  br label %120

98:                                               ; preds = %14
  %99 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %100 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32 (%struct.mlxsw_core*)*, i32 (%struct.mlxsw_core*)** %102, align 8
  %104 = icmp ne i32 (%struct.mlxsw_core*)* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %107 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32 (%struct.mlxsw_core*)*, i32 (%struct.mlxsw_core*)** %109, align 8
  %111 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %112 = call i32 %110(%struct.mlxsw_core* %111)
  br label %113

113:                                              ; preds = %105, %98
  %114 = load %struct.devlink*, %struct.devlink** %5, align 8
  %115 = call i32 @devlink_unregister(%struct.devlink* %114)
  %116 = load %struct.devlink*, %struct.devlink** %5, align 8
  %117 = call i32 @devlink_resources_unregister(%struct.devlink* %116, i32* null)
  %118 = load %struct.devlink*, %struct.devlink** %5, align 8
  %119 = call i32 @devlink_free(%struct.devlink* %118)
  br label %120

120:                                              ; preds = %113, %88, %15
  ret void
}

declare dso_local %struct.devlink* @priv_to_devlink(%struct.mlxsw_core*) #1

declare dso_local i64 @devlink_is_reload_failed(%struct.devlink*) #1

declare dso_local i32 @devlink_params_unpublish(%struct.devlink*) #1

declare dso_local i32 @mlxsw_thermal_fini(i32) #1

declare dso_local i32 @mlxsw_hwmon_fini(i32) #1

declare dso_local i32 @devlink_unregister(%struct.devlink*) #1

declare dso_local i32 @mlxsw_emad_fini(%struct.mlxsw_core*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mlxsw_ports_fini(%struct.mlxsw_core*) #1

declare dso_local i32 @devlink_resources_unregister(%struct.devlink*, i32*) #1

declare dso_local i32 @devlink_free(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
