; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_port_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_port_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_m = type { i32, %struct.mlxsw_m_port** }
%struct.mlxsw_m_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_m*, i64)* @mlxsw_m_port_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_m_port_remove(%struct.mlxsw_m* %0, i64 %1) #0 {
  %3 = alloca %struct.mlxsw_m*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mlxsw_m_port*, align 8
  store %struct.mlxsw_m* %0, %struct.mlxsw_m** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %6, i32 0, i32 1
  %8 = load %struct.mlxsw_m_port**, %struct.mlxsw_m_port*** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %8, i64 %9
  %11 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %10, align 8
  store %struct.mlxsw_m_port* %11, %struct.mlxsw_m_port** %5, align 8
  %12 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %17 = call i32 @mlxsw_core_port_clear(i32 %14, i64 %15, %struct.mlxsw_m* %16)
  %18 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %5, align 8
  %19 = getelementptr inbounds %struct.mlxsw_m_port, %struct.mlxsw_m_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @unregister_netdev(i32 %20)
  %22 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %23 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %22, i32 0, i32 1
  %24 = load %struct.mlxsw_m_port**, %struct.mlxsw_m_port*** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %24, i64 %25
  store %struct.mlxsw_m_port* null, %struct.mlxsw_m_port** %26, align 8
  %27 = load %struct.mlxsw_m_port*, %struct.mlxsw_m_port** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_m_port, %struct.mlxsw_m_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @free_netdev(i32 %29)
  %31 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %32 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @mlxsw_core_port_fini(i32 %33, i64 %34)
  ret void
}

declare dso_local i32 @mlxsw_core_port_clear(i32, i64, %struct.mlxsw_m*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @mlxsw_core_port_fini(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
