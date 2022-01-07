; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_mac_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_mac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.moxart_mac_priv_t = type { i32, i32, i64 }

@REG_INT_TIMER_CTRL = common dso_local global i64 0, align 8
@REG_APOLL_TIMER_CTRL = common dso_local global i64 0, align 8
@REG_DMA_BLEN_CTRL = common dso_local global i64 0, align 8
@RPKT_FINISH_M = common dso_local global i32 0, align 4
@XPKT_FINISH_M = common dso_local global i32 0, align 4
@REG_INTERRUPT_MASK = common dso_local global i64 0, align 8
@RCV_EN = common dso_local global i32 0, align 4
@XMT_EN = common dso_local global i32 0, align 4
@RDMA_EN = common dso_local global i32 0, align 4
@XDMA_EN = common dso_local global i32 0, align 4
@REG_MAC_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @moxart_mac_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxart_mac_enable(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.moxart_mac_priv_t*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device* %4)
  store %struct.moxart_mac_priv_t* %5, %struct.moxart_mac_priv_t** %3, align 8
  %6 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %7 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REG_INT_TIMER_CTRL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 4112, i64 %10)
  %12 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %13 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG_APOLL_TIMER_CTRL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 1, i64 %16)
  %18 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %19 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_DMA_BLEN_CTRL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 912, i64 %22)
  %24 = load i32, i32* @RPKT_FINISH_M, align 4
  %25 = load i32, i32* @XPKT_FINISH_M, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %28 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %32 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %35 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @REG_INTERRUPT_MASK, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load i32, i32* @RCV_EN, align 4
  %41 = load i32, i32* @XMT_EN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @RDMA_EN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @XDMA_EN, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %48 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %52 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %55 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @REG_MAC_CTRL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  ret void
}

declare dso_local %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
