; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_set_rx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_set_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcm_sysport_priv = type { i32, i64 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@RXCHK_CONTROL = common dso_local global i32 0, align 4
@RXCHK_L2_HDR_DIS = common dso_local global i32 0, align 4
@RXCHK_EN = common dso_local global i32 0, align 4
@RXCHK_SKIP_FCS = common dso_local global i32 0, align 4
@RXCHK_BRCM_TAG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @bcm_sysport_set_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_set_rx_csum(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_sysport_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.bcm_sysport_priv* %8, %struct.bcm_sysport_priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %17 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %19 = load i32, i32* @RXCHK_CONTROL, align 4
  %20 = call i32 @rxchk_readl(%struct.bcm_sysport_priv* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @RXCHK_L2_HDR_DIS, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %26 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @RXCHK_EN, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load i32, i32* @RXCHK_EN, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %40 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %45 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @RXCHK_SKIP_FCS, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %57

52:                                               ; preds = %43, %38
  %53 = load i32, i32* @RXCHK_SKIP_FCS, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %52, %48
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i64 @netdev_uses_dsa(%struct.net_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @RXCHK_BRCM_TAG_EN, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %70

65:                                               ; preds = %57
  %66 = load i32, i32* @RXCHK_BRCM_TAG_EN, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @RXCHK_CONTROL, align 4
  %74 = call i32 @rxchk_writel(%struct.bcm_sysport_priv* %71, i32 %72, i32 %73)
  ret void
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rxchk_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i64 @netdev_uses_dsa(%struct.net_device*) #1

declare dso_local i32 @rxchk_writel(%struct.bcm_sysport_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
