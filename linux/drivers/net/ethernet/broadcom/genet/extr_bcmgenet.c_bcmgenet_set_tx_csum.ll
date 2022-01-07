; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_set_tx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_set_tx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcmgenet_priv = type { i32 }

@RBUF_CTRL = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@RBUF_64B_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bcmgenet_set_tx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_set_tx_csum(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcmgenet_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.bcmgenet_priv* %10, %struct.bcmgenet_priv** %5, align 8
  %11 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %12 = call i32 @bcmgenet_tbuf_ctrl_get(%struct.bcmgenet_priv* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %14 = load i32, i32* @RBUF_CTRL, align 4
  %15 = call i32 @bcmgenet_rbuf_readl(%struct.bcmgenet_priv* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %18 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load i32, i32* @RBUF_64B_EN, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @RBUF_64B_EN, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %43

34:                                               ; preds = %2
  %35 = load i32, i32* @RBUF_64B_EN, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @RBUF_64B_EN, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %34, %27
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %46 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @bcmgenet_tbuf_ctrl_set(%struct.bcmgenet_priv* %47, i32 %48)
  %50 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @RBUF_CTRL, align 4
  %53 = call i32 @bcmgenet_rbuf_writel(%struct.bcmgenet_priv* %50, i32 %51, i32 %52)
  ret i32 0
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_tbuf_ctrl_get(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_rbuf_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_tbuf_ctrl_set(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_rbuf_writel(%struct.bcmgenet_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
