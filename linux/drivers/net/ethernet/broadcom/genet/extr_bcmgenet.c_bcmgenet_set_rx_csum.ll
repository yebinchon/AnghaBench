; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_set_rx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_set_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcmgenet_priv = type { i32, i64 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@RBUF_CHK_CTRL = common dso_local global i32 0, align 4
@RBUF_RXCHK_EN = common dso_local global i32 0, align 4
@RBUF_SKIP_FCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bcmgenet_set_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_set_rx_csum(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcmgenet_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcmgenet_priv* %9, %struct.bcmgenet_priv** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %18 = load i32, i32* @RBUF_CHK_CTRL, align 4
  %19 = call i32 @bcmgenet_rbuf_readl(%struct.bcmgenet_priv* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @RBUF_RXCHK_EN, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @RBUF_RXCHK_EN, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %34 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %39 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @RBUF_SKIP_FCS, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %51

46:                                               ; preds = %37, %31
  %47 = load i32, i32* @RBUF_SKIP_FCS, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @RBUF_CHK_CTRL, align 4
  %55 = call i32 @bcmgenet_rbuf_writel(%struct.bcmgenet_priv* %52, i32 %53, i32 %54)
  ret i32 0
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_rbuf_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_rbuf_writel(%struct.bcmgenet_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
