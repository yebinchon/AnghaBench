; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_lag_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_lag_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.netdev_lag_lower_state_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.netdev_lag_lower_state_info*)* @mlxsw_sp_port_lag_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_lag_changed(%struct.mlxsw_sp_port* %0, %struct.netdev_lag_lower_state_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca %struct.netdev_lag_lower_state_info*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store %struct.netdev_lag_lower_state_info* %1, %struct.netdev_lag_lower_state_info** %5, align 8
  %6 = load %struct.netdev_lag_lower_state_info*, %struct.netdev_lag_lower_state_info** %5, align 8
  %7 = getelementptr inbounds %struct.netdev_lag_lower_state_info, %struct.netdev_lag_lower_state_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %12 = call i32 @mlxsw_sp_port_lag_col_dist_enable(%struct.mlxsw_sp_port* %11)
  store i32 %12, i32* %3, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %15 = call i32 @mlxsw_sp_port_lag_col_dist_disable(%struct.mlxsw_sp_port* %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @mlxsw_sp_port_lag_col_dist_enable(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_lag_col_dist_disable(%struct.mlxsw_sp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
