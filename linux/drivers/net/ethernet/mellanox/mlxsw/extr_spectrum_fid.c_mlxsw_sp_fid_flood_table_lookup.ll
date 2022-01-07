; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_flood_table_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_flood_table_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_flood_table = type { i32 }
%struct.mlxsw_sp_fid = type { %struct.mlxsw_sp_fid_family* }
%struct.mlxsw_sp_fid_family = type { i32, %struct.mlxsw_sp_flood_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_flood_table* (%struct.mlxsw_sp_fid*, i32)* @mlxsw_sp_fid_flood_table_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_flood_table* @mlxsw_sp_fid_flood_table_lookup(%struct.mlxsw_sp_fid* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_sp_flood_table*, align 8
  %4 = alloca %struct.mlxsw_sp_fid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %9, align 8
  store %struct.mlxsw_sp_fid_family* %10, %struct.mlxsw_sp_fid_family** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %36, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %18, i32 0, i32 1
  %20 = load %struct.mlxsw_sp_flood_table*, %struct.mlxsw_sp_flood_table** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mlxsw_sp_flood_table, %struct.mlxsw_sp_flood_table* %20, i64 %22
  %24 = getelementptr inbounds %struct.mlxsw_sp_flood_table, %struct.mlxsw_sp_flood_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %36

29:                                               ; preds = %17
  %30 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %30, i32 0, i32 1
  %32 = load %struct.mlxsw_sp_flood_table*, %struct.mlxsw_sp_flood_table** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mlxsw_sp_flood_table, %struct.mlxsw_sp_flood_table* %32, i64 %34
  store %struct.mlxsw_sp_flood_table* %35, %struct.mlxsw_sp_flood_table** %3, align 8
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %11

39:                                               ; preds = %11
  store %struct.mlxsw_sp_flood_table* null, %struct.mlxsw_sp_flood_table** %3, align 8
  br label %40

40:                                               ; preds = %39, %29
  %41 = load %struct.mlxsw_sp_flood_table*, %struct.mlxsw_sp_flood_table** %3, align 8
  ret %struct.mlxsw_sp_flood_table* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
