; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_prio_graft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_prio_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp_qdisc* }
%struct.mlxsw_sp_qdisc = type { i64 }
%struct.tc_prio_qopt_offload_graft_params = type { i64, i64 }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, %struct.tc_prio_qopt_offload_graft_params*)* @mlxsw_sp_qdisc_prio_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_qdisc_prio_graft(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_qdisc* %1, %struct.tc_prio_qopt_offload_graft_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %7 = alloca %struct.tc_prio_qopt_offload_graft_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp_qdisc*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store %struct.mlxsw_sp_qdisc* %1, %struct.mlxsw_sp_qdisc** %6, align 8
  store %struct.tc_prio_qopt_offload_graft_params* %2, %struct.tc_prio_qopt_offload_graft_params** %7, align 8
  %10 = load %struct.tc_prio_qopt_offload_graft_params*, %struct.tc_prio_qopt_offload_graft_params** %7, align 8
  %11 = getelementptr inbounds %struct.tc_prio_qopt_offload_graft_params, %struct.tc_prio_qopt_offload_graft_params* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @MLXSW_SP_PRIO_BAND_TO_TCLASS(i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.tc_prio_qopt_offload_graft_params*, %struct.tc_prio_qopt_offload_graft_params** %7, align 8
  %15 = getelementptr inbounds %struct.tc_prio_qopt_offload_graft_params, %struct.tc_prio_qopt_offload_graft_params* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IEEE_8021QAZ_MAX_TCS, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %20, i32 0, i32 0
  %22 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %22, i64 %24
  %26 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.tc_prio_qopt_offload_graft_params*, %struct.tc_prio_qopt_offload_graft_params** %7, align 8
  %29 = getelementptr inbounds %struct.tc_prio_qopt_offload_graft_params, %struct.tc_prio_qopt_offload_graft_params* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %56

33:                                               ; preds = %19, %3
  %34 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %35 = load %struct.tc_prio_qopt_offload_graft_params*, %struct.tc_prio_qopt_offload_graft_params** %7, align 8
  %36 = getelementptr inbounds %struct.tc_prio_qopt_offload_graft_params, %struct.tc_prio_qopt_offload_graft_params* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.mlxsw_sp_qdisc* @mlxsw_sp_qdisc_find_by_handle(%struct.mlxsw_sp_port* %34, i64 %37)
  store %struct.mlxsw_sp_qdisc* %38, %struct.mlxsw_sp_qdisc** %9, align 8
  %39 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %40 = icmp ne %struct.mlxsw_sp_qdisc* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %43 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %44 = call i32 @mlxsw_sp_qdisc_destroy(%struct.mlxsw_sp_port* %42, %struct.mlxsw_sp_qdisc* %43)
  br label %45

45:                                               ; preds = %41, %33
  %46 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %47 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %47, i32 0, i32 0
  %49 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %49, i64 %51
  %53 = call i32 @mlxsw_sp_qdisc_destroy(%struct.mlxsw_sp_port* %46, %struct.mlxsw_sp_qdisc* %52)
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %45, %32
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @MLXSW_SP_PRIO_BAND_TO_TCLASS(i64) #1

declare dso_local %struct.mlxsw_sp_qdisc* @mlxsw_sp_qdisc_find_by_handle(%struct.mlxsw_sp_port*, i64) #1

declare dso_local i32 @mlxsw_sp_qdisc_destroy(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
