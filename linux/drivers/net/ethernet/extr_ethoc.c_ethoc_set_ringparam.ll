; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i64, i64 }
%struct.ethoc = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INT_MASK_TX = common dso_local global i32 0, align 4
@INT_MASK_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @ethoc_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.ethoc*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.ethoc* @netdev_priv(%struct.net_device* %7)
  store %struct.ethoc* %8, %struct.ethoc** %6, align 8
  %9 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %31, label %18

18:                                               ; preds = %13
  %19 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = sext i32 %25 to i64
  %27 = load %struct.ethoc*, %struct.ethoc** %6, align 8
  %28 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %18, %13, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %98

34:                                               ; preds = %18
  %35 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %98

47:                                               ; preds = %39
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i64 @netif_running(%struct.net_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 @netif_tx_disable(%struct.net_device* %52)
  %54 = load %struct.ethoc*, %struct.ethoc** %6, align 8
  %55 = call i32 @ethoc_disable_rx_and_tx(%struct.ethoc* %54)
  %56 = load %struct.ethoc*, %struct.ethoc** %6, align 8
  %57 = load i32, i32* @INT_MASK_TX, align 4
  %58 = load i32, i32* @INT_MASK_RX, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @ethoc_disable_irq(%struct.ethoc* %56, i32 %59)
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @synchronize_irq(i32 %63)
  br label %65

65:                                               ; preds = %51, %47
  %66 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = call i32 @rounddown_pow_of_two(i64 %69)
  %71 = load %struct.ethoc*, %struct.ethoc** %6, align 8
  %72 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.ethoc*, %struct.ethoc** %6, align 8
  %78 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.ethoc*, %struct.ethoc** %6, align 8
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ethoc_init_ring(%struct.ethoc* %79, i32 %82)
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = call i64 @netif_running(%struct.net_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %65
  %88 = load %struct.ethoc*, %struct.ethoc** %6, align 8
  %89 = load i32, i32* @INT_MASK_TX, align 4
  %90 = load i32, i32* @INT_MASK_RX, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @ethoc_enable_irq(%struct.ethoc* %88, i32 %91)
  %93 = load %struct.ethoc*, %struct.ethoc** %6, align 8
  %94 = call i32 @ethoc_enable_rx_and_tx(%struct.ethoc* %93)
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i32 @netif_wake_queue(%struct.net_device* %95)
  br label %97

97:                                               ; preds = %87, %65
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %44, %31
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @ethoc_disable_rx_and_tx(%struct.ethoc*) #1

declare dso_local i32 @ethoc_disable_irq(%struct.ethoc*, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @rounddown_pow_of_two(i64) #1

declare dso_local i32 @ethoc_init_ring(%struct.ethoc*, i32) #1

declare dso_local i32 @ethoc_enable_irq(%struct.ethoc*, i32) #1

declare dso_local i32 @ethoc_enable_rx_and_tx(%struct.ethoc*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
