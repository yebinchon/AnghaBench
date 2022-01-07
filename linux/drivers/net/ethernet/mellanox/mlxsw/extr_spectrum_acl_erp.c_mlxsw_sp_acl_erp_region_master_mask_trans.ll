; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_region_master_mask_trans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_region_master_mask_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_table = type { i32, %struct.TYPE_2__*, i32, i32, %struct.mlxsw_sp_acl_erp_core* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_acl_erp_core = type { i32 }
%struct.mlxsw_sp_acl_erp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_erp_table*)* @mlxsw_sp_acl_erp_region_master_mask_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_erp_region_master_mask_trans(%struct.mlxsw_sp_acl_erp_table* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %3 = alloca %struct.mlxsw_sp_acl_erp_core*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_erp*, align 8
  store %struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_table** %2, align 8
  %5 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %2, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %5, i32 0, i32 4
  %7 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %6, align 8
  store %struct.mlxsw_sp_acl_erp_core* %7, %struct.mlxsw_sp_acl_erp_core** %3, align 8
  %8 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %2, align 8
  %9 = call i32 @mlxsw_sp_acl_erp_table_disable(%struct.mlxsw_sp_acl_erp_table* %8)
  %10 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %2, align 8
  %11 = call %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_table_master_rp(%struct.mlxsw_sp_acl_erp_table* %10)
  store %struct.mlxsw_sp_acl_erp* %11, %struct.mlxsw_sp_acl_erp** %4, align 8
  %12 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %13 = icmp ne %struct.mlxsw_sp_acl_erp* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %2, align 8
  %17 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %18 = call i32 @mlxsw_acl_erp_table_bf_del(%struct.mlxsw_sp_acl_erp_table* %16, %struct.mlxsw_sp_acl_erp* %17)
  %19 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %20 = call i32 @mlxsw_sp_acl_erp_table_erp_del(%struct.mlxsw_sp_acl_erp* %19)
  %21 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %2, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__clear_bit(i32 %23, i32 %26)
  %28 = load %struct.mlxsw_sp_acl_erp_core*, %struct.mlxsw_sp_acl_erp_core** %3, align 8
  %29 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %2, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %2, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %2, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @mlxsw_sp_acl_erp_table_free(%struct.mlxsw_sp_acl_erp_core* %28, i32 %31, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @mlxsw_sp_acl_erp_table_disable(%struct.mlxsw_sp_acl_erp_table*) #1

declare dso_local %struct.mlxsw_sp_acl_erp* @mlxsw_sp_acl_erp_table_master_rp(%struct.mlxsw_sp_acl_erp_table*) #1

declare dso_local i32 @mlxsw_acl_erp_table_bf_del(%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_erp_del(%struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_free(%struct.mlxsw_sp_acl_erp_core*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
