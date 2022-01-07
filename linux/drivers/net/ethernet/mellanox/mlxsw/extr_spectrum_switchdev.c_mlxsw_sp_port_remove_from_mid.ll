; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_remove_from_mid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_remove_from_mid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_mid = type { %struct.mlxsw_sp_mid*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_mid*)* @mlxsw_sp_port_remove_from_mid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_remove_from_mid(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_mid* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.mlxsw_sp_mid*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  store %struct.mlxsw_sp_mid* %1, %struct.mlxsw_sp_mid** %4, align 8
  %7 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %7, i32 0, i32 1
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  store %struct.mlxsw_sp* %9, %struct.mlxsw_sp** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %4, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %14, align 8
  %16 = call i32 @clear_bit(i32 %12, %struct.mlxsw_sp_mid* %15)
  %17 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %17, i32 0, i32 0
  %19 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %18, align 8
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mlxsw_core_max_ports(i32 %22)
  %24 = call i64 @bitmap_empty(%struct.mlxsw_sp_mid* %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %28 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %4, align 8
  %29 = call i32 @mlxsw_sp_mc_remove_mdb_entry(%struct.mlxsw_sp* %27, %struct.mlxsw_sp_mid* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %4, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %30, i32 0, i32 1
  %32 = call i32 @list_del(i32* %31)
  %33 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %4, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_mid, %struct.mlxsw_sp_mid* %33, i32 0, i32 0
  %35 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %34, align 8
  %36 = call i32 @kfree(%struct.mlxsw_sp_mid* %35)
  %37 = load %struct.mlxsw_sp_mid*, %struct.mlxsw_sp_mid** %4, align 8
  %38 = call i32 @kfree(%struct.mlxsw_sp_mid* %37)
  br label %39

39:                                               ; preds = %26, %2
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @clear_bit(i32, %struct.mlxsw_sp_mid*) #1

declare dso_local i64 @bitmap_empty(%struct.mlxsw_sp_mid*, i32) #1

declare dso_local i32 @mlxsw_core_max_ports(i32) #1

declare dso_local i32 @mlxsw_sp_mc_remove_mdb_entry(%struct.mlxsw_sp*, %struct.mlxsw_sp_mid*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_mid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
