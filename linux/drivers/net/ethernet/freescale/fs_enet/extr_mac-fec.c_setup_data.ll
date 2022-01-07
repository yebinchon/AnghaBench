; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mac-fec.c_setup_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mac-fec.c_setup_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fs_enet_private = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@FEC_NAPI_EVENT_MSK = common dso_local global i32 0, align 4
@FEC_EVENT = common dso_local global i32 0, align 4
@FEC_ERR_EVENT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @setup_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_data(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fs_enet_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %5)
  store %struct.fs_enet_private* %6, %struct.fs_enet_private** %4, align 8
  %7 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %8 = call i64 @do_pd_setup(%struct.fs_enet_private* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %15 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %18 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @FEC_NAPI_EVENT_MSK, align 4
  %21 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %22 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @FEC_EVENT, align 4
  %24 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %25 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @FEC_ERR_EVENT_MSK, align 4
  %27 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %28 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %13, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @do_pd_setup(%struct.fs_enet_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
