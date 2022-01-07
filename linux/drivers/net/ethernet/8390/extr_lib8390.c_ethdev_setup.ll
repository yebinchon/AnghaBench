; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c_ethdev_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c_ethdev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ei_device = type { i32, i32 }

@msg_enable = common dso_local global i32 0, align 4
@NETIF_MSG_DRV = common dso_local global i32 0, align 4
@version_printed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ethdev_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ethdev_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ei_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ei_device* @netdev_priv(%struct.net_device* %4)
  store %struct.ei_device* %5, %struct.ei_device** %3, align 8
  %6 = load i32, i32* @msg_enable, align 4
  %7 = load i32, i32* @NETIF_MSG_DRV, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @version_printed, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @version_printed, align 4
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @version, align 4
  %16 = call i32 @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %10, %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @ether_setup(%struct.net_device* %18)
  %20 = load %struct.ei_device*, %struct.ei_device** %3, align 8
  %21 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load i32, i32* @msg_enable, align 4
  %24 = load %struct.ei_device*, %struct.ei_device** %3, align 8
  %25 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @ether_setup(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
