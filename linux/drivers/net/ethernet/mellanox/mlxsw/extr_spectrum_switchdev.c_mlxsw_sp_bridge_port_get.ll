; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_bridge_port_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_bridge_port = type { i32 }
%struct.mlxsw_sp_bridge = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_bridge_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_bridge_port* (%struct.mlxsw_sp_bridge*, %struct.net_device*)* @mlxsw_sp_bridge_port_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_get(%struct.mlxsw_sp_bridge* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %4 = alloca %struct.mlxsw_sp_bridge*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mlxsw_sp_bridge_device*, align 8
  %8 = alloca %struct.mlxsw_sp_bridge_port*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp_bridge* %0, %struct.mlxsw_sp_bridge** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device* %10)
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(%struct.mlxsw_sp_bridge* %12, %struct.net_device* %13)
  store %struct.mlxsw_sp_bridge_port* %14, %struct.mlxsw_sp_bridge_port** %8, align 8
  %15 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %8, align 8
  %16 = icmp ne %struct.mlxsw_sp_bridge_port* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %8, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_bridge_port, %struct.mlxsw_sp_bridge_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %8, align 8
  store %struct.mlxsw_sp_bridge_port* %22, %struct.mlxsw_sp_bridge_port** %3, align 8
  br label %50

23:                                               ; preds = %2
  %24 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %4, align 8
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_get(%struct.mlxsw_sp_bridge* %24, %struct.net_device* %25)
  store %struct.mlxsw_sp_bridge_device* %26, %struct.mlxsw_sp_bridge_device** %7, align 8
  %27 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %28 = call i64 @IS_ERR(%struct.mlxsw_sp_bridge_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %32 = call %struct.mlxsw_sp_bridge_port* @ERR_CAST(%struct.mlxsw_sp_bridge_device* %31)
  store %struct.mlxsw_sp_bridge_port* %32, %struct.mlxsw_sp_bridge_port** %3, align 8
  br label %50

33:                                               ; preds = %23
  %34 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_create(%struct.mlxsw_sp_bridge_device* %34, %struct.net_device* %35)
  store %struct.mlxsw_sp_bridge_port* %36, %struct.mlxsw_sp_bridge_port** %8, align 8
  %37 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %8, align 8
  %38 = icmp ne %struct.mlxsw_sp_bridge_port* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %8, align 8
  store %struct.mlxsw_sp_bridge_port* %43, %struct.mlxsw_sp_bridge_port** %3, align 8
  br label %50

44:                                               ; preds = %39
  %45 = load %struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge** %4, align 8
  %46 = load %struct.mlxsw_sp_bridge_device*, %struct.mlxsw_sp_bridge_device** %7, align 8
  %47 = call i32 @mlxsw_sp_bridge_device_put(%struct.mlxsw_sp_bridge* %45, %struct.mlxsw_sp_bridge_device* %46)
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.mlxsw_sp_bridge_port* @ERR_PTR(i32 %48)
  store %struct.mlxsw_sp_bridge_port* %49, %struct.mlxsw_sp_bridge_port** %3, align 8
  br label %50

50:                                               ; preds = %44, %42, %30, %17
  %51 = load %struct.mlxsw_sp_bridge_port*, %struct.mlxsw_sp_bridge_port** %3, align 8
  ret %struct.mlxsw_sp_bridge_port* %51
}

declare dso_local %struct.net_device* @netdev_master_upper_dev_get(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_find(%struct.mlxsw_sp_bridge*, %struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_bridge_device* @mlxsw_sp_bridge_device_get(%struct.mlxsw_sp_bridge*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_bridge_device*) #1

declare dso_local %struct.mlxsw_sp_bridge_port* @ERR_CAST(%struct.mlxsw_sp_bridge_device*) #1

declare dso_local %struct.mlxsw_sp_bridge_port* @mlxsw_sp_bridge_port_create(%struct.mlxsw_sp_bridge_device*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_bridge_device_put(%struct.mlxsw_sp_bridge*, %struct.mlxsw_sp_bridge_device*) #1

declare dso_local %struct.mlxsw_sp_bridge_port* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
