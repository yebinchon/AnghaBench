; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_write_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_write_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.ks8851_net = type { i32 }

@PMECR_PM_NORMAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@PMECR_PM_SOFTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ks8851_write_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8851_write_mac_addr(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ks8851_net*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ks8851_net* @netdev_priv(%struct.net_device* %5)
  store %struct.ks8851_net* %6, %struct.ks8851_net** %3, align 8
  %7 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %8 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %11 = load i32, i32* @PMECR_PM_NORMAL, align 4
  %12 = call i32 @ks8851_set_powermode(%struct.ks8851_net* %10, i32 %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @KS_MAR(i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ks8851_wrreg8(%struct.ks8851_net* %18, i32 %20, i32 %27)
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @netif_running(%struct.net_device* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %38 = load i32, i32* @PMECR_PM_SOFTDOWN, align 4
  %39 = call i32 @ks8851_set_powermode(%struct.ks8851_net* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %42 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  ret i32 0
}

declare dso_local %struct.ks8851_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ks8851_set_powermode(%struct.ks8851_net*, i32) #1

declare dso_local i32 @ks8851_wrreg8(%struct.ks8851_net*, i32, i32) #1

declare dso_local i32 @KS_MAR(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
