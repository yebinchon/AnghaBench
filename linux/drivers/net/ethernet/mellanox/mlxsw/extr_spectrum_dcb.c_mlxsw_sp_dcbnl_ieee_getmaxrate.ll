; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_dcbnl_ieee_getmaxrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_dcbnl_ieee_getmaxrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_maxrate = type { i32 }
%struct.mlxsw_sp_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_maxrate*)* @mlxsw_sp_dcbnl_ieee_getmaxrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_dcbnl_ieee_getmaxrate(%struct.net_device* %0, %struct.ieee_maxrate* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ieee_maxrate*, align 8
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ieee_maxrate* %1, %struct.ieee_maxrate** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %6)
  store %struct.mlxsw_sp_port* %7, %struct.mlxsw_sp_port** %5, align 8
  %8 = load %struct.ieee_maxrate*, %struct.ieee_maxrate** %4, align 8
  %9 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(%struct.ieee_maxrate* %8, i32 %12, i32 4)
  ret i32 0
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(%struct.ieee_maxrate*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
