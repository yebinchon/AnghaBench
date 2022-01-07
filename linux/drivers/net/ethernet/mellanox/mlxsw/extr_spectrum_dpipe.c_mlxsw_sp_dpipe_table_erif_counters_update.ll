; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_erif_counters_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_erif_counters_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }

@MAX_RIFS = common dso_local global i32 0, align 4
@MLXSW_SP_RIF_COUNTER_EGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @mlxsw_sp_dpipe_table_erif_counters_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_dpipe_table_erif_counters_update(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_rif*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.mlxsw_sp*
  store %struct.mlxsw_sp* %9, %struct.mlxsw_sp** %5, align 8
  %10 = call i32 (...) @rtnl_lock()
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %40, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAX_RIFS, align 4
  %17 = call i32 @MLXSW_CORE_RES_GET(i32 %15, i32 %16)
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %11
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_by_index(%struct.mlxsw_sp* %20, i32 %21)
  store %struct.mlxsw_sp_rif* %22, %struct.mlxsw_sp_rif** %7, align 8
  %23 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %7, align 8
  %24 = icmp ne %struct.mlxsw_sp_rif* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %40

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %31 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %7, align 8
  %32 = load i32, i32* @MLXSW_SP_RIF_COUNTER_EGRESS, align 4
  %33 = call i32 @mlxsw_sp_rif_counter_alloc(%struct.mlxsw_sp* %30, %struct.mlxsw_sp_rif* %31, i32 %32)
  br label %39

34:                                               ; preds = %26
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %36 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %7, align 8
  %37 = load i32, i32* @MLXSW_SP_RIF_COUNTER_EGRESS, align 4
  %38 = call i32 @mlxsw_sp_rif_counter_free(%struct.mlxsw_sp* %35, %struct.mlxsw_sp_rif* %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %11

43:                                               ; preds = %11
  %44 = call i32 (...) @rtnl_unlock()
  ret i32 0
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_by_index(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_rif_counter_alloc(%struct.mlxsw_sp*, %struct.mlxsw_sp_rif*, i32) #1

declare dso_local i32 @mlxsw_sp_rif_counter_free(%struct.mlxsw_sp*, %struct.mlxsw_sp_rif*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
