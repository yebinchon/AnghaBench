; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8169_phylink_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8169_phylink_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8169_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @r8169_phylink_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8169_phylink_handler(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rtl8169_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %4)
  store %struct.rtl8169_private* %5, %struct.rtl8169_private** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i64 @netif_carrier_ok(%struct.net_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %11 = call i32 @rtl_link_chg_patch(%struct.rtl8169_private* %10)
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %13 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @pm_request_resume(i32* %15)
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %19 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @pm_runtime_idle(i32* %21)
  br label %23

23:                                               ; preds = %17, %9
  %24 = call i64 (...) @net_ratelimit()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %28 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @phy_print_status(i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  ret void
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @rtl_link_chg_patch(%struct.rtl8169_private*) #1

declare dso_local i32 @pm_request_resume(i32*) #1

declare dso_local i32 @pm_runtime_idle(i32*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @phy_print_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
