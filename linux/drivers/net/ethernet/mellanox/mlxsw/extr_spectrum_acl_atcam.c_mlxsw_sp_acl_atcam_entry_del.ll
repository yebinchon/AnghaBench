; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_entry_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_atcam.c_mlxsw_sp_acl_atcam_entry_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_atcam_region = type { i32 }
%struct.mlxsw_sp_acl_atcam_chunk = type { i32 }
%struct.mlxsw_sp_acl_atcam_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_acl_atcam_entry_del(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_atcam_chunk* %2, %struct.mlxsw_sp_acl_atcam_entry* %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_atcam_region*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_atcam_chunk*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_atcam_entry*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_acl_atcam_region* %1, %struct.mlxsw_sp_acl_atcam_region** %6, align 8
  store %struct.mlxsw_sp_acl_atcam_chunk* %2, %struct.mlxsw_sp_acl_atcam_chunk** %7, align 8
  store %struct.mlxsw_sp_acl_atcam_entry* %3, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %9 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %10 = call i64 @mlxsw_sp_acl_atcam_is_centry(%struct.mlxsw_sp_acl_atcam_entry* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %14 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, %struct.mlxsw_sp_acl_atcam_region* %14, i32 0, i32 0
  %16 = load %struct.mlxsw_sp_acl_atcam_chunk*, %struct.mlxsw_sp_acl_atcam_chunk** %7, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_chunk, %struct.mlxsw_sp_acl_atcam_chunk* %16, i32 0, i32 0
  %18 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_entry, %struct.mlxsw_sp_acl_atcam_entry* %18, i32 0, i32 0
  %20 = call i32 @mlxsw_sp_acl_ctcam_entry_del(%struct.mlxsw_sp* %13, i32* %15, i32* %17, i32* %19)
  br label %26

21:                                               ; preds = %4
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %23 = load %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_region** %6, align 8
  %24 = load %struct.mlxsw_sp_acl_atcam_entry*, %struct.mlxsw_sp_acl_atcam_entry** %8, align 8
  %25 = call i32 @__mlxsw_sp_acl_atcam_entry_del(%struct.mlxsw_sp* %22, %struct.mlxsw_sp_acl_atcam_region* %23, %struct.mlxsw_sp_acl_atcam_entry* %24)
  br label %26

26:                                               ; preds = %21, %12
  ret void
}

declare dso_local i64 @mlxsw_sp_acl_atcam_is_centry(%struct.mlxsw_sp_acl_atcam_entry*) #1

declare dso_local i32 @mlxsw_sp_acl_ctcam_entry_del(%struct.mlxsw_sp*, i32*, i32*, i32*) #1

declare dso_local i32 @__mlxsw_sp_acl_atcam_entry_del(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_atcam_region*, %struct.mlxsw_sp_acl_atcam_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
