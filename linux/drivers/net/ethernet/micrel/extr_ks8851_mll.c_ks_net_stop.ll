; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_net_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851_mll.c_ks_net_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ks_net = type { i32 }

@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"shutting down\0A\00", align 1
@KS_IER = common dso_local global i32 0, align 4
@KS_ISR = common dso_local global i32 0, align 4
@PMECR_PM_SOFTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ks_net_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_net_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ks_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ks_net* @netdev_priv(%struct.net_device* %4)
  store %struct.ks_net* %5, %struct.ks_net** %3, align 8
  %6 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %7 = load i32, i32* @ifdown, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netif_info(%struct.ks_net* %6, i32 %7, %struct.net_device* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @netif_stop_queue(%struct.net_device* %10)
  %12 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %13 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %16 = load i32, i32* @KS_IER, align 4
  %17 = call i32 @ks_wrreg16(%struct.ks_net* %15, i32 %16, i32 0)
  %18 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %19 = load i32, i32* @KS_ISR, align 4
  %20 = call i32 @ks_wrreg16(%struct.ks_net* %18, i32 %19, i32 65535)
  %21 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %22 = call i32 @ks_disable_qmu(%struct.ks_net* %21)
  %23 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %24 = load i32, i32* @PMECR_PM_SOFTDOWN, align 4
  %25 = call i32 @ks_set_powermode(%struct.ks_net* %23, i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @free_irq(i32 %28, %struct.net_device* %29)
  %31 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %32 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  ret i32 0
}

declare dso_local %struct.ks_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.ks_net*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i32, i32) #1

declare dso_local i32 @ks_disable_qmu(%struct.ks_net*) #1

declare dso_local i32 @ks_set_powermode(%struct.ks_net*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
