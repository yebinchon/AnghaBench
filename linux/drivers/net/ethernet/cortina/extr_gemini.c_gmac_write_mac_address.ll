; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_write_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_write_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gemini_ethernet_port = type { i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@GMAC_STA_ADD0 = common dso_local global i64 0, align 8
@GMAC_STA_ADD1 = common dso_local global i64 0, align 8
@GMAC_STA_ADD2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @gmac_write_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmac_write_mac_address(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gemini_ethernet_port*, align 8
  %4 = alloca [3 x i32], align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %5)
  store %struct.gemini_ethernet_port* %6, %struct.gemini_ethernet_port** %3, align 8
  %7 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %8 = call i32 @memset(i32* %7, i32 0, i32 12)
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = call i32 @memcpy(i32* %9, i32 %12, i32 %13)
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %19 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @GMAC_STA_ADD0, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %28 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GMAC_STA_ADD1, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %37 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GMAC_STA_ADD2, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  ret void
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
