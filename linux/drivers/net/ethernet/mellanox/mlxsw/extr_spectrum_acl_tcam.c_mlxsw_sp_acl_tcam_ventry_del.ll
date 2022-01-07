; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_ventry_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl_tcam.c_mlxsw_sp_acl_tcam_ventry_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_tcam_ventry = type { i32, i32, %struct.mlxsw_sp_acl_tcam_vchunk* }
%struct.mlxsw_sp_acl_tcam_vchunk = type { %struct.mlxsw_sp_acl_tcam_vregion* }
%struct.mlxsw_sp_acl_tcam_vregion = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_ventry*)* @mlxsw_sp_acl_tcam_ventry_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_acl_tcam_ventry_del(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_tcam_ventry* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_tcam_ventry*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_tcam_vchunk*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_tcam_vregion*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_acl_tcam_ventry* %1, %struct.mlxsw_sp_acl_tcam_ventry** %4, align 8
  %7 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %4, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %7, i32 0, i32 2
  %9 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %8, align 8
  store %struct.mlxsw_sp_acl_tcam_vchunk* %9, %struct.mlxsw_sp_acl_tcam_vchunk** %5, align 8
  %10 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vchunk, %struct.mlxsw_sp_acl_tcam_vchunk* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %11, align 8
  store %struct.mlxsw_sp_acl_tcam_vregion* %12, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %13 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %5, align 8
  %17 = call i32 @mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed(%struct.mlxsw_sp_acl_tcam_vchunk* %16)
  %18 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %18, i32 0, i32 1
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %22 = load %struct.mlxsw_sp_acl_tcam_ventry*, %struct.mlxsw_sp_acl_tcam_ventry** %4, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_ventry, %struct.mlxsw_sp_acl_tcam_ventry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mlxsw_sp_acl_tcam_entry_destroy(%struct.mlxsw_sp* %21, i32 %24)
  %26 = load %struct.mlxsw_sp_acl_tcam_vregion*, %struct.mlxsw_sp_acl_tcam_vregion** %6, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_vregion, %struct.mlxsw_sp_acl_tcam_vregion* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %30 = load %struct.mlxsw_sp_acl_tcam_vchunk*, %struct.mlxsw_sp_acl_tcam_vchunk** %5, align 8
  %31 = call i32 @mlxsw_sp_acl_tcam_vchunk_put(%struct.mlxsw_sp* %29, %struct.mlxsw_sp_acl_tcam_vchunk* %30)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed(%struct.mlxsw_sp_acl_tcam_vchunk*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_entry_destroy(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlxsw_sp_acl_tcam_vchunk_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_tcam_vchunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
