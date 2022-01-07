; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_fwd_entry_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_fwd_entry_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_fwd_entry = type { i32 }
%struct.mlxsw_afa = type { i32 }
%struct.mlxsw_afa_fwd_entry_ht_key = type { i32, i32 }

@mlxsw_afa_fwd_entry_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_afa_fwd_entry* (%struct.mlxsw_afa*, i32)* @mlxsw_afa_fwd_entry_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_afa_fwd_entry* @mlxsw_afa_fwd_entry_get(%struct.mlxsw_afa* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_afa_fwd_entry*, align 8
  %4 = alloca %struct.mlxsw_afa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_afa_fwd_entry_ht_key, align 4
  %7 = alloca %struct.mlxsw_afa_fwd_entry*, align 8
  store %struct.mlxsw_afa* %0, %struct.mlxsw_afa** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast %struct.mlxsw_afa_fwd_entry_ht_key* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.mlxsw_afa_fwd_entry_ht_key, %struct.mlxsw_afa_fwd_entry_ht_key* %6, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %11, i32 0, i32 0
  %13 = load i32, i32* @mlxsw_afa_fwd_entry_ht_params, align 4
  %14 = call %struct.mlxsw_afa_fwd_entry* @rhashtable_lookup_fast(i32* %12, %struct.mlxsw_afa_fwd_entry_ht_key* %6, i32 %13)
  store %struct.mlxsw_afa_fwd_entry* %14, %struct.mlxsw_afa_fwd_entry** %7, align 8
  %15 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %7, align 8
  %16 = icmp ne %struct.mlxsw_afa_fwd_entry* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %7, align 8
  %19 = getelementptr inbounds %struct.mlxsw_afa_fwd_entry, %struct.mlxsw_afa_fwd_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %7, align 8
  store %struct.mlxsw_afa_fwd_entry* %22, %struct.mlxsw_afa_fwd_entry** %3, align 8
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.mlxsw_afa_fwd_entry* @mlxsw_afa_fwd_entry_create(%struct.mlxsw_afa* %24, i32 %25)
  store %struct.mlxsw_afa_fwd_entry* %26, %struct.mlxsw_afa_fwd_entry** %3, align 8
  br label %27

27:                                               ; preds = %23, %17
  %28 = load %struct.mlxsw_afa_fwd_entry*, %struct.mlxsw_afa_fwd_entry** %3, align 8
  ret %struct.mlxsw_afa_fwd_entry* %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlxsw_afa_fwd_entry* @rhashtable_lookup_fast(i32*, %struct.mlxsw_afa_fwd_entry_ht_key*, i32) #2

declare dso_local %struct.mlxsw_afa_fwd_entry* @mlxsw_afa_fwd_entry_create(%struct.mlxsw_afa*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
