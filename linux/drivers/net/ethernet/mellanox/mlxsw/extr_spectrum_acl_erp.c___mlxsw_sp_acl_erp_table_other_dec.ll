; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c___mlxsw_sp_acl_erp_table_other_dec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c___mlxsw_sp_acl_erp_table_other_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_table = type { i64, i64, i32, i32*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@erp_two_masks_ops = common dso_local global i32 0, align 4
@erp_single_mask_ops = common dso_local global i32 0, align 4
@erp_no_mask_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_erp_table*, i32*)* @__mlxsw_sp_acl_erp_table_other_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mlxsw_sp_acl_erp_table_other_dec(%struct.mlxsw_sp_acl_erp_table* %0, i32* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %4 = alloca i32*, align 8
  store %struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, i32* %5, align 4
  %8 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  br label %51

18:                                               ; preds = %12
  %19 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %50 [
    i32 2, label %22
    i32 1, label %25
    i32 0, label %30
  ]

22:                                               ; preds = %18
  %23 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %23, i32 0, i32 3
  store i32* @erp_two_masks_ops, i32** %24, align 8
  br label %51

25:                                               ; preds = %18
  %26 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %27 = call i32 @mlxsw_sp_acl_erp_region_master_mask_trans(%struct.mlxsw_sp_acl_erp_table* %26)
  %28 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %28, i32 0, i32 3
  store i32* @erp_single_mask_ops, i32** %29, align 8
  br label %51

30:                                               ; preds = %18
  %31 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %32 = call i32 @mlxsw_sp_acl_erp_table_disable(%struct.mlxsw_sp_acl_erp_table* %31)
  %33 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %39, i32 0, i32 5
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mlxsw_sp_acl_erp_table_free(i32 %35, i32 %38, i32 %43, i32 %46)
  %48 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %48, i32 0, i32 3
  store i32* @erp_no_mask_ops, i32** %49, align 8
  br label %51

50:                                               ; preds = %18
  br label %51

51:                                               ; preds = %17, %50, %30, %25, %22
  ret void
}

declare dso_local i32 @mlxsw_sp_acl_erp_region_master_mask_trans(%struct.mlxsw_sp_acl_erp_table*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_disable(%struct.mlxsw_sp_acl_erp_table*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_free(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
