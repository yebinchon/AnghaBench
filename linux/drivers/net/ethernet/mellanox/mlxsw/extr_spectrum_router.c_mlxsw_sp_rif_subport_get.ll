; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_subport_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_subport_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_rif_params = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_rif_subport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_rif* (%struct.mlxsw_sp*, %struct.mlxsw_sp_rif_params*, %struct.netlink_ext_ack*)* @mlxsw_sp_rif_subport_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_rif* @mlxsw_sp_rif_subport_get(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_rif_params* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_rif*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_rif_params*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_sp_rif_subport*, align 8
  %9 = alloca %struct.mlxsw_sp_rif*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_rif_params* %1, %struct.mlxsw_sp_rif_params** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %11 = load %struct.mlxsw_sp_rif_params*, %struct.mlxsw_sp_rif_params** %6, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_rif_params, %struct.mlxsw_sp_rif_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp* %10, i32 %13)
  store %struct.mlxsw_sp_rif* %14, %struct.mlxsw_sp_rif** %9, align 8
  %15 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %9, align 8
  %16 = icmp ne %struct.mlxsw_sp_rif* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %19 = load %struct.mlxsw_sp_rif_params*, %struct.mlxsw_sp_rif_params** %6, align 8
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %21 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_create(%struct.mlxsw_sp* %18, %struct.mlxsw_sp_rif_params* %19, %struct.netlink_ext_ack* %20)
  store %struct.mlxsw_sp_rif* %21, %struct.mlxsw_sp_rif** %4, align 8
  br label %29

22:                                               ; preds = %3
  %23 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %9, align 8
  %24 = call %struct.mlxsw_sp_rif_subport* @mlxsw_sp_rif_subport_rif(%struct.mlxsw_sp_rif* %23)
  store %struct.mlxsw_sp_rif_subport* %24, %struct.mlxsw_sp_rif_subport** %8, align 8
  %25 = load %struct.mlxsw_sp_rif_subport*, %struct.mlxsw_sp_rif_subport** %8, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_rif_subport, %struct.mlxsw_sp_rif_subport* %25, i32 0, i32 0
  %27 = call i32 @refcount_inc(i32* %26)
  %28 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %9, align 8
  store %struct.mlxsw_sp_rif* %28, %struct.mlxsw_sp_rif** %4, align 8
  br label %29

29:                                               ; preds = %22, %17
  %30 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %4, align 8
  ret %struct.mlxsw_sp_rif* %30
}

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_find_by_dev(%struct.mlxsw_sp*, i32) #1

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_rif_params*, %struct.netlink_ext_ack*) #1

declare dso_local %struct.mlxsw_sp_rif_subport* @mlxsw_sp_rif_subport_rif(%struct.mlxsw_sp_rif*) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
