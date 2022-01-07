; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_dcb_toggle_trust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_dcb_toggle_trust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MLXSW_REG_QPTS_TRUST_STATE_DSCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, i32)* @mlxsw_sp_port_dcb_toggle_trust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_dcb_toggle_trust(%struct.mlxsw_sp_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MLXSW_REG_QPTS_TRUST_STATE_DSCP, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @mlxsw_sp_port_dcb_app_update_qpts(%struct.mlxsw_sp_port* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %19
  %28 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mlxsw_sp_port_dcb_app_update_qrwe(%struct.mlxsw_sp_port* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %39

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %47

39:                                               ; preds = %33
  %40 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %41 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mlxsw_sp_port_dcb_app_update_qpts(%struct.mlxsw_sp_port* %40, i32 %44)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %39, %34, %25, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @mlxsw_sp_port_dcb_app_update_qpts(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_dcb_app_update_qrwe(%struct.mlxsw_sp_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
