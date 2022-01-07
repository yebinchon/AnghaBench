; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_rif_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_rif_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_mr_table = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_mr_vif = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_mr_rif_del(%struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_rif* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %4 = alloca %struct.mlxsw_sp_rif*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mlxsw_sp_mr_vif*, align 8
  store %struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_table** %3, align 8
  store %struct.mlxsw_sp_rif* %1, %struct.mlxsw_sp_rif** %4, align 8
  %7 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %4, align 8
  %8 = call %struct.net_device* @mlxsw_sp_rif_dev(%struct.mlxsw_sp_rif* %7)
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %26

12:                                               ; preds = %2
  %13 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.mlxsw_sp_mr_vif* @mlxsw_sp_mr_dev_vif_lookup(%struct.mlxsw_sp_mr_table* %13, %struct.net_device* %14)
  store %struct.mlxsw_sp_mr_vif* %15, %struct.mlxsw_sp_mr_vif** %6, align 8
  %16 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %6, align 8
  %17 = icmp ne %struct.mlxsw_sp_mr_vif* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %26

19:                                               ; preds = %12
  %20 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %3, align 8
  %21 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %6, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_mr_vif, %struct.mlxsw_sp_mr_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %6, align 8
  %25 = call i32 @mlxsw_sp_mr_vif_unresolve(%struct.mlxsw_sp_mr_table* %20, i32 %23, %struct.mlxsw_sp_mr_vif* %24)
  br label %26

26:                                               ; preds = %19, %18, %11
  ret void
}

declare dso_local %struct.net_device* @mlxsw_sp_rif_dev(%struct.mlxsw_sp_rif*) #1

declare dso_local %struct.mlxsw_sp_mr_vif* @mlxsw_sp_mr_dev_vif_lookup(%struct.mlxsw_sp_mr_table*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_mr_vif_unresolve(%struct.mlxsw_sp_mr_table*, i32, %struct.mlxsw_sp_mr_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
