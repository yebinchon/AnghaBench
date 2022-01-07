; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.jme_adapter = type { i32 }

@JME_REG_LEN = common dso_local global i32 0, align 4
@JME_MAC = common dso_local global i32 0, align 4
@JME_MAC_LEN = common dso_local global i32 0, align 4
@JME_PHY = common dso_local global i32 0, align 4
@JME_PHY_LEN = common dso_local global i32 0, align 4
@JME_MISC = common dso_local global i32 0, align 4
@JME_MISC_LEN = common dso_local global i32 0, align 4
@JME_RSS = common dso_local global i32 0, align 4
@JME_RSS_LEN = common dso_local global i32 0, align 4
@JME_PHY_REG_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @jme_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.jme_adapter*, align 8
  %8 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.jme_adapter* %10, %struct.jme_adapter** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @JME_REG_LEN, align 4
  %15 = call i32 @memset(i8* %13, i32 255, i32 %14)
  %16 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.jme_adapter*, %struct.jme_adapter** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @JME_MAC, align 4
  %21 = load i32, i32* @JME_MAC_LEN, align 4
  %22 = call i32 @mmapio_memcpy(%struct.jme_adapter* %18, i32* %19, i32 %20, i32 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 64
  store i32* %24, i32** %8, align 8
  %25 = load %struct.jme_adapter*, %struct.jme_adapter** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* @JME_PHY, align 4
  %28 = load i32, i32* @JME_PHY_LEN, align 4
  %29 = call i32 @mmapio_memcpy(%struct.jme_adapter* %25, i32* %26, i32 %27, i32 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 64
  store i32* %31, i32** %8, align 8
  %32 = load %struct.jme_adapter*, %struct.jme_adapter** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @JME_MISC, align 4
  %35 = load i32, i32* @JME_MISC_LEN, align 4
  %36 = call i32 @mmapio_memcpy(%struct.jme_adapter* %32, i32* %33, i32 %34, i32 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 64
  store i32* %38, i32** %8, align 8
  %39 = load %struct.jme_adapter*, %struct.jme_adapter** %7, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @JME_RSS, align 4
  %42 = load i32, i32* @JME_RSS_LEN, align 4
  %43 = call i32 @mmapio_memcpy(%struct.jme_adapter* %39, i32* %40, i32 %41, i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 64
  store i32* %45, i32** %8, align 8
  %46 = load %struct.jme_adapter*, %struct.jme_adapter** %7, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @JME_PHY_REG_NR, align 4
  %49 = call i32 @mdio_memcpy(%struct.jme_adapter* %46, i32* %47, i32 %48)
  ret void
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mmapio_memcpy(%struct.jme_adapter*, i32*, i32, i32) #1

declare dso_local i32 @mdio_memcpy(%struct.jme_adapter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
