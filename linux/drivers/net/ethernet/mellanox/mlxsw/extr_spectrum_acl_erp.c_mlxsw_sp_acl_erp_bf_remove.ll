; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_bf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_erp.c_mlxsw_sp_acl_erp_bf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { i32 }
%struct.mlxsw_sp_acl_erp_mask = type { i32 }
%struct.mlxsw_sp_acl_atcam_entry = type { i32 }
%struct.objagg_obj = type { i32 }
%struct.mlxsw_sp_acl_erp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_acl_erp_bf_remove(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_erp_mask* %2, %struct.mlxsw_sp_acl_atcam_entry* %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_erp_mask*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_atcam_entry*, align 8
  %9 = alloca %struct.objagg_obj*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_erp*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_atcam_region** %6, align 8
  store %struct.mlxsw_sp_acl_erp_mask* %2, %struct.mlxsw_sp_acl_erp_mask** %7, align 8
  store %struct.mlxsw_sp_acl_atcam_entry* %3, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %12 = load %struct.mlxsw_sp_acl_erp_mask*, %struct.mlxsw_sp_acl_erp_mask** %7, align 8
  %13 = bitcast %struct.mlxsw_sp_acl_erp_mask* %12 to %struct.objagg_obj*
  store %struct.objagg_obj* %13, %struct.objagg_obj** %9, align 8
  %14 = load %struct.objagg_obj*, %struct.objagg_obj** %9, align 8
  %15 = call %struct.mlxsw_sp_acl_erp* @objagg_obj_root_priv(%struct.objagg_obj* %14)
  store %struct.mlxsw_sp_acl_erp* %15, %struct.mlxsw_sp_acl_erp** %10, align 8
  %16 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %10, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @mlxsw_sp_acl_erp_table_is_used(%struct.TYPE_4__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %37

22:                                               ; preds = %4
  %23 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %10, align 8
  %24 = call i32 @mlxsw_sp_acl_erp_bank_get(%struct.mlxsw_sp_acl_erp* %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %26 = load %struct.mlxsw_sp_acl_erp*, %struct.mlxsw_sp_acl_erp** %10, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, %struct.mlxsw_sp_acl_erp* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %36 = call i32 @mlxsw_sp_acl_bf_entry_del(%struct.mlxsw_sp* %25, i32 %32, %struct.mlxsw_sp_acl_atcam_region* %33, i32 %34, %struct.mlxsw_sp_acl_atcam_entry* %35)
  br label %37

37:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.mlxsw_sp_acl_erp* @objagg_obj_root_priv(%struct.objagg_obj*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_table_is_used(%struct.TYPE_4__*) #1

declare dso_local i32 @mlxsw_sp_acl_erp_bank_get(%struct.mlxsw_sp_acl_erp*) #1

declare dso_local i32 @mlxsw_sp_acl_bf_entry_del(%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_acl_atcam_region*, i32, %struct.mlxsw_sp_acl_atcam_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
