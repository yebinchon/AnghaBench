; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_flood_tables_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_flood_tables_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid_family = type { i32, %struct.mlxsw_sp_flood_table* }
%struct.mlxsw_sp_flood_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_fid_family*)* @mlxsw_sp_fid_flood_tables_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fid_flood_tables_init(%struct.mlxsw_sp_fid_family* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_fid_family*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_flood_table*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp_fid_family* %0, %struct.mlxsw_sp_fid_family** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %3, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_fid_family, %struct.mlxsw_sp_fid_family* %14, i32 0, i32 1
  %16 = load %struct.mlxsw_sp_flood_table*, %struct.mlxsw_sp_flood_table** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mlxsw_sp_flood_table, %struct.mlxsw_sp_flood_table* %16, i64 %18
  store %struct.mlxsw_sp_flood_table* %19, %struct.mlxsw_sp_flood_table** %5, align 8
  %20 = load %struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_fid_family** %3, align 8
  %21 = load %struct.mlxsw_sp_flood_table*, %struct.mlxsw_sp_flood_table** %5, align 8
  %22 = call i32 @mlxsw_sp_fid_flood_table_init(%struct.mlxsw_sp_fid_family* %20, %struct.mlxsw_sp_flood_table* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %32

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %7

31:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @mlxsw_sp_fid_flood_table_init(%struct.mlxsw_sp_fid_family*, %struct.mlxsw_sp_flood_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
