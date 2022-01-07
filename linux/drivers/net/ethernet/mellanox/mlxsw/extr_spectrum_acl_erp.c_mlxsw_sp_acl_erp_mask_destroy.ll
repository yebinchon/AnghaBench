; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_mask_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_mask_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_erp_table = type { i32, i64, i64, i32* }
%struct.mlxsw_sp_acl_erp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@erp_two_masks_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp*)* @mlxsw_sp_acl_erp_mask_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_erp_mask_destroy(%struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_erp_table*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_erp*, align 8
  store %struct.mlxsw_sp_acl_erp_table* %0, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  store %struct.mlxsw_sp_acl_erp* %1, %struct.mlxsw_sp_acl_erp** %4, align 8
  %5 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  call void @mlxsw_sp_acl_erp_ctcam_mask_destroy(%struct.mlxsw_sp_acl_erp* %11)
  br label %41

12:                                               ; preds = %2
  %13 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %14 = call i32 @mlxsw_sp_acl_erp_region_erp_del(%struct.mlxsw_sp_acl_erp* %13)
  %15 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %16 = call i32 @mlxsw_sp_acl_erp_table_erp_del(%struct.mlxsw_sp_acl_erp* %15)
  %17 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %18 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mlxsw_sp_acl_erp_index_put(%struct.mlxsw_sp_acl_erp_table* %17, i32 %20)
  %22 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %4, align 8
  %23 = call i32 @mlxsw_sp_acl_erp_generic_destroy(%struct.mlxsw_sp_acl_erp* %22)
  %24 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %41

28:                                               ; preds = %12
  %29 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.mlxsw_sp_acl_erp_table*, %struct.mlxsw_sp_acl_erp_table** %3, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, %struct.mlxsw_sp_acl_erp_table* %39, i32 0, i32 3
  store i32* @erp_two_masks_ops, i32** %40, align 8
  br label %41

41:                                               ; preds = %10, %38, %33, %28, %12
  ret void
}

declare dso_local void @mlxsw_sp_acl_erp_ctcam_mask_destroy(%struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_region_erp_del(%struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_erp_del(%struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_index_put(%struct.mlxsw_sp_acl_erp_table*, i32) #1

declare dso_local i32 @mlxsw_sp_acl_erp_generic_destroy(%struct.mlxsw_sp_acl_erp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
