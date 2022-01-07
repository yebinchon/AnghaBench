; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.gemini_ethernet_port = type { i32, i32, i64 }
%union.gmac_config0 = type { i32 }

@GMAC_CONFIG0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @gmac_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmac_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.gemini_ethernet_port*, align 8
  %6 = alloca %union.gmac_config0, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %7)
  store %struct.gemini_ethernet_port* %8, %struct.gemini_ethernet_port** %5, align 8
  %9 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %10 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @GMAC_CONFIG0, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  %15 = bitcast %union.gmac_config0* %6 to i32*
  store i32 %14, i32* %15, align 4
  %16 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %16, i32 0, i32 0
  store i32 32768, i32* %17, align 8
  %18 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %22, i32 0, i32 1
  store i32 32768, i32* %23, align 4
  %24 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %25 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 1, %26
  %28 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %35 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  ret void
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
