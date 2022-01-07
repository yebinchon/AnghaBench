; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_start_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_start_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@FTGMAC100_OFFSET_MACCR = common dso_local global i64 0, align 8
@FTGMAC100_MACCR_FAST_MODE = common dso_local global i32 0, align 4
@FTGMAC100_MACCR_GIGA_MODE = common dso_local global i32 0, align 4
@FTGMAC100_MACCR_TXDMA_EN = common dso_local global i32 0, align 4
@FTGMAC100_MACCR_RXDMA_EN = common dso_local global i32 0, align 4
@FTGMAC100_MACCR_TXMAC_EN = common dso_local global i32 0, align 4
@FTGMAC100_MACCR_RXMAC_EN = common dso_local global i32 0, align 4
@FTGMAC100_MACCR_CRC_APD = common dso_local global i32 0, align 4
@FTGMAC100_MACCR_PHY_LINK_LEVEL = common dso_local global i32 0, align 4
@FTGMAC100_MACCR_RX_RUNT = common dso_local global i32 0, align 4
@FTGMAC100_MACCR_RX_BROADPKT = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@FTGMAC100_MACCR_FULLDUP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@FTGMAC100_MACCR_RX_ALL = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@FTGMAC100_MACCR_RX_MULTIPKT = common dso_local global i32 0, align 4
@FTGMAC100_MACCR_HT_MULTI_EN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@FTGMAC100_MACCR_RM_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftgmac100*)* @ftgmac100_start_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftgmac100_start_hw(%struct.ftgmac100* %0) #0 {
  %2 = alloca %struct.ftgmac100*, align 8
  %3 = alloca i32, align 4
  store %struct.ftgmac100* %0, %struct.ftgmac100** %2, align 8
  %4 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %5 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FTGMAC100_OFFSET_MACCR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @ioread32(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @FTGMAC100_MACCR_FAST_MODE, align 4
  %11 = load i32, i32* @FTGMAC100_MACCR_GIGA_MODE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @FTGMAC100_MACCR_TXDMA_EN, align 4
  %16 = load i32, i32* @FTGMAC100_MACCR_RXDMA_EN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FTGMAC100_MACCR_TXMAC_EN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FTGMAC100_MACCR_RXMAC_EN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FTGMAC100_MACCR_CRC_APD, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @FTGMAC100_MACCR_PHY_LINK_LEVEL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FTGMAC100_MACCR_RX_RUNT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FTGMAC100_MACCR_RX_BROADPKT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %33 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DUPLEX_FULL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @FTGMAC100_MACCR_FULLDUP, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %1
  %42 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %43 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFF_PROMISC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load i32, i32* @FTGMAC100_MACCR_RX_ALL, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %41
  %55 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %56 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IFF_ALLMULTI, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load i32, i32* @FTGMAC100_MACCR_RX_MULTIPKT, align 4
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %78

67:                                               ; preds = %54
  %68 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %69 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = call i64 @netdev_mc_count(%struct.TYPE_2__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @FTGMAC100_MACCR_HT_MULTI_EN, align 4
  %75 = load i32, i32* %3, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %67
  br label %78

78:                                               ; preds = %77, %63
  %79 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %80 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load i32, i32* @FTGMAC100_MACCR_RM_VLAN, align 4
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %78
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %94 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FTGMAC100_OFFSET_MACCR, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @iowrite32(i32 %92, i64 %97)
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @netdev_mc_count(%struct.TYPE_2__*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
