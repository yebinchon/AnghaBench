; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_rif_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_rif_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_mr_table = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_mr_vif = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_mr_rif_add(%struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_rif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %5 = alloca %struct.mlxsw_sp_rif*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlxsw_sp_mr_vif*, align 8
  store %struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_table** %4, align 8
  store %struct.mlxsw_sp_rif* %1, %struct.mlxsw_sp_rif** %5, align 8
  %8 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %9 = call %struct.net_device* @mlxsw_sp_rif_dev(%struct.mlxsw_sp_rif* %8)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.mlxsw_sp_mr_vif* @mlxsw_sp_mr_dev_vif_lookup(%struct.mlxsw_sp_mr_table* %14, %struct.net_device* %15)
  store %struct.mlxsw_sp_mr_vif* %16, %struct.mlxsw_sp_mr_vif** %7, align 8
  %17 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %7, align 8
  %18 = icmp ne %struct.mlxsw_sp_mr_vif* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %31

20:                                               ; preds = %13
  %21 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %4, align 8
  %22 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %7, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_mr_vif, %struct.mlxsw_sp_mr_vif* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %7, align 8
  %26 = load %struct.mlxsw_sp_mr_vif*, %struct.mlxsw_sp_mr_vif** %7, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_mr_vif, %struct.mlxsw_sp_mr_vif* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %5, align 8
  %30 = call i32 @mlxsw_sp_mr_vif_resolve(%struct.mlxsw_sp_mr_table* %21, i32 %24, %struct.mlxsw_sp_mr_vif* %25, i32 %28, %struct.mlxsw_sp_rif* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %20, %19, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.net_device* @mlxsw_sp_rif_dev(%struct.mlxsw_sp_rif*) #1

declare dso_local %struct.mlxsw_sp_mr_vif* @mlxsw_sp_mr_dev_vif_lookup(%struct.mlxsw_sp_mr_table*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_mr_vif_resolve(%struct.mlxsw_sp_mr_table*, i32, %struct.mlxsw_sp_mr_vif*, i32, %struct.mlxsw_sp_rif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
