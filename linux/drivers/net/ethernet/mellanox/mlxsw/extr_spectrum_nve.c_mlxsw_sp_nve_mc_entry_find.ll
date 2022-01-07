; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_entry_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_entry_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nve_mc_entry = type { i32 }
%struct.mlxsw_sp_nve_mc_record = type { i64, %struct.TYPE_3__*, %struct.mlxsw_sp_nve_mc_entry*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*, %union.mlxsw_sp_l3addr*)* }
%struct.TYPE_4__ = type { %struct.mlxsw_sp_nve* }
%struct.mlxsw_sp_nve = type { i32* }
%union.mlxsw_sp_l3addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_nve_mc_entry* (%struct.mlxsw_sp_nve_mc_record*, %union.mlxsw_sp_l3addr*)* @mlxsw_sp_nve_mc_entry_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_nve_mc_entry* @mlxsw_sp_nve_mc_entry_find(%struct.mlxsw_sp_nve_mc_record* %0, %union.mlxsw_sp_l3addr* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_nve_mc_entry*, align 8
  %4 = alloca %struct.mlxsw_sp_nve_mc_record*, align 8
  %5 = alloca %union.mlxsw_sp_l3addr*, align 8
  %6 = alloca %struct.mlxsw_sp_nve*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp_nve_mc_entry*, align 8
  store %struct.mlxsw_sp_nve_mc_record* %0, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  store %union.mlxsw_sp_l3addr* %1, %union.mlxsw_sp_l3addr** %5, align 8
  %10 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %13, align 8
  store %struct.mlxsw_sp_nve* %14, %struct.mlxsw_sp_nve** %6, align 8
  %15 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %53, %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %28, i32 0, i32 2
  %30 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_entry, %struct.mlxsw_sp_nve_mc_entry* %30, i64 %32
  store %struct.mlxsw_sp_nve_mc_entry* %33, %struct.mlxsw_sp_nve_mc_entry** %9, align 8
  %34 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %9, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_entry, %struct.mlxsw_sp_nve_mc_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %53

39:                                               ; preds = %27
  %40 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*, %union.mlxsw_sp_l3addr*)*, i64 (%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*, %union.mlxsw_sp_l3addr*)** %43, align 8
  %45 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %4, align 8
  %46 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %9, align 8
  %47 = load %union.mlxsw_sp_l3addr*, %union.mlxsw_sp_l3addr** %5, align 8
  %48 = call i64 %44(%struct.mlxsw_sp_nve_mc_record* %45, %struct.mlxsw_sp_nve_mc_entry* %46, %union.mlxsw_sp_l3addr* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %9, align 8
  store %struct.mlxsw_sp_nve_mc_entry* %51, %struct.mlxsw_sp_nve_mc_entry** %3, align 8
  br label %57

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %38
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %23

56:                                               ; preds = %23
  store %struct.mlxsw_sp_nve_mc_entry* null, %struct.mlxsw_sp_nve_mc_entry** %3, align 8
  br label %57

57:                                               ; preds = %56, %50
  %58 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %3, align 8
  ret %struct.mlxsw_sp_nve_mc_entry* %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
