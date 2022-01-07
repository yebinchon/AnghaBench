; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_set_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_set_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tg3 = type { i32, i32, i32 }

@NETIF_F_LOOPBACK = common dso_local global i32 0, align 4
@MAC_MODE_PORT_INT_LPBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Internal MAC loopback mode enabled.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Internal MAC loopback mode disabled.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @tg3_set_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_set_loopback(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tg3*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.tg3* @netdev_priv(%struct.net_device* %6)
  store %struct.tg3* %7, %struct.tg3** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NETIF_F_LOOPBACK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.tg3*, %struct.tg3** %5, align 8
  %14 = getelementptr inbounds %struct.tg3, %struct.tg3* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAC_MODE_PORT_INT_LPBACK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %56

20:                                               ; preds = %12
  %21 = load %struct.tg3*, %struct.tg3** %5, align 8
  %22 = getelementptr inbounds %struct.tg3, %struct.tg3* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.tg3*, %struct.tg3** %5, align 8
  %25 = call i32 @tg3_mac_loopback(%struct.tg3* %24, i32 1)
  %26 = load %struct.tg3*, %struct.tg3** %5, align 8
  %27 = getelementptr inbounds %struct.tg3, %struct.tg3* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @netif_carrier_on(i32 %28)
  %30 = load %struct.tg3*, %struct.tg3** %5, align 8
  %31 = getelementptr inbounds %struct.tg3, %struct.tg3* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netdev_info(%struct.net_device* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %56

35:                                               ; preds = %2
  %36 = load %struct.tg3*, %struct.tg3** %5, align 8
  %37 = getelementptr inbounds %struct.tg3, %struct.tg3* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MAC_MODE_PORT_INT_LPBACK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %56

43:                                               ; preds = %35
  %44 = load %struct.tg3*, %struct.tg3** %5, align 8
  %45 = getelementptr inbounds %struct.tg3, %struct.tg3* %44, i32 0, i32 1
  %46 = call i32 @spin_lock_bh(i32* %45)
  %47 = load %struct.tg3*, %struct.tg3** %5, align 8
  %48 = call i32 @tg3_mac_loopback(%struct.tg3* %47, i32 0)
  %49 = load %struct.tg3*, %struct.tg3** %5, align 8
  %50 = call i32 @tg3_setup_phy(%struct.tg3* %49, i32 1)
  %51 = load %struct.tg3*, %struct.tg3** %5, align 8
  %52 = getelementptr inbounds %struct.tg3, %struct.tg3* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @netdev_info(%struct.net_device* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %19, %42, %43, %20
  ret void
}

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tg3_mac_loopback(%struct.tg3*, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @tg3_setup_phy(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
