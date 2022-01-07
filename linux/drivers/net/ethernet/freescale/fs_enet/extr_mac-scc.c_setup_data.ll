; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mac-scc.c_setup_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mac-scc.c_setup_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fs_enet_private = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@SCC_NAPI_EVENT_MSK = common dso_local global i32 0, align 4
@SCC_EVENT = common dso_local global i32 0, align 4
@SCCE_ENET_TXE = common dso_local global i32 0, align 4
@SCC_ERR_EVENT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @setup_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_data(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fs_enet_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %4)
  store %struct.fs_enet_private* %5, %struct.fs_enet_private** %3, align 8
  %6 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %7 = call i32 @do_pd_setup(%struct.fs_enet_private* %6)
  %8 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %9 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %12 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @SCC_NAPI_EVENT_MSK, align 4
  %15 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %16 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @SCC_EVENT, align 4
  %18 = load i32, i32* @SCCE_ENET_TXE, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %21 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @SCC_ERR_EVENT_MSK, align 4
  %23 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %24 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  ret i32 0
}

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @do_pd_setup(%struct.fs_enet_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
