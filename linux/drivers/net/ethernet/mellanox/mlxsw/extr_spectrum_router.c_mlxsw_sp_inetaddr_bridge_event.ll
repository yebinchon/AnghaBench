; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_inetaddr_bridge_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_inetaddr_bridge_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_rif_params = type { %struct.net_device* }
%struct.mlxsw_sp_rif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, i64, %struct.netlink_ext_ack*)* @mlxsw_sp_inetaddr_bridge_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_inetaddr_bridge_event(%struct.mlxsw_sp* %0, %struct.net_device* %1, i64 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.mlxsw_sp_rif_params, align 8
  %11 = alloca %struct.mlxsw_sp_rif*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_rif_params, %struct.mlxsw_sp_rif_params* %10, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %13, %struct.net_device** %12, align 8
  %14 = load i64, i64* %8, align 8
  switch i64 %14, label %32 [
    i64 128, label %15
    i64 129, label %26
  ]

15:                                               ; preds = %4
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %18 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_create(%struct.mlxsw_sp* %16, %struct.mlxsw_sp_rif_params* %10, %struct.netlink_ext_ack* %17)
  store %struct.mlxsw_sp_rif* %18, %struct.mlxsw_sp_rif** %11, align 8
  %19 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %11, align 8
  %20 = call i32 @IS_ERR(%struct.mlxsw_sp_rif* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %11, align 8
  %24 = call i32 @PTR_ERR(%struct.mlxsw_sp_rif* %23)
  store i32 %24, i32* %5, align 4
  br label %33

25:                                               ; preds = %15
  br label %32

26:                                               ; preds = %4
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %27, %struct.net_device* %28)
  store %struct.mlxsw_sp_rif* %29, %struct.mlxsw_sp_rif** %11, align 8
  %30 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %11, align 8
  %31 = call i32 @mlxsw_sp_rif_destroy(%struct.mlxsw_sp_rif* %30)
  br label %32

32:                                               ; preds = %4, %26, %25
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_rif_params*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @IS_ERR(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_rif*) #1

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_rif_destroy(%struct.mlxsw_sp_rif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
