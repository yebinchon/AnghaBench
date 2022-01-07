; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_cpu_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_cpu_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_port**, i32 }
%struct.mlxsw_sp_port = type { i32 }

@MLXSW_PORT_CPU_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*)* @mlxsw_sp_cpu_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_cpu_port_remove(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  %4 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %4, i32 0, i32 0
  %6 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %5, align 8
  %7 = load i64, i64* @MLXSW_PORT_CPU_PORT, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, i64 %7
  %9 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  store %struct.mlxsw_sp_port* %9, %struct.mlxsw_sp_port** %3, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mlxsw_core_cpu_port_fini(i32 %12)
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %15, align 8
  %17 = load i64, i64* @MLXSW_PORT_CPU_PORT, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %16, i64 %17
  store %struct.mlxsw_sp_port* null, %struct.mlxsw_sp_port** %18, align 8
  %19 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %20 = call i32 @kfree(%struct.mlxsw_sp_port* %19)
  ret void
}

declare dso_local i32 @mlxsw_core_cpu_port_fini(i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
