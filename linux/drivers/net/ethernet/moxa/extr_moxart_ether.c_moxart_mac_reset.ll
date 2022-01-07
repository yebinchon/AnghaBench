; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_mac_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_mac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.moxart_mac_priv_t = type { i32, i64 }

@SW_RST = common dso_local global i32 0, align 4
@REG_MAC_CTRL = common dso_local global i64 0, align 8
@REG_INTERRUPT_MASK = common dso_local global i64 0, align 8
@RX_BROADPKT = common dso_local global i32 0, align 4
@FULLDUP = common dso_local global i32 0, align 4
@CRC_APD = common dso_local global i32 0, align 4
@RX_FTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @moxart_mac_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxart_mac_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.moxart_mac_priv_t*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device* %4)
  store %struct.moxart_mac_priv_t* %5, %struct.moxart_mac_priv_t** %3, align 8
  %6 = load i32, i32* @SW_RST, align 4
  %7 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %8 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @REG_MAC_CTRL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  br label %13

13:                                               ; preds = %23, %1
  %14 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %15 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REG_MAC_CTRL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = load i32, i32* @SW_RST, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 @mdelay(i32 10)
  br label %13

25:                                               ; preds = %13
  %26 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %27 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @REG_INTERRUPT_MASK, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 0, i64 %30)
  %32 = load i32, i32* @RX_BROADPKT, align 4
  %33 = load i32, i32* @FULLDUP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CRC_APD, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RX_FTL, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %3, align 8
  %40 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  ret void
}

declare dso_local %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
