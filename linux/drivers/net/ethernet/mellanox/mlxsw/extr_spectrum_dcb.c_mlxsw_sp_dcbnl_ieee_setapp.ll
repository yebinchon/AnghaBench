; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_dcbnl_ieee_setapp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_dcbnl_ieee_setapp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcb_app = type { i32 }
%struct.mlxsw_sp_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcb_app*)* @mlxsw_sp_dcbnl_ieee_setapp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_dcbnl_ieee_setapp(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dcb_app*, align 8
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %8)
  store %struct.mlxsw_sp_port* %9, %struct.mlxsw_sp_port** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %12 = call i32 @mlxsw_sp_dcbnl_app_validate(%struct.net_device* %10, %struct.dcb_app* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %20 = call i32 @dcb_ieee_setapp(%struct.net_device* %18, %struct.dcb_app* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %37

25:                                               ; preds = %17
  %26 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %27 = call i32 @mlxsw_sp_port_dcb_app_update(%struct.mlxsw_sp_port* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %37

32:                                               ; preds = %30
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %35 = call i32 @dcb_ieee_delapp(%struct.net_device* %33, %struct.dcb_app* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %31, %23, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_dcbnl_app_validate(%struct.net_device*, %struct.dcb_app*) #1

declare dso_local i32 @dcb_ieee_setapp(%struct.net_device*, %struct.dcb_app*) #1

declare dso_local i32 @mlxsw_sp_port_dcb_app_update(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @dcb_ieee_delapp(%struct.net_device*, %struct.dcb_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
