; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.gfar_private = type { i32 }

@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@GFAR_RESETTING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfar_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfar_private*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = xor i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %14)
  store %struct.gfar_private* %15, %struct.gfar_private** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %18 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %32, %25
  %27 = load i32, i32* @GFAR_RESETTING, align 4
  %28 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %29 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %28, i32 0, i32 0
  %30 = call i64 @test_and_set_bit_lock(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 (...) @cpu_relax()
  br label %26

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_UP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i32 @stop_gfar(%struct.net_device* %45)
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = call i32 @startup_gfar(%struct.net_device* %47)
  store i32 %48, i32* %8, align 4
  br label %52

49:                                               ; preds = %34
  %50 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %51 = call i32 @gfar_mac_reset(%struct.gfar_private* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* @GFAR_RESETTING, align 4
  %54 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %55 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %54, i32 0, i32 0
  %56 = call i32 @clear_bit_unlock(i32 %53, i32* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %24
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @stop_gfar(%struct.net_device*) #1

declare dso_local i32 @startup_gfar(%struct.net_device*) #1

declare dso_local i32 @gfar_mac_reset(%struct.gfar_private*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
