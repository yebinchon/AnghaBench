; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_io_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_io_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.tg3 = type { i32 }

@RESET_KIND_INIT = common dso_local global i32 0, align 4
@INIT_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot restart hardware after reset.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @tg3_io_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_io_resume(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.tg3* @netdev_priv(%struct.net_device* %8)
  store %struct.tg3* %9, %struct.tg3** %4, align 8
  %10 = call i32 (...) @rtnl_lock()
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @netif_running(%struct.net_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %1
  br label %47

18:                                               ; preds = %13
  %19 = load %struct.tg3*, %struct.tg3** %4, align 8
  %20 = call i32 @tg3_full_lock(%struct.tg3* %19, i32 0)
  %21 = load %struct.tg3*, %struct.tg3** %4, align 8
  %22 = load i32, i32* @RESET_KIND_INIT, align 4
  %23 = call i32 @tg3_ape_driver_state_change(%struct.tg3* %21, i32 %22)
  %24 = load %struct.tg3*, %struct.tg3** %4, align 8
  %25 = load i32, i32* @INIT_COMPLETE, align 4
  %26 = call i32 @tg3_flag_set(%struct.tg3* %24, i32 %25)
  %27 = load %struct.tg3*, %struct.tg3** %4, align 8
  %28 = call i32 @tg3_restart_hw(%struct.tg3* %27, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load %struct.tg3*, %struct.tg3** %4, align 8
  %33 = call i32 @tg3_full_unlock(%struct.tg3* %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %47

36:                                               ; preds = %18
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @netif_device_attach(%struct.net_device* %37)
  %39 = load %struct.tg3*, %struct.tg3** %4, align 8
  %40 = call i32 @tg3_timer_start(%struct.tg3* %39)
  %41 = load %struct.tg3*, %struct.tg3** %4, align 8
  %42 = call i32 @tg3_netif_start(%struct.tg3* %41)
  %43 = load %struct.tg3*, %struct.tg3** %4, align 8
  %44 = call i32 @tg3_full_unlock(%struct.tg3* %43)
  %45 = load %struct.tg3*, %struct.tg3** %4, align 8
  %46 = call i32 @tg3_phy_start(%struct.tg3* %45)
  br label %47

47:                                               ; preds = %36, %31, %17
  %48 = load %struct.tg3*, %struct.tg3** %4, align 8
  %49 = getelementptr inbounds %struct.tg3, %struct.tg3* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  %50 = call i32 (...) @rtnl_unlock()
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @tg3_full_lock(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_ape_driver_state_change(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_restart_hw(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_full_unlock(%struct.tg3*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @tg3_timer_start(%struct.tg3*) #1

declare dso_local i32 @tg3_netif_start(%struct.tg3*) #1

declare dso_local i32 @tg3_phy_start(%struct.tg3*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
