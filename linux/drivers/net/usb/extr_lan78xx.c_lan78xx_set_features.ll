; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lan78xx_net = type { i64* }
%struct.lan78xx_priv = type { i32, i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@RFE_CTL_TCPUDP_COE_ = common dso_local global i32 0, align 4
@RFE_CTL_IP_COE_ = common dso_local global i32 0, align 4
@RFE_CTL_ICMP_COE_ = common dso_local global i32 0, align 4
@RFE_CTL_IGMP_COE_ = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@RFE_CTL_VLAN_STRIP_ = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@RFE_CTL_VLAN_FILTER_ = common dso_local global i32 0, align 4
@RFE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @lan78xx_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lan78xx_net*, align 8
  %6 = alloca %struct.lan78xx_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %9)
  store %struct.lan78xx_net* %10, %struct.lan78xx_net** %5, align 8
  %11 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %12 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.lan78xx_priv*
  store %struct.lan78xx_priv* %16, %struct.lan78xx_priv** %6, align 8
  %17 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %18 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %17, i32 0, i32 1
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load i32, i32* @RFE_CTL_TCPUDP_COE_, align 4
  %27 = load i32, i32* @RFE_CTL_IP_COE_, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %30 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @RFE_CTL_ICMP_COE_, align 4
  %34 = load i32, i32* @RFE_CTL_IGMP_COE_, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %37 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %57

40:                                               ; preds = %2
  %41 = load i32, i32* @RFE_CTL_TCPUDP_COE_, align 4
  %42 = load i32, i32* @RFE_CTL_IP_COE_, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %46 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @RFE_CTL_ICMP_COE_, align 4
  %50 = load i32, i32* @RFE_CTL_IGMP_COE_, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %54 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %40, %25
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @RFE_CTL_VLAN_STRIP_, align 4
  %64 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %65 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %75

68:                                               ; preds = %57
  %69 = load i32, i32* @RFE_CTL_VLAN_STRIP_, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %72 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %62
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32, i32* @RFE_CTL_VLAN_FILTER_, align 4
  %82 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %83 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %93

86:                                               ; preds = %75
  %87 = load i32, i32* @RFE_CTL_VLAN_FILTER_, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %90 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %86, %80
  %94 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %95 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %94, i32 0, i32 1
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %99 = load i32, i32* @RFE_CTL, align 4
  %100 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %6, align 8
  %101 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %98, i32 %99, i32 %102)
  store i32 %103, i32* %8, align 4
  ret i32 0
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
