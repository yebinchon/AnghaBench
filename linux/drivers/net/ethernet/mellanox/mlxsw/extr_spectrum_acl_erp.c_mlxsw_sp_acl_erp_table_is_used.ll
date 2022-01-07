; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_is_used.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_table_is_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_table = type { i32* }

@erp_single_mask_ops = common dso_local global i32 0, align 4
@erp_no_mask_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_erp_table*)* @mlxsw_sp_acl_erp_table_is_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_acl_erp_table_is_used(%struct.mlxsw_sp_acl_erp_table* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  store %struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_table** %2, align 8
  %3 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %2, align 8
  %4 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, @erp_single_mask_ops
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %2, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, @erp_no_mask_ops
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ false, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
