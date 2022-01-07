; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_group_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_group_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_tcam_group = type { i32, i32, i32, %struct.mlxsw_sp_acl_tcam* }
%struct.mlxsw_sp_acl_tcam = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_tcam_group*)* @mlxsw_sp_acl_tcam_group_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_tcam_group_del(%struct.mlxsw_sp_acl_tcam_group* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_acl_tcam_group*, align 8
  %3 = alloca %struct.mlxsw_sp_acl_tcam*, align 8
  store %struct.mlxsw_sp_acl_tcam_group* %0, %struct.mlxsw_sp_acl_tcam_group** %2, align 8
  %4 = load %struct.mlxsw_sp_acl_tcam_group*, %struct.mlxsw_sp_acl_tcam_group** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, %struct.mlxsw_sp_acl_tcam_group* %4, i32 0, i32 3
  %6 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %5, align 8
  store %struct.mlxsw_sp_acl_tcam* %6, %struct.mlxsw_sp_acl_tcam** %3, align 8
  %7 = load %struct.mlxsw_sp_acl_tcam_group*, %struct.mlxsw_sp_acl_tcam_group** %2, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, %struct.mlxsw_sp_acl_tcam_group* %7, i32 0, i32 2
  %9 = call i32 @mutex_destroy(i32* %8)
  %10 = load %struct.mlxsw_sp_acl_tcam*, %struct.mlxsw_sp_acl_tcam** %3, align 8
  %11 = load %struct.mlxsw_sp_acl_tcam_group*, %struct.mlxsw_sp_acl_tcam_group** %2, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, %struct.mlxsw_sp_acl_tcam_group* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mlxsw_sp_acl_tcam_group_id_put(%struct.mlxsw_sp_acl_tcam* %10, i32 %13)
  %15 = load %struct.mlxsw_sp_acl_tcam_group*, %struct.mlxsw_sp_acl_tcam_group** %2, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_group, %struct.mlxsw_sp_acl_tcam_group* %15, i32 0, i32 0
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  ret void
}

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_group_id_put(%struct.mlxsw_sp_acl_tcam*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
