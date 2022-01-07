; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_table_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_table_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_mr_table = type { i32, i32, i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_mr* }
%struct.mlxsw_sp_mr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxsw_sp*, i32, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_mr_table_destroy(%struct.mlxsw_sp_mr_table* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_mr*, align 8
  store %struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_table** %2, align 8
  %5 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %2, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %5, i32 0, i32 3
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp* %7, %struct.mlxsw_sp** %3, align 8
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %9, align 8
  store %struct.mlxsw_sp_mr* %10, %struct.mlxsw_sp_mr** %4, align 8
  %11 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %2, align 8
  %12 = call i32 @mlxsw_sp_mr_table_empty(%struct.mlxsw_sp_mr_table* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %2, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %17, i32 0, i32 2
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_mr, %struct.mlxsw_sp_mr* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.mlxsw_sp*, i32, i32*)*, i32 (%struct.mlxsw_sp*, i32, i32*)** %23, align 8
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %26 = load %struct.mlxsw_sp_mr*, %struct.mlxsw_sp_mr** %4, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_mr, %struct.mlxsw_sp_mr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %2, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %29, i32 0, i32 1
  %31 = call i32 %24(%struct.mlxsw_sp* %25, i32 %28, i32* %30)
  %32 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %2, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %32, i32 0, i32 0
  %34 = call i32 @rhashtable_destroy(i32* %33)
  %35 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %2, align 8
  %36 = call i32 @kfree(%struct.mlxsw_sp_mr_table* %35)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_mr_table_empty(%struct.mlxsw_sp_mr_table*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_mr_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
