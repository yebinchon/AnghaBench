; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_multicast_addr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_multicast_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EMAC_HASH_TAB_REG0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emac_mac_multicast_addr_set(%struct.emac_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.emac_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @ether_crc(i32 %9, i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 31
  %14 = and i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 26
  %17 = and i32 %16, 31
  store i32 %17, i32* %6, align 4
  %18 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EMAC_HASH_TAB_REG0, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EMAC_HASH_TAB_REG0, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = call i32 @writel(i32 %32, i64 %41)
  ret void
}

declare dso_local i32 @ether_crc(i32, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
