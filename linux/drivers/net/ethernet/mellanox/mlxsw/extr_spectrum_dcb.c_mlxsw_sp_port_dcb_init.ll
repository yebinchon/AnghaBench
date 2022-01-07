; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_dcb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_dcb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@MLXSW_REG_QPTS_TRUST_STATE_PCP = common dso_local global i32 0, align 4
@mlxsw_sp_dcbnl_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_port_dcb_init(%struct.mlxsw_sp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  %5 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %6 = call i32 @mlxsw_sp_port_ets_init(%struct.mlxsw_sp_port* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %13 = call i32 @mlxsw_sp_port_maxrate_init(%struct.mlxsw_sp_port* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %35

17:                                               ; preds = %11
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %19 = call i32 @mlxsw_sp_port_pfc_init(%struct.mlxsw_sp_port* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %32

23:                                               ; preds = %17
  %24 = load i32, i32* @MLXSW_REG_QPTS_TRUST_STATE_PCP, align 4
  %25 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32* @mlxsw_sp_dcbnl_ops, i32** %31, align 8
  store i32 0, i32* %2, align 4
  br label %39

32:                                               ; preds = %22
  %33 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %34 = call i32 @mlxsw_sp_port_maxrate_fini(%struct.mlxsw_sp_port* %33)
  br label %35

35:                                               ; preds = %32, %16
  %36 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %37 = call i32 @mlxsw_sp_port_ets_fini(%struct.mlxsw_sp_port* %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %23, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @mlxsw_sp_port_ets_init(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_maxrate_init(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_pfc_init(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_maxrate_fini(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_ets_fini(%struct.mlxsw_sp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
