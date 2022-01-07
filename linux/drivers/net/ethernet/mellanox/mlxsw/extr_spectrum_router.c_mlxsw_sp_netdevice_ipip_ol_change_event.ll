; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_ol_change_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_netdevice_ipip_ol_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_ipip_ops** }
%struct.mlxsw_sp_ipip_ops = type { i32 (%struct.mlxsw_sp.0*, %struct.mlxsw_sp_ipip_entry*, %struct.netlink_ext_ack*)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp_ipip_entry = type opaque
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_ipip_entry.1 = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.net_device*, %struct.netlink_ext_ack*)* @mlxsw_sp_netdevice_ipip_ol_change_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_netdevice_ipip_ol_change_event(%struct.mlxsw_sp* %0, %struct.net_device* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_sp_ipip_ops*, align 8
  %9 = alloca %struct.mlxsw_sp_ipip_entry.1*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.mlxsw_sp_ipip_entry.1* @mlxsw_sp_ipip_entry_find_by_ol_dev(%struct.mlxsw_sp* %11, %struct.net_device* %12)
  store %struct.mlxsw_sp_ipip_entry.1* %13, %struct.mlxsw_sp_ipip_entry.1** %9, align 8
  %14 = load %struct.mlxsw_sp_ipip_entry.1*, %struct.mlxsw_sp_ipip_entry.1** %9, align 8
  %15 = icmp ne %struct.mlxsw_sp_ipip_entry.1* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

17:                                               ; preds = %3
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = load %struct.mlxsw_sp_ipip_entry.1*, %struct.mlxsw_sp_ipip_entry.1** %9, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry.1, %struct.mlxsw_sp_ipip_entry.1* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @mlxsw_sp_netdevice_ipip_can_offload(%struct.mlxsw_sp* %18, %struct.net_device* %19, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %27 = load %struct.mlxsw_sp_ipip_entry.1*, %struct.mlxsw_sp_ipip_entry.1** %9, align 8
  %28 = call i32 @mlxsw_sp_ipip_entry_demote_tunnel(%struct.mlxsw_sp* %26, %struct.mlxsw_sp_ipip_entry.1* %27)
  store i32 0, i32* %4, align 4
  br label %50

29:                                               ; preds = %17
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.mlxsw_sp_ipip_ops**, %struct.mlxsw_sp_ipip_ops*** %33, align 8
  %35 = load %struct.mlxsw_sp_ipip_entry.1*, %struct.mlxsw_sp_ipip_entry.1** %9, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry.1, %struct.mlxsw_sp_ipip_entry.1* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %34, i64 %37
  %39 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %38, align 8
  store %struct.mlxsw_sp_ipip_ops* %39, %struct.mlxsw_sp_ipip_ops** %8, align 8
  %40 = load %struct.mlxsw_sp_ipip_ops*, %struct.mlxsw_sp_ipip_ops** %8, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_ipip_ops, %struct.mlxsw_sp_ipip_ops* %40, i32 0, i32 0
  %42 = load i32 (%struct.mlxsw_sp.0*, %struct.mlxsw_sp_ipip_entry*, %struct.netlink_ext_ack*)*, i32 (%struct.mlxsw_sp.0*, %struct.mlxsw_sp_ipip_entry*, %struct.netlink_ext_ack*)** %41, align 8
  %43 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %44 = bitcast %struct.mlxsw_sp* %43 to %struct.mlxsw_sp.0*
  %45 = load %struct.mlxsw_sp_ipip_entry.1*, %struct.mlxsw_sp_ipip_entry.1** %9, align 8
  %46 = bitcast %struct.mlxsw_sp_ipip_entry.1* %45 to %struct.mlxsw_sp_ipip_entry*
  %47 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %48 = call i32 %42(%struct.mlxsw_sp.0* %44, %struct.mlxsw_sp_ipip_entry* %46, %struct.netlink_ext_ack* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %29, %25, %16
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.mlxsw_sp_ipip_entry.1* @mlxsw_sp_ipip_entry_find_by_ol_dev(%struct.mlxsw_sp*, %struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_netdevice_ipip_can_offload(%struct.mlxsw_sp*, %struct.net_device*, i64) #1

declare dso_local i32 @mlxsw_sp_ipip_entry_demote_tunnel(%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
