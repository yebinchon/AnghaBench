; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dev_priv = type { %struct.dev_info* }
%struct.dev_info = type { i32, %struct.ksz_hw }
%struct.ksz_hw = type { i32, i64, i64 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@DMA_RX_CSUM_TCP = common dso_local global i32 0, align 4
@DMA_RX_CSUM_IP = common dso_local global i32 0, align 4
@KS_DMA_RX_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @netdev_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_priv*, align 8
  %6 = alloca %struct.dev_info*, align 8
  %7 = alloca %struct.ksz_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.dev_priv* %9, %struct.dev_priv** %5, align 8
  %10 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %11 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %10, i32 0, i32 0
  %12 = load %struct.dev_info*, %struct.dev_info** %11, align 8
  store %struct.dev_info* %12, %struct.dev_info** %6, align 8
  %13 = load %struct.dev_info*, %struct.dev_info** %6, align 8
  %14 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %13, i32 0, i32 1
  store %struct.ksz_hw* %14, %struct.ksz_hw** %7, align 8
  %15 = load %struct.dev_info*, %struct.dev_info** %6, align 8
  %16 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @DMA_RX_CSUM_TCP, align 4
  %24 = load i32, i32* @DMA_RX_CSUM_IP, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %27 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %39

30:                                               ; preds = %2
  %31 = load i32, i32* @DMA_RX_CSUM_TCP, align 4
  %32 = load i32, i32* @DMA_RX_CSUM_IP, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %36 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %30, %22
  %40 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %41 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %46 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %49 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @KS_DMA_RX_CTRL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  br label %54

54:                                               ; preds = %44, %39
  %55 = load %struct.dev_info*, %struct.dev_info** %6, align 8
  %56 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  ret i32 0
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
