; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c___mlxsw_core_port_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c___mlxsw_core_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { %struct.mlxsw_core_port* }
%struct.mlxsw_core_port = type { i64, %struct.devlink_port }
%struct.devlink_port = type { i32 }
%struct.devlink = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, i64, i32, i32, i32, i32, i8*, i8)* @__mlxsw_core_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_core_port_init(%struct.mlxsw_core* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i8 zeroext %7) #0 {
  %9 = alloca %struct.mlxsw_core*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca %struct.devlink*, align 8
  %18 = alloca %struct.mlxsw_core_port*, align 8
  %19 = alloca %struct.devlink_port*, align 8
  %20 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i8 %7, i8* %16, align 1
  %21 = load %struct.mlxsw_core*, %struct.mlxsw_core** %9, align 8
  %22 = call %struct.devlink* @priv_to_devlink(%struct.mlxsw_core* %21)
  store %struct.devlink* %22, %struct.devlink** %17, align 8
  %23 = load %struct.mlxsw_core*, %struct.mlxsw_core** %9, align 8
  %24 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %23, i32 0, i32 0
  %25 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.mlxsw_core_port, %struct.mlxsw_core_port* %25, i64 %26
  store %struct.mlxsw_core_port* %27, %struct.mlxsw_core_port** %18, align 8
  %28 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %18, align 8
  %29 = getelementptr inbounds %struct.mlxsw_core_port, %struct.mlxsw_core_port* %28, i32 0, i32 1
  store %struct.devlink_port* %29, %struct.devlink_port** %19, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %18, align 8
  %32 = getelementptr inbounds %struct.mlxsw_core_port, %struct.mlxsw_core_port* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.devlink_port*, %struct.devlink_port** %19, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i8*, i8** %15, align 8
  %39 = load i8, i8* %16, align 1
  %40 = call i32 @devlink_port_attrs_set(%struct.devlink_port* %33, i32 %34, i32 %35, i32 %36, i32 %37, i8* %38, i8 zeroext %39)
  %41 = load %struct.devlink*, %struct.devlink** %17, align 8
  %42 = load %struct.devlink_port*, %struct.devlink_port** %19, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @devlink_port_register(%struct.devlink* %41, %struct.devlink_port* %42, i64 %43)
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %8
  %48 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %18, align 8
  %49 = call i32 @memset(%struct.mlxsw_core_port* %48, i32 0, i32 16)
  br label %50

50:                                               ; preds = %47, %8
  %51 = load i32, i32* %20, align 4
  ret i32 %51
}

declare dso_local %struct.devlink* @priv_to_devlink(%struct.mlxsw_core*) #1

declare dso_local i32 @devlink_port_attrs_set(%struct.devlink_port*, i32, i32, i32, i32, i8*, i8 zeroext) #1

declare dso_local i32 @devlink_port_register(%struct.devlink*, %struct.devlink_port*, i64) #1

declare dso_local i32 @memset(%struct.mlxsw_core_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
