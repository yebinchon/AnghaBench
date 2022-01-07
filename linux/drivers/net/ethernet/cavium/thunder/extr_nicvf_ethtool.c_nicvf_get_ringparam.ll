; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32 }
%struct.nicvf = type { %struct.queue_set* }
%struct.queue_set = type { i32, i32 }

@MAX_CMP_QUEUE_LEN = common dso_local global i32 0, align 4
@MAX_SND_QUEUE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @nicvf_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.queue_set*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.nicvf* @netdev_priv(%struct.net_device* %7)
  store %struct.nicvf* %8, %struct.nicvf** %5, align 8
  %9 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %10 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %9, i32 0, i32 0
  %11 = load %struct.queue_set*, %struct.queue_set** %10, align 8
  store %struct.queue_set* %11, %struct.queue_set** %6, align 8
  %12 = load i32, i32* @MAX_CMP_QUEUE_LEN, align 4
  %13 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %16 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @MAX_SND_QUEUE_LEN, align 4
  %21 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  %24 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
