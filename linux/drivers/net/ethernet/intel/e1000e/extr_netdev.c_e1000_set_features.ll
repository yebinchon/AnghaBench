; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i32 }

@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@FLAG_TSO_FORCE = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_RXFCS = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@FLAG2_CRC_STRIPPING = common dso_local global i32 0, align 4
@FLAG2_DFLT_CRC_STRIPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @e1000_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @NETIF_F_TSO, align 4
  %17 = load i32, i32* @NETIF_F_TSO6, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @FLAG_TSO_FORCE, align 4
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %30 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @NETIF_F_RXHASH, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NETIF_F_RXFCS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NETIF_F_RXALL, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %28, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %96

43:                                               ; preds = %27
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @NETIF_F_RXFCS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @NETIF_F_RXFCS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* @FLAG2_CRC_STRIPPING, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %57 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %81

60:                                               ; preds = %48
  %61 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FLAG2_DFLT_CRC_STRIPPING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @FLAG2_CRC_STRIPPING, align 4
  %69 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %70 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %80

73:                                               ; preds = %60
  %74 = load i32, i32* @FLAG2_CRC_STRIPPING, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %77 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %67
  br label %81

81:                                               ; preds = %80, %53
  br label %82

82:                                               ; preds = %81, %43
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = call i64 @netif_running(%struct.net_device* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %91 = call i32 @e1000e_reinit_locked(%struct.e1000_adapter* %90)
  br label %95

92:                                               ; preds = %82
  %93 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %94 = call i32 @e1000e_reset(%struct.e1000_adapter* %93)
  br label %95

95:                                               ; preds = %92, %89
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %42
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @e1000e_reinit_locked(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_reset(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
