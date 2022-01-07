; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_locate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_table = type { i32, %struct.mlxsw_sp_acl_erp_core* }
%struct.mlxsw_sp_acl_erp_core = type { i32 }
%struct.mlxsw_sp_acl_erp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp*, i32*, i32*)* @mlxsw_sp_acl_erp_table_locate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_erp_table_locate(%struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_erp*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_acl_erp_core*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_table** %5, align 8
  store %struct.mlxsw_sp_acl_erp* %1, %struct.mlxsw_sp_acl_erp** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %5, align 8
  %13 = call i32 @mlxsw_sp_acl_erp_table_entry_size(%struct.mlxsw_sp_acl_erp_table* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %14, i32 0, i32 1
  %16 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %15, align 8
  store %struct.mlxsw_sp_acl_erp_core* %16, %struct.mlxsw_sp_acl_erp_core** %10, align 8
  %17 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %10, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %19, %22
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %6, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %10, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, %struct.mlxsw_sp_acl_erp_core* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %27, %30
  store i32 %31, i32* %11, align 4
  %32 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %5, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul i32 %35, %36
  %38 = add i32 %34, %37
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  ret void
}

declare dso_local i32 @mlxsw_sp_acl_erp_table_entry_size(%struct.mlxsw_sp_acl_erp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
