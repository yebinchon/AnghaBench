; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fibmr_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_fibmr_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.mfc_entry_notifier_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp_mr_table = type { i32 }
%struct.mlxsw_sp_vr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mfc_entry_notifier_info*)* @mlxsw_sp_router_fibmr_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_router_fibmr_del(%struct.mlxsw_sp* %0, %struct.mfc_entry_notifier_info* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mfc_entry_notifier_info*, align 8
  %5 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %6 = alloca %struct.mlxsw_sp_vr*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mfc_entry_notifier_info* %1, %struct.mfc_entry_notifier_info** %4, align 8
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %16 = load %struct.mfc_entry_notifier_info*, %struct.mfc_entry_notifier_info** %4, align 8
  %17 = getelementptr inbounds %struct.mfc_entry_notifier_info, %struct.mfc_entry_notifier_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mlxsw_sp_vr* @mlxsw_sp_vr_find(%struct.mlxsw_sp* %15, i32 %18)
  store %struct.mlxsw_sp_vr* %19, %struct.mlxsw_sp_vr** %6, align 8
  %20 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %6, align 8
  %21 = icmp ne %struct.mlxsw_sp_vr* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %42

27:                                               ; preds = %14
  %28 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %6, align 8
  %29 = load %struct.mfc_entry_notifier_info*, %struct.mfc_entry_notifier_info** %4, align 8
  %30 = getelementptr inbounds %struct.mfc_entry_notifier_info, %struct.mfc_entry_notifier_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.mlxsw_sp_mr_table* @mlxsw_sp_router_fibmr_family_to_table(%struct.mlxsw_sp_vr* %28, i32 %32)
  store %struct.mlxsw_sp_mr_table* %33, %struct.mlxsw_sp_mr_table** %5, align 8
  %34 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %5, align 8
  %35 = load %struct.mfc_entry_notifier_info*, %struct.mfc_entry_notifier_info** %4, align 8
  %36 = getelementptr inbounds %struct.mfc_entry_notifier_info, %struct.mfc_entry_notifier_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mlxsw_sp_mr_route_del(%struct.mlxsw_sp_mr_table* %34, i32 %37)
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %40 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %6, align 8
  %41 = call i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp* %39, %struct.mlxsw_sp_vr* %40)
  br label %42

42:                                               ; preds = %27, %26, %13
  ret void
}

declare dso_local %struct.mlxsw_sp_vr* @mlxsw_sp_vr_find(%struct.mlxsw_sp*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.mlxsw_sp_mr_table* @mlxsw_sp_router_fibmr_family_to_table(%struct.mlxsw_sp_vr*, i32) #1

declare dso_local i32 @mlxsw_sp_mr_route_del(%struct.mlxsw_sp_mr_table*, i32) #1

declare dso_local i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
