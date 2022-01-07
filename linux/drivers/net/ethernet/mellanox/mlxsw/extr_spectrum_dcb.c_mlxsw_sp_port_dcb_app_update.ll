; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_dcb_app_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_dcb_app_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.dcb_ieee_app_prio_map = type { i32 }
%struct.dcb_ieee_app_dscp_map = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Couldn't configure priority map\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Couldn't configure DSCP rewrite map\0A\00", align 1
@MLXSW_REG_QPTS_TRUST_STATE_PCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't switch to trust L2\0A\00", align 1
@MLXSW_REG_QPTS_TRUST_STATE_DSCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't switch to trust L3\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*)* @mlxsw_sp_port_dcb_app_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_dcb_app_update(%struct.mlxsw_sp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca %struct.dcb_ieee_app_prio_map, align 4
  %5 = alloca %struct.dcb_ieee_app_dscp_map, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  %9 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %10 = call i32 @mlxsw_sp_port_dcb_app_default_prio(%struct.mlxsw_sp_port* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %12 = call i32 @mlxsw_sp_port_dcb_app_prio_dscp_map(%struct.mlxsw_sp_port* %11, %struct.dcb_ieee_app_prio_map* %4)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @mlxsw_sp_port_dcb_app_dscp_prio_map(%struct.mlxsw_sp_port* %13, i32 %14, %struct.dcb_ieee_app_dscp_map* %5)
  %16 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %17 = call i32 @mlxsw_sp_port_dcb_app_update_qpdpm(%struct.mlxsw_sp_port* %16, %struct.dcb_ieee_app_dscp_map* %5)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netdev_err(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %2, align 4
  br label %66

26:                                               ; preds = %1
  %27 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %28 = call i32 @mlxsw_sp_port_dcb_app_update_qpdsm(%struct.mlxsw_sp_port* %27, %struct.dcb_ieee_app_prio_map* %4)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @netdev_err(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %66

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %37
  %41 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %42 = load i32, i32* @MLXSW_REG_QPTS_TRUST_STATE_PCP, align 4
  %43 = call i32 @mlxsw_sp_port_dcb_toggle_trust(%struct.mlxsw_sp_port* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @netdev_err(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %66

53:                                               ; preds = %37
  %54 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %55 = load i32, i32* @MLXSW_REG_QPTS_TRUST_STATE_DSCP, align 4
  %56 = call i32 @mlxsw_sp_port_dcb_toggle_trust(%struct.mlxsw_sp_port* %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @netdev_err(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %59, %51, %31, %20
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @mlxsw_sp_port_dcb_app_default_prio(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_dcb_app_prio_dscp_map(%struct.mlxsw_sp_port*, %struct.dcb_ieee_app_prio_map*) #1

declare dso_local i32 @mlxsw_sp_port_dcb_app_dscp_prio_map(%struct.mlxsw_sp_port*, i32, %struct.dcb_ieee_app_dscp_map*) #1

declare dso_local i32 @mlxsw_sp_port_dcb_app_update_qpdpm(%struct.mlxsw_sp_port*, %struct.dcb_ieee_app_dscp_map*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @mlxsw_sp_port_dcb_app_update_qpdsm(%struct.mlxsw_sp_port*, %struct.dcb_ieee_app_prio_map*) #1

declare dso_local i32 @mlxsw_sp_port_dcb_toggle_trust(%struct.mlxsw_sp_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
