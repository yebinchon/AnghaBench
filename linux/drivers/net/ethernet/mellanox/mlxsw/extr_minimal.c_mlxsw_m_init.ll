; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_bus_info = type { i32 }
%struct.mlxsw_m = type { %struct.mlxsw_bus_info*, %struct.mlxsw_core* }

@.str = private unnamed_addr constant [24 x i8] c"Failed to get base mac\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to create ports\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, %struct.mlxsw_bus_info*)* @mlxsw_m_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_m_init(%struct.mlxsw_core* %0, %struct.mlxsw_bus_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_core*, align 8
  %5 = alloca %struct.mlxsw_bus_info*, align 8
  %6 = alloca %struct.mlxsw_m*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %4, align 8
  store %struct.mlxsw_bus_info* %1, %struct.mlxsw_bus_info** %5, align 8
  %8 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %9 = call %struct.mlxsw_m* @mlxsw_core_driver_priv(%struct.mlxsw_core* %8)
  store %struct.mlxsw_m* %9, %struct.mlxsw_m** %6, align 8
  %10 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %11 = load %struct.mlxsw_m*, %struct.mlxsw_m** %6, align 8
  %12 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %11, i32 0, i32 1
  store %struct.mlxsw_core* %10, %struct.mlxsw_core** %12, align 8
  %13 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %5, align 8
  %14 = load %struct.mlxsw_m*, %struct.mlxsw_m** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %14, i32 0, i32 0
  store %struct.mlxsw_bus_info* %13, %struct.mlxsw_bus_info** %15, align 8
  %16 = load %struct.mlxsw_m*, %struct.mlxsw_m** %6, align 8
  %17 = call i32 @mlxsw_m_base_mac_get(%struct.mlxsw_m* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.mlxsw_m*, %struct.mlxsw_m** %6, align 8
  %22 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %21, i32 0, i32 0
  %23 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %22, align 8
  %24 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.mlxsw_m*, %struct.mlxsw_m** %6, align 8
  %30 = call i32 @mlxsw_m_ports_create(%struct.mlxsw_m* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.mlxsw_m*, %struct.mlxsw_m** %6, align 8
  %35 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %34, i32 0, i32 0
  %36 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %35, align 8
  %37 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %33, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.mlxsw_m* @mlxsw_core_driver_priv(%struct.mlxsw_core*) #1

declare dso_local i32 @mlxsw_m_base_mac_get(%struct.mlxsw_m*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mlxsw_m_ports_create(%struct.mlxsw_m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
