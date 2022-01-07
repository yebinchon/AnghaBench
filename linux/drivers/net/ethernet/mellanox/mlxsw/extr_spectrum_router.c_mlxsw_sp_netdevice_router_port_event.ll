; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_router_port_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_router_port_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_rif = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_netdevice_router_port_event(%struct.net_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.mlxsw_sp_rif*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device* %10)
  store %struct.mlxsw_sp* %11, %struct.mlxsw_sp** %8, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %13 = icmp ne %struct.mlxsw_sp* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

15:                                               ; preds = %3
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %16, %struct.net_device* %17)
  store %struct.mlxsw_sp_rif* %18, %struct.mlxsw_sp_rif** %9, align 8
  %19 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %9, align 8
  %20 = icmp ne %struct.mlxsw_sp_rif* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %33

22:                                               ; preds = %15
  %23 = load i64, i64* %6, align 8
  switch i64 %23, label %32 [
    i64 129, label %24
    i64 130, label %24
    i64 128, label %28
  ]

24:                                               ; preds = %22, %22
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %26 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %9, align 8
  %27 = call i32 @mlxsw_sp_router_port_change_event(%struct.mlxsw_sp* %25, %struct.mlxsw_sp_rif* %26)
  store i32 %27, i32* %4, align 4
  br label %33

28:                                               ; preds = %22
  %29 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %9, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @mlxsw_sp_router_port_pre_changeaddr_event(%struct.mlxsw_sp_rif* %29, i8* %30)
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %28, %24, %21, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.mlxsw_sp* @mlxsw_sp_lower_get(%struct.net_device*) #1

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_router_port_change_event(%struct.mlxsw_sp*, %struct.mlxsw_sp_rif*) #1

declare dso_local i32 @mlxsw_sp_router_port_pre_changeaddr_event(%struct.mlxsw_sp_rif*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
