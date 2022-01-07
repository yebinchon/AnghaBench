; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_list_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_list_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nve_mc_list = type { i32, %struct.mlxsw_sp_nve_mc_list_key, i32 }
%struct.mlxsw_sp_nve_mc_list_key = type { i32 }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_nve* }
%struct.mlxsw_sp_nve = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_nve_mc_list_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_nve_mc_list* (%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_mc_list_key*)* @mlxsw_sp_nve_mc_list_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_nve_mc_list* @mlxsw_sp_nve_mc_list_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_nve_mc_list_key* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_nve_mc_list*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_nve_mc_list_key*, align 8
  %6 = alloca %struct.mlxsw_sp_nve*, align 8
  %7 = alloca %struct.mlxsw_sp_nve_mc_list*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_nve_mc_list_key* %1, %struct.mlxsw_sp_nve_mc_list_key** %5, align 8
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %9, i32 0, i32 0
  %11 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %10, align 8
  store %struct.mlxsw_sp_nve* %11, %struct.mlxsw_sp_nve** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mlxsw_sp_nve_mc_list* @kmalloc(i32 12, i32 %12)
  store %struct.mlxsw_sp_nve_mc_list* %13, %struct.mlxsw_sp_nve_mc_list** %7, align 8
  %14 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %7, align 8
  %15 = icmp ne %struct.mlxsw_sp_nve_mc_list* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.mlxsw_sp_nve_mc_list* @ERR_PTR(i32 %18)
  store %struct.mlxsw_sp_nve_mc_list* %19, %struct.mlxsw_sp_nve_mc_list** %3, align 8
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %7, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_list, %struct.mlxsw_sp_nve_mc_list* %21, i32 0, i32 2
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %7, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_list, %struct.mlxsw_sp_nve_mc_list* %24, i32 0, i32 1
  %26 = load %struct.mlxsw_sp_nve_mc_list_key*, %struct.mlxsw_sp_nve_mc_list_key** %5, align 8
  %27 = bitcast %struct.mlxsw_sp_nve_mc_list_key* %25 to i8*
  %28 = bitcast %struct.mlxsw_sp_nve_mc_list_key* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %6, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %29, i32 0, i32 0
  %31 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %7, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_list, %struct.mlxsw_sp_nve_mc_list* %31, i32 0, i32 0
  %33 = load i32, i32* @mlxsw_sp_nve_mc_list_ht_params, align 4
  %34 = call i32 @rhashtable_insert_fast(i32* %30, i32* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  br label %40

38:                                               ; preds = %20
  %39 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %7, align 8
  store %struct.mlxsw_sp_nve_mc_list* %39, %struct.mlxsw_sp_nve_mc_list** %3, align 8
  br label %45

40:                                               ; preds = %37
  %41 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %7, align 8
  %42 = call i32 @kfree(%struct.mlxsw_sp_nve_mc_list* %41)
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.mlxsw_sp_nve_mc_list* @ERR_PTR(i32 %43)
  store %struct.mlxsw_sp_nve_mc_list* %44, %struct.mlxsw_sp_nve_mc_list** %3, align 8
  br label %45

45:                                               ; preds = %40, %38, %16
  %46 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %3, align 8
  ret %struct.mlxsw_sp_nve_mc_list* %46
}

declare dso_local %struct.mlxsw_sp_nve_mc_list* @kmalloc(i32, i32) #1

declare dso_local %struct.mlxsw_sp_nve_mc_list* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_nve_mc_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
