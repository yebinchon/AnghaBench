; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_cpu_port_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_cpu_port_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_port**, %struct.TYPE_2__*, i32, i32 }
%struct.mlxsw_sp_port = type { i64, %struct.mlxsw_sp* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_PORT_CPU_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to initialize core CPU port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp_cpu_port_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_cpu_port_create(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mlxsw_sp_port* @kzalloc(i32 16, i32 %6)
  store %struct.mlxsw_sp_port* %7, %struct.mlxsw_sp_port** %4, align 8
  %8 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %9 = icmp ne %struct.mlxsw_sp_port* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %15 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %15, i32 0, i32 1
  store %struct.mlxsw_sp* %14, %struct.mlxsw_sp** %16, align 8
  %17 = load i64, i64* @MLXSW_PORT_CPU_PORT, align 8
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mlxsw_core_cpu_port_init(i32 %22, %struct.mlxsw_sp_port* %23, i32 %26, i32 4)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %13
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %44

37:                                               ; preds = %13
  %38 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %39, i32 0, i32 0
  %41 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %40, align 8
  %42 = load i64, i64* @MLXSW_PORT_CPU_PORT, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %41, i64 %42
  store %struct.mlxsw_sp_port* %38, %struct.mlxsw_sp_port** %43, align 8
  store i32 0, i32* %2, align 4
  br label %48

44:                                               ; preds = %30
  %45 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %46 = call i32 @kfree(%struct.mlxsw_sp_port* %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %37, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.mlxsw_sp_port* @kzalloc(i32, i32) #1

declare dso_local i32 @mlxsw_core_cpu_port_init(i32, %struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
