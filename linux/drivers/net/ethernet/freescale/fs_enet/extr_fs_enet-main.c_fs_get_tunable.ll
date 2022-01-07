; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_get_tunable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_get_tunable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_tunable = type { i32 }
%struct.fs_enet_private = type { %struct.fs_platform_info* }
%struct.fs_platform_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_tunable*, i8*)* @fs_get_tunable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_get_tunable(%struct.net_device* %0, %struct.ethtool_tunable* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_tunable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fs_enet_private*, align 8
  %8 = alloca %struct.fs_platform_info*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_tunable* %1, %struct.ethtool_tunable** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %10)
  store %struct.fs_enet_private* %11, %struct.fs_enet_private** %7, align 8
  %12 = load %struct.fs_enet_private*, %struct.fs_enet_private** %7, align 8
  %13 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %12, i32 0, i32 0
  %14 = load %struct.fs_platform_info*, %struct.fs_platform_info** %13, align 8
  store %struct.fs_platform_info* %14, %struct.fs_platform_info** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.ethtool_tunable*, %struct.ethtool_tunable** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_tunable, %struct.ethtool_tunable* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %24 [
    i32 128, label %18
  ]

18:                                               ; preds = %3
  %19 = load %struct.fs_platform_info*, %struct.fs_platform_info** %8, align 8
  %20 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* %9, align 4
  ret i32 %28
}

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
