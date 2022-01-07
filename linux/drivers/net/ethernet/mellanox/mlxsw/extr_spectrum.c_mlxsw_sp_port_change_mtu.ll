; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlxsw_sp_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mlxsw_sp_port_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %9)
  store %struct.mlxsw_sp_port* %10, %struct.mlxsw_sp_port** %6, align 8
  %11 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %12 = call i32 @mlxsw_sp_port_is_pause_en(%struct.mlxsw_sp_port* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port* %13, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @mlxsw_sp_span_port_mtu_update(%struct.mlxsw_sp_port* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %45

28:                                               ; preds = %21
  %29 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @mlxsw_sp_port_mtu_set(%struct.mlxsw_sp_port* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %39

35:                                               ; preds = %28
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %53

39:                                               ; preds = %34
  %40 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mlxsw_sp_span_port_mtu_update(%struct.mlxsw_sp_port* %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %27
  %46 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %6, align 8
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port* %46, i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %45, %35, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_is_pause_en(%struct.mlxsw_sp_port*) #1

declare dso_local i32 @mlxsw_sp_port_headroom_set(%struct.mlxsw_sp_port*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_span_port_mtu_update(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_mtu_set(%struct.mlxsw_sp_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
