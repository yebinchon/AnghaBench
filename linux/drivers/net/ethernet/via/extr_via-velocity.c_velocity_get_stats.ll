; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.velocity_info = type { i32*, i32 }

@HW_MIB_ifRxAllPkts = common dso_local global i64 0, align 8
@HW_MIB_ifRxErrorPkts = common dso_local global i64 0, align 8
@HW_MIB_ifInRangeLengthErrors = common dso_local global i64 0, align 8
@HW_MIB_ifTxEtherCollisions = common dso_local global i64 0, align 8
@HW_MIB_ifRxPktCRCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @velocity_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @velocity_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device_stats*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.velocity_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.velocity_info* @netdev_priv(%struct.net_device* %5)
  store %struct.velocity_info* %6, %struct.velocity_info** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i32 @netif_running(%struct.net_device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  store %struct.net_device_stats* %12, %struct.net_device_stats** %2, align 8
  br label %69

13:                                               ; preds = %1
  %14 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %15 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %18 = call i32 @velocity_update_hw_mibs(%struct.velocity_info* %17)
  %19 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %20 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %19, i32 0, i32 1
  %21 = call i32 @spin_unlock_irq(i32* %20)
  %22 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %23 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @HW_MIB_ifRxAllPkts, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 4
  %31 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %32 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @HW_MIB_ifRxErrorPkts, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  %40 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %41 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @HW_MIB_ifInRangeLengthErrors, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %50 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @HW_MIB_ifTxEtherCollisions, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.velocity_info*, %struct.velocity_info** %4, align 8
  %59 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @HW_MIB_ifRxPktCRCE, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  store %struct.net_device_stats* %68, %struct.net_device_stats** %2, align 8
  br label %69

69:                                               ; preds = %13, %10
  %70 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  ret %struct.net_device_stats* %70
}

declare dso_local %struct.velocity_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @velocity_update_hw_mibs(%struct.velocity_info*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
