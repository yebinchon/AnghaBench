; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_macvlan_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_rif_macvlan_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Router interface is deleted. Upper macvlans will not work\0A\00", align 1
@__mlxsw_sp_rif_macvlan_flush = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_rif*)* @mlxsw_sp_rif_macvlan_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_rif_macvlan_flush(%struct.mlxsw_sp_rif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_rif*, align 8
  store %struct.mlxsw_sp_rif* %0, %struct.mlxsw_sp_rif** %3, align 8
  %4 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %5 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @netif_is_macvlan_port(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @netdev_warn(i32 %13, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @__mlxsw_sp_rif_macvlan_flush, align 4
  %19 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %3, align 8
  %20 = call i32 @netdev_walk_all_upper_dev_rcu(i32 %17, i32 %18, %struct.mlxsw_sp_rif* %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %10, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @netif_is_macvlan_port(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @netdev_walk_all_upper_dev_rcu(i32, i32, %struct.mlxsw_sp_rif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
