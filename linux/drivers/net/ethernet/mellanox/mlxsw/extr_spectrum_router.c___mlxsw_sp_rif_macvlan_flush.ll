; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_rif_macvlan_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_rif_macvlan_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlxsw_sp_rif = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @__mlxsw_sp_rif_macvlan_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sp_rif_macvlan_flush(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mlxsw_sp_rif*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.mlxsw_sp_rif*
  store %struct.mlxsw_sp_rif* %8, %struct.mlxsw_sp_rif** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call i32 @netif_is_macvlan(%struct.net_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %6, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mlxsw_sp_fid_index(i32 %22)
  %24 = call i32 @mlxsw_sp_rif_fdb_op(i32 %16, i32 %19, i32 %23, i32 0)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %13, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_rif_fdb_op(i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fid_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
