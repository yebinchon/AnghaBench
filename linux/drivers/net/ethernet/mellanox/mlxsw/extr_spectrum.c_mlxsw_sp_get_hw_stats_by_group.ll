; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_get_hw_stats_by_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_get_hw_stats_by_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port_hw_stats = type { i32 }

@mlxsw_sp_port_hw_stats = common dso_local global %struct.mlxsw_sp_port_hw_stats* null, align 8
@MLXSW_SP_PORT_HW_STATS_LEN = common dso_local global i32 0, align 4
@mlxsw_sp_port_hw_rfc_2863_stats = common dso_local global %struct.mlxsw_sp_port_hw_stats* null, align 8
@MLXSW_SP_PORT_HW_RFC_2863_STATS_LEN = common dso_local global i32 0, align 4
@mlxsw_sp_port_hw_rfc_2819_stats = common dso_local global %struct.mlxsw_sp_port_hw_stats* null, align 8
@MLXSW_SP_PORT_HW_RFC_2819_STATS_LEN = common dso_local global i32 0, align 4
@mlxsw_sp_port_hw_rfc_3635_stats = common dso_local global %struct.mlxsw_sp_port_hw_stats* null, align 8
@MLXSW_SP_PORT_HW_RFC_3635_STATS_LEN = common dso_local global i32 0, align 4
@mlxsw_sp_port_hw_discard_stats = common dso_local global %struct.mlxsw_sp_port_hw_stats* null, align 8
@MLXSW_SP_PORT_HW_DISCARD_STATS_LEN = common dso_local global i32 0, align 4
@mlxsw_sp_port_hw_prio_stats = common dso_local global %struct.mlxsw_sp_port_hw_stats* null, align 8
@MLXSW_SP_PORT_HW_PRIO_STATS_LEN = common dso_local global i32 0, align 4
@mlxsw_sp_port_hw_tc_stats = common dso_local global %struct.mlxsw_sp_port_hw_stats* null, align 8
@MLXSW_SP_PORT_HW_TC_STATS_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port_hw_stats**, i32*, i32)* @mlxsw_sp_get_hw_stats_by_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_get_hw_stats_by_group(%struct.mlxsw_sp_port_hw_stats** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port_hw_stats**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_port_hw_stats** %0, %struct.mlxsw_sp_port_hw_stats*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %44 [
    i32 133, label %9
    i32 130, label %14
    i32 131, label %19
    i32 129, label %24
    i32 134, label %29
    i32 132, label %34
    i32 128, label %39
  ]

9:                                                ; preds = %3
  %10 = load %struct.mlxsw_sp_port_hw_stats*, %struct.mlxsw_sp_port_hw_stats** @mlxsw_sp_port_hw_stats, align 8
  %11 = load %struct.mlxsw_sp_port_hw_stats**, %struct.mlxsw_sp_port_hw_stats*** %5, align 8
  store %struct.mlxsw_sp_port_hw_stats* %10, %struct.mlxsw_sp_port_hw_stats** %11, align 8
  %12 = load i32, i32* @MLXSW_SP_PORT_HW_STATS_LEN, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  br label %48

14:                                               ; preds = %3
  %15 = load %struct.mlxsw_sp_port_hw_stats*, %struct.mlxsw_sp_port_hw_stats** @mlxsw_sp_port_hw_rfc_2863_stats, align 8
  %16 = load %struct.mlxsw_sp_port_hw_stats**, %struct.mlxsw_sp_port_hw_stats*** %5, align 8
  store %struct.mlxsw_sp_port_hw_stats* %15, %struct.mlxsw_sp_port_hw_stats** %16, align 8
  %17 = load i32, i32* @MLXSW_SP_PORT_HW_RFC_2863_STATS_LEN, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  br label %48

19:                                               ; preds = %3
  %20 = load %struct.mlxsw_sp_port_hw_stats*, %struct.mlxsw_sp_port_hw_stats** @mlxsw_sp_port_hw_rfc_2819_stats, align 8
  %21 = load %struct.mlxsw_sp_port_hw_stats**, %struct.mlxsw_sp_port_hw_stats*** %5, align 8
  store %struct.mlxsw_sp_port_hw_stats* %20, %struct.mlxsw_sp_port_hw_stats** %21, align 8
  %22 = load i32, i32* @MLXSW_SP_PORT_HW_RFC_2819_STATS_LEN, align 4
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  br label %48

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_sp_port_hw_stats*, %struct.mlxsw_sp_port_hw_stats** @mlxsw_sp_port_hw_rfc_3635_stats, align 8
  %26 = load %struct.mlxsw_sp_port_hw_stats**, %struct.mlxsw_sp_port_hw_stats*** %5, align 8
  store %struct.mlxsw_sp_port_hw_stats* %25, %struct.mlxsw_sp_port_hw_stats** %26, align 8
  %27 = load i32, i32* @MLXSW_SP_PORT_HW_RFC_3635_STATS_LEN, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %48

29:                                               ; preds = %3
  %30 = load %struct.mlxsw_sp_port_hw_stats*, %struct.mlxsw_sp_port_hw_stats** @mlxsw_sp_port_hw_discard_stats, align 8
  %31 = load %struct.mlxsw_sp_port_hw_stats**, %struct.mlxsw_sp_port_hw_stats*** %5, align 8
  store %struct.mlxsw_sp_port_hw_stats* %30, %struct.mlxsw_sp_port_hw_stats** %31, align 8
  %32 = load i32, i32* @MLXSW_SP_PORT_HW_DISCARD_STATS_LEN, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %48

34:                                               ; preds = %3
  %35 = load %struct.mlxsw_sp_port_hw_stats*, %struct.mlxsw_sp_port_hw_stats** @mlxsw_sp_port_hw_prio_stats, align 8
  %36 = load %struct.mlxsw_sp_port_hw_stats**, %struct.mlxsw_sp_port_hw_stats*** %5, align 8
  store %struct.mlxsw_sp_port_hw_stats* %35, %struct.mlxsw_sp_port_hw_stats** %36, align 8
  %37 = load i32, i32* @MLXSW_SP_PORT_HW_PRIO_STATS_LEN, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  br label %48

39:                                               ; preds = %3
  %40 = load %struct.mlxsw_sp_port_hw_stats*, %struct.mlxsw_sp_port_hw_stats** @mlxsw_sp_port_hw_tc_stats, align 8
  %41 = load %struct.mlxsw_sp_port_hw_stats**, %struct.mlxsw_sp_port_hw_stats*** %5, align 8
  store %struct.mlxsw_sp_port_hw_stats* %40, %struct.mlxsw_sp_port_hw_stats** %41, align 8
  %42 = load i32, i32* @MLXSW_SP_PORT_HW_TC_STATS_LEN, align 4
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  br label %48

44:                                               ; preds = %3
  %45 = call i32 @WARN_ON(i32 1)
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %39, %34, %29, %24, %19, %14, %9
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
