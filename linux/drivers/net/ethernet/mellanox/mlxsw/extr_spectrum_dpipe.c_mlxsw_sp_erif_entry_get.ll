; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_erif_entry_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_erif_entry_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.devlink_dpipe_entry = type { i32, i32, i8*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.mlxsw_sp_rif = type { i32 }

@MLXSW_SP_RIF_COUNTER_EGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.devlink_dpipe_entry*, %struct.mlxsw_sp_rif*, i32)* @mlxsw_sp_erif_entry_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_erif_entry_get(%struct.mlxsw_sp* %0, %struct.devlink_dpipe_entry* %1, %struct.mlxsw_sp_rif* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.devlink_dpipe_entry*, align 8
  %8 = alloca %struct.mlxsw_sp_rif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.devlink_dpipe_entry* %1, %struct.devlink_dpipe_entry** %7, align 8
  store %struct.mlxsw_sp_rif* %2, %struct.mlxsw_sp_rif** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %15 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %14, i32 0, i32 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %8, align 8
  %20 = call i8* @mlxsw_sp_rif_index(%struct.mlxsw_sp_rif* %19)
  %21 = ptrtoint i8* %20 to i32
  %22 = load i32*, i32** %11, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %8, align 8
  %24 = call i32 @mlxsw_sp_rif_dev_ifindex(%struct.mlxsw_sp_rif* %23)
  %25 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %26 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32 %24, i32* %28, align 4
  %29 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %30 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %29, i32 0, i32 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  %33 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %34 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  store i32 1, i32* %38, align 4
  %39 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %40 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %42 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %8, align 8
  %44 = call i8* @mlxsw_sp_rif_index(%struct.mlxsw_sp_rif* %43)
  %45 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %46 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

50:                                               ; preds = %4
  %51 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %52 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %8, align 8
  %53 = load i32, i32* @MLXSW_SP_RIF_COUNTER_EGRESS, align 4
  %54 = call i32 @mlxsw_sp_rif_counter_value_get(%struct.mlxsw_sp* %51, %struct.mlxsw_sp_rif* %52, i32 %53, i32* %12)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %60 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %7, align 8
  %62 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %57, %50
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i8* @mlxsw_sp_rif_index(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_rif_dev_ifindex(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_rif_counter_value_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_rif*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
