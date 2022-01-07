; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_acl_tcam.c_mlxsw_sp1_acl_ctcam_region_entry_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_acl_tcam.c_mlxsw_sp1_acl_ctcam_region_entry_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_ctcam_region = type { i32 }
%struct.mlxsw_sp_acl_ctcam_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_acl_ctcam_region*, %struct.mlxsw_sp_acl_ctcam_entry*, i8*)* @mlxsw_sp1_acl_ctcam_region_entry_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_acl_ctcam_region_entry_insert(%struct.mlxsw_sp_acl_ctcam_region* %0, %struct.mlxsw_sp_acl_ctcam_entry* %1, i8* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_acl_ctcam_region*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_ctcam_entry*, align 8
  %6 = alloca i8*, align 8
  store %struct.mlxsw_sp_acl_ctcam_region* %0, %struct.mlxsw_sp_acl_ctcam_region** %4, align 8
  store %struct.mlxsw_sp_acl_ctcam_entry* %1, %struct.mlxsw_sp_acl_ctcam_entry** %5, align 8
  store i8* %2, i8** %6, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
