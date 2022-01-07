; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_attr_br_ageing_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_attr_br_ageing_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.switchdev_trans = type { i32 }

@MLXSW_SP_MIN_AGEING_TIME = common dso_local global i64 0, align 8
@MLXSW_SP_MAX_AGEING_TIME = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.switchdev_trans*, i64)* @mlxsw_sp_port_attr_br_ageing_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_attr_br_ageing_set(%struct.mlxsw_sp_port* %0, %struct.switchdev_trans* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.switchdev_trans*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store %struct.switchdev_trans* %1, %struct.switchdev_trans** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %11, i32 0, i32 0
  %13 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  store %struct.mlxsw_sp* %13, %struct.mlxsw_sp** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @clock_t_to_jiffies(i64 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @jiffies_to_msecs(i64 %16)
  %18 = sdiv i32 %17, 1000
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  %20 = load %struct.switchdev_trans*, %struct.switchdev_trans** %6, align 8
  %21 = call i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @MLXSW_SP_MIN_AGEING_TIME, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @MLXSW_SP_MAX_AGEING_TIME, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @ERANGE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %39

35:                                               ; preds = %3
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @mlxsw_sp_ageing_set(%struct.mlxsw_sp* %36, i64 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %34, %31
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @clock_t_to_jiffies(i64) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @switchdev_trans_ph_prepare(%struct.switchdev_trans*) #1

declare dso_local i32 @mlxsw_sp_ageing_set(%struct.mlxsw_sp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
