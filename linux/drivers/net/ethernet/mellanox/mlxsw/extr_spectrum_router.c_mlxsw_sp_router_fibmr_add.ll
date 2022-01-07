; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fibmr_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fibmr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.mfc_entry_notifier_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp_mr_table = type { i32 }
%struct.mlxsw_sp_vr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mfc_entry_notifier_info*, i32)* @mlxsw_sp_router_fibmr_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_router_fibmr_add(%struct.mlxsw_sp* %0, %struct.mfc_entry_notifier_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mfc_entry_notifier_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %9 = alloca %struct.mlxsw_sp_vr*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mfc_entry_notifier_info* %1, %struct.mfc_entry_notifier_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %19 = load %struct.mfc_entry_notifier_info*, %struct.mfc_entry_notifier_info** %6, align 8
  %20 = getelementptr inbounds %struct.mfc_entry_notifier_info, %struct.mfc_entry_notifier_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(%struct.mlxsw_sp* %18, i32 %21, i32* null)
  store %struct.mlxsw_sp_vr* %22, %struct.mlxsw_sp_vr** %9, align 8
  %23 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %9, align 8
  %24 = call i64 @IS_ERR(%struct.mlxsw_sp_vr* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %9, align 8
  %28 = call i32 @PTR_ERR(%struct.mlxsw_sp_vr* %27)
  store i32 %28, i32* %4, align 4
  br label %42

29:                                               ; preds = %17
  %30 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %9, align 8
  %31 = load %struct.mfc_entry_notifier_info*, %struct.mfc_entry_notifier_info** %6, align 8
  %32 = getelementptr inbounds %struct.mfc_entry_notifier_info, %struct.mfc_entry_notifier_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.mlxsw_sp_mr_table* @mlxsw_sp_router_fibmr_family_to_table(%struct.mlxsw_sp_vr* %30, i32 %34)
  store %struct.mlxsw_sp_mr_table* %35, %struct.mlxsw_sp_mr_table** %8, align 8
  %36 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %8, align 8
  %37 = load %struct.mfc_entry_notifier_info*, %struct.mfc_entry_notifier_info** %6, align 8
  %38 = getelementptr inbounds %struct.mfc_entry_notifier_info, %struct.mfc_entry_notifier_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @mlxsw_sp_mr_route_add(%struct.mlxsw_sp_mr_table* %36, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %29, %26, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(%struct.mlxsw_sp*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_vr*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_vr*) #1

declare dso_local %struct.mlxsw_sp_mr_table* @mlxsw_sp_router_fibmr_family_to_table(%struct.mlxsw_sp_vr*, i32) #1

declare dso_local i32 @mlxsw_sp_mr_route_add(%struct.mlxsw_sp_mr_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
