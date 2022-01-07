; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_flood_ip_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_flood_ip_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fid = type { i32 }
%union.mlxsw_sp_l3addr = type { i32 }
%struct.mlxsw_sp_nve_mc_list_key = type { i32, i32 }
%struct.mlxsw_sp_nve_mc_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_nve_flood_ip_add(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fid* %1, i32 %2, %union.mlxsw_sp_l3addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.mlxsw_sp_fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.mlxsw_sp_l3addr*, align 8
  %10 = alloca %struct.mlxsw_sp_nve_mc_list_key, align 4
  %11 = alloca %struct.mlxsw_sp_nve_mc_list*, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.mlxsw_sp_fid* %1, %struct.mlxsw_sp_fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.mlxsw_sp_l3addr* %3, %union.mlxsw_sp_l3addr** %9, align 8
  %13 = bitcast %struct.mlxsw_sp_nve_mc_list_key* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %7, align 8
  %15 = call i32 @mlxsw_sp_fid_index(%struct.mlxsw_sp_fid* %14)
  %16 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_list_key, %struct.mlxsw_sp_nve_mc_list_key* %10, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %18 = call %struct.mlxsw_sp_nve_mc_list* @mlxsw_sp_nve_mc_list_get(%struct.mlxsw_sp* %17, %struct.mlxsw_sp_nve_mc_list_key* %10)
  store %struct.mlxsw_sp_nve_mc_list* %18, %struct.mlxsw_sp_nve_mc_list** %11, align 8
  %19 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %11, align 8
  %20 = call i64 @IS_ERR(%struct.mlxsw_sp_nve_mc_list* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %11, align 8
  %24 = call i32 @PTR_ERR(%struct.mlxsw_sp_nve_mc_list* %23)
  store i32 %24, i32* %5, align 4
  br label %53

25:                                               ; preds = %4
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %27 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %11, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %union.mlxsw_sp_l3addr*, %union.mlxsw_sp_l3addr** %9, align 8
  %30 = call i32 @mlxsw_sp_nve_mc_list_ip_add(%struct.mlxsw_sp* %26, %struct.mlxsw_sp_nve_mc_list* %27, i32 %28, %union.mlxsw_sp_l3addr* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %48

34:                                               ; preds = %25
  %35 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %7, align 8
  %36 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %11, align 8
  %37 = call i32 @mlxsw_sp_nve_fid_flood_index_set(%struct.mlxsw_sp_fid* %35, %struct.mlxsw_sp_nve_mc_list* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %53

42:                                               ; preds = %40
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %44 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %11, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %union.mlxsw_sp_l3addr*, %union.mlxsw_sp_l3addr** %9, align 8
  %47 = call i32 @mlxsw_sp_nve_mc_list_ip_del(%struct.mlxsw_sp* %43, %struct.mlxsw_sp_nve_mc_list* %44, i32 %45, %union.mlxsw_sp_l3addr* %46)
  br label %48

48:                                               ; preds = %42, %33
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %50 = load %struct.mlxsw_sp_nve_mc_list*, %struct.mlxsw_sp_nve_mc_list** %11, align 8
  %51 = call i32 @mlxsw_sp_nve_mc_list_put(%struct.mlxsw_sp* %49, %struct.mlxsw_sp_nve_mc_list* %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %48, %41, %22
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlxsw_sp_fid_index(%struct.mlxsw_sp_fid*) #2

declare dso_local %struct.mlxsw_sp_nve_mc_list* @mlxsw_sp_nve_mc_list_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_mc_list_key*) #2

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_nve_mc_list*) #2

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_nve_mc_list*) #2

declare dso_local i32 @mlxsw_sp_nve_mc_list_ip_add(%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_mc_list*, i32, %union.mlxsw_sp_l3addr*) #2

declare dso_local i32 @mlxsw_sp_nve_fid_flood_index_set(%struct.mlxsw_sp_fid*, %struct.mlxsw_sp_nve_mc_list*) #2

declare dso_local i32 @mlxsw_sp_nve_mc_list_ip_del(%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_mc_list*, i32, %union.mlxsw_sp_l3addr*) #2

declare dso_local i32 @mlxsw_sp_nve_mc_list_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_nve_mc_list*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
