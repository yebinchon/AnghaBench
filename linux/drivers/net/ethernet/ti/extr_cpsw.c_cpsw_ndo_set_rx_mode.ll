; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.cpsw_priv = type { i32, %struct.cpsw_common* }
%struct.cpsw_common = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@cpsw_add_mc_addr = common dso_local global i32 0, align 4
@cpsw_del_mc_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cpsw_ndo_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_ndo_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cpsw_priv*, align 8
  %4 = alloca %struct.cpsw_common*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.cpsw_priv* %7, %struct.cpsw_priv** %3, align 8
  %8 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %9 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %8, i32 0, i32 1
  %10 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  store %struct.cpsw_common* %10, %struct.cpsw_common** %4, align 8
  store i32 -1, i32* %5, align 4
  %11 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %12 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.cpsw_priv*, %struct.cpsw_priv** %3, align 8
  %18 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_PROMISC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @cpsw_set_promiscious(%struct.net_device* %29, i32 1)
  %31 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %32 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IFF_ALLMULTI, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @cpsw_ale_set_allmulti(i32 %33, i32 %34, i32 %35)
  br label %57

37:                                               ; preds = %21
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call i32 @cpsw_set_promiscious(%struct.net_device* %38, i32 0)
  br label %40

40:                                               ; preds = %37
  %41 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %42 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFF_ALLMULTI, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @cpsw_ale_set_allmulti(i32 %43, i32 %48, i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load i32, i32* @cpsw_add_mc_addr, align 4
  %55 = load i32, i32* @cpsw_del_mc_addr, align 4
  %56 = call i32 @__hw_addr_ref_sync_dev(i32* %52, %struct.net_device* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %40, %28
  ret void
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpsw_set_promiscious(%struct.net_device*, i32) #1

declare dso_local i32 @cpsw_ale_set_allmulti(i32, i32, i32) #1

declare dso_local i32 @__hw_addr_ref_sync_dev(i32*, %struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
