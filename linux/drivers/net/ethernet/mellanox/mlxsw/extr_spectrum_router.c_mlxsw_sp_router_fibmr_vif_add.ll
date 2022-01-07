; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fibmr_vif_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fibmr_vif_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.vif_entry_notifier_info = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp_mr_table = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }
%struct.mlxsw_sp_vr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.vif_entry_notifier_info*)* @mlxsw_sp_router_fibmr_vif_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_router_fibmr_vif_add(%struct.mlxsw_sp* %0, %struct.vif_entry_notifier_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.vif_entry_notifier_info*, align 8
  %6 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %7 = alloca %struct.mlxsw_sp_rif*, align 8
  %8 = alloca %struct.mlxsw_sp_vr*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.vif_entry_notifier_info* %1, %struct.vif_entry_notifier_info** %5, align 8
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %18 = load %struct.vif_entry_notifier_info*, %struct.vif_entry_notifier_info** %5, align 8
  %19 = getelementptr inbounds %struct.vif_entry_notifier_info, %struct.vif_entry_notifier_info* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(%struct.mlxsw_sp* %17, i32 %20, i32* null)
  store %struct.mlxsw_sp_vr* %21, %struct.mlxsw_sp_vr** %8, align 8
  %22 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %23 = call i64 @IS_ERR(%struct.mlxsw_sp_vr* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %27 = call i32 @PTR_ERR(%struct.mlxsw_sp_vr* %26)
  store i32 %27, i32* %3, align 4
  br label %52

28:                                               ; preds = %16
  %29 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %30 = load %struct.vif_entry_notifier_info*, %struct.vif_entry_notifier_info** %5, align 8
  %31 = getelementptr inbounds %struct.vif_entry_notifier_info, %struct.vif_entry_notifier_info* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.mlxsw_sp_mr_table* @mlxsw_sp_router_fibmr_family_to_table(%struct.mlxsw_sp_vr* %29, i32 %33)
  store %struct.mlxsw_sp_mr_table* %34, %struct.mlxsw_sp_mr_table** %6, align 8
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %36 = load %struct.vif_entry_notifier_info*, %struct.vif_entry_notifier_info** %5, align 8
  %37 = getelementptr inbounds %struct.vif_entry_notifier_info, %struct.vif_entry_notifier_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %35, i32 %38)
  store %struct.mlxsw_sp_rif* %39, %struct.mlxsw_sp_rif** %7, align 8
  %40 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %6, align 8
  %41 = load %struct.vif_entry_notifier_info*, %struct.vif_entry_notifier_info** %5, align 8
  %42 = getelementptr inbounds %struct.vif_entry_notifier_info, %struct.vif_entry_notifier_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vif_entry_notifier_info*, %struct.vif_entry_notifier_info** %5, align 8
  %45 = getelementptr inbounds %struct.vif_entry_notifier_info, %struct.vif_entry_notifier_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vif_entry_notifier_info*, %struct.vif_entry_notifier_info** %5, align 8
  %48 = getelementptr inbounds %struct.vif_entry_notifier_info, %struct.vif_entry_notifier_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %7, align 8
  %51 = call i32 @mlxsw_sp_mr_vif_add(%struct.mlxsw_sp_mr_table* %40, i32 %43, i32 %46, i32 %49, %struct.mlxsw_sp_rif* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %28, %25, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(%struct.mlxsw_sp*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_vr*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_vr*) #1

declare dso_local %struct.mlxsw_sp_mr_table* @mlxsw_sp_router_fibmr_family_to_table(%struct.mlxsw_sp_vr*, i32) #1

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_mr_vif_add(%struct.mlxsw_sp_mr_table*, i32, i32, i32, %struct.mlxsw_sp_rif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
