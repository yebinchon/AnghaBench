; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_setup_tc_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_setup_tc_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.tc_prio_qopt_offload = type { i32, i32, i32, i32, i32, i32 }
%struct.mlxsw_sp_qdisc = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@TC_PRIO_REPLACE = common dso_local global i32 0, align 4
@mlxsw_sp_qdisc_ops_prio = common dso_local global i32 0, align 4
@MLXSW_SP_QDISC_PRIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_setup_tc_prio(%struct.mlxsw_sp_port* %0, %struct.tc_prio_qopt_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.tc_prio_qopt_offload*, align 8
  %6 = alloca %struct.mlxsw_sp_qdisc*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.tc_prio_qopt_offload* %1, %struct.tc_prio_qopt_offload** %5, align 8
  %7 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %8 = load %struct.tc_prio_qopt_offload*, %struct.tc_prio_qopt_offload** %5, align 8
  %9 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mlxsw_sp_qdisc* @mlxsw_sp_qdisc_find(%struct.mlxsw_sp_port* %7, i32 %10, i32 1)
  store %struct.mlxsw_sp_qdisc* %11, %struct.mlxsw_sp_qdisc** %6, align 8
  %12 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %6, align 8
  %13 = icmp ne %struct.mlxsw_sp_qdisc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %66

17:                                               ; preds = %2
  %18 = load %struct.tc_prio_qopt_offload*, %struct.tc_prio_qopt_offload** %5, align 8
  %19 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TC_PRIO_REPLACE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %25 = load %struct.tc_prio_qopt_offload*, %struct.tc_prio_qopt_offload** %5, align 8
  %26 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %6, align 8
  %29 = load %struct.tc_prio_qopt_offload*, %struct.tc_prio_qopt_offload** %5, align 8
  %30 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %29, i32 0, i32 4
  %31 = call i32 @mlxsw_sp_qdisc_replace(%struct.mlxsw_sp_port* %24, i32 %27, %struct.mlxsw_sp_qdisc* %28, i32* @mlxsw_sp_qdisc_ops_prio, i32* %30)
  store i32 %31, i32* %3, align 4
  br label %66

32:                                               ; preds = %17
  %33 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %6, align 8
  %34 = load %struct.tc_prio_qopt_offload*, %struct.tc_prio_qopt_offload** %5, align 8
  %35 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MLXSW_SP_QDISC_PRIO, align 4
  %38 = call i32 @mlxsw_sp_qdisc_compare(%struct.mlxsw_sp_qdisc* %33, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %66

43:                                               ; preds = %32
  %44 = load %struct.tc_prio_qopt_offload*, %struct.tc_prio_qopt_offload** %5, align 8
  %45 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %63 [
    i32 130, label %47
    i32 128, label %51
    i32 129, label %57
  ]

47:                                               ; preds = %43
  %48 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %49 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %6, align 8
  %50 = call i32 @mlxsw_sp_qdisc_destroy(%struct.mlxsw_sp_port* %48, %struct.mlxsw_sp_qdisc* %49)
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %43
  %52 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %53 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %6, align 8
  %54 = load %struct.tc_prio_qopt_offload*, %struct.tc_prio_qopt_offload** %5, align 8
  %55 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %54, i32 0, i32 2
  %56 = call i32 @mlxsw_sp_qdisc_get_stats(%struct.mlxsw_sp_port* %52, %struct.mlxsw_sp_qdisc* %53, i32* %55)
  store i32 %56, i32* %3, align 4
  br label %66

57:                                               ; preds = %43
  %58 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %59 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %6, align 8
  %60 = load %struct.tc_prio_qopt_offload*, %struct.tc_prio_qopt_offload** %5, align 8
  %61 = getelementptr inbounds %struct.tc_prio_qopt_offload, %struct.tc_prio_qopt_offload* %60, i32 0, i32 1
  %62 = call i32 @mlxsw_sp_qdisc_prio_graft(%struct.mlxsw_sp_port* %58, %struct.mlxsw_sp_qdisc* %59, i32* %61)
  store i32 %62, i32* %3, align 4
  br label %66

63:                                               ; preds = %43
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %57, %51, %47, %40, %23, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.mlxsw_sp_qdisc* @mlxsw_sp_qdisc_find(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_qdisc_replace(%struct.mlxsw_sp_port*, i32, %struct.mlxsw_sp_qdisc*, i32*, i32*) #1

declare dso_local i32 @mlxsw_sp_qdisc_compare(%struct.mlxsw_sp_qdisc*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_qdisc_destroy(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*) #1

declare dso_local i32 @mlxsw_sp_qdisc_get_stats(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, i32*) #1

declare dso_local i32 @mlxsw_sp_qdisc_prio_graft(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
