; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_if_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_if_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, i32, %struct.net_device* }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"if_remove\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_if_remove(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.wireless_dev*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %5 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %6 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %5, i32 0, i32 2
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  store %struct.wireless_dev* %10, %struct.wireless_dev** %4, align 8
  %11 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %12 = call i32 @wil_dbg_misc(%struct.wil6210_priv* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (...) @rtnl_lock()
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %15 = call i32 @wil_vif_remove(%struct.wil6210_priv* %14, i32 0)
  %16 = call i32 (...) @rtnl_unlock()
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %18 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %17, i32 0, i32 1
  %19 = call i32 @netif_napi_del(i32* %18)
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %21 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %20, i32 0, i32 0
  %22 = call i32 @netif_napi_del(i32* %21)
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wiphy_unregister(i32 %25)
  ret void
}

declare dso_local i32 @wil_dbg_misc(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @wil_vif_remove(%struct.wil6210_priv*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @wiphy_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
