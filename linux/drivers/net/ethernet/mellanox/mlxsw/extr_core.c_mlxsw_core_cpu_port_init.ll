; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_cpu_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_core_cpu_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { %struct.mlxsw_core_port* }
%struct.mlxsw_core_port = type { i8* }

@MLXSW_PORT_CPU_PORT = common dso_local global i64 0, align 8
@DEVLINK_PORT_FLAVOUR_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_core_cpu_port_init(%struct.mlxsw_core* %0, i8* %1, i8* %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_core*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.mlxsw_core_port*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8 %3, i8* %9, align 1
  %12 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %13 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %13, align 8
  %15 = load i64, i64* @MLXSW_PORT_CPU_PORT, align 8
  %16 = getelementptr inbounds %struct.mlxsw_core_port, %struct.mlxsw_core_port* %14, i64 %15
  store %struct.mlxsw_core_port* %16, %struct.mlxsw_core_port** %10, align 8
  %17 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %18 = load i64, i64* @MLXSW_PORT_CPU_PORT, align 8
  %19 = load i32, i32* @DEVLINK_PORT_FLAVOUR_CPU, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %9, align 1
  %22 = call i32 @__mlxsw_core_port_init(%struct.mlxsw_core* %17, i64 %18, i32 %19, i32 0, i32 0, i32 0, i8* %20, i8 zeroext %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %31

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %10, align 8
  %30 = getelementptr inbounds %struct.mlxsw_core_port, %struct.mlxsw_core_port* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %25
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @__mlxsw_core_port_init(%struct.mlxsw_core*, i64, i32, i32, i32, i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
