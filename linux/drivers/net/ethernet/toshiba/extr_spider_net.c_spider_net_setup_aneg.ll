; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_setup_aneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_setup_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { i32, %struct.mii_phy }
%struct.mii_phy = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.mii_phy*, i32)* }

@MII_BMSR = common dso_local global i32 0, align 4
@MII_ESTATUS = common dso_local global i32 0, align 4
@BMSR_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@BMSR_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@BMSR_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@BMSR_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@BMSR_ESTATEN = common dso_local global i32 0, align 4
@ESTATUS_1000_TFULL = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@ESTATUS_1000_THALF = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spider_net_card*)* @spider_net_setup_aneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_setup_aneg(%struct.spider_net_card* %0) #0 {
  %2 = alloca %struct.spider_net_card*, align 8
  %3 = alloca %struct.mii_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spider_net_card* %0, %struct.spider_net_card** %2, align 8
  %7 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %8 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %7, i32 0, i32 1
  store %struct.mii_phy* %8, %struct.mii_phy** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %10 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %13 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MII_BMSR, align 4
  %16 = call i32 @spider_net_read_phy(i32 %11, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %18 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %21 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MII_ESTATUS, align 4
  %24 = call i32 @spider_net_read_phy(i32 %19, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @BMSR_10HALF, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %1
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @BMSR_10FULL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @BMSR_100HALF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @BMSR_100FULL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @BMSR_ESTATEN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @ESTATUS_1000_TFULL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %65, %60
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @BMSR_ESTATEN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @ESTATUS_1000_THALF, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %79, %74
  %89 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %90 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %91 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @sungem_phy_probe(%struct.mii_phy* %89, i32 %92)
  %94 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %95 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32 (%struct.mii_phy*, i32)*, i32 (%struct.mii_phy*, i32)** %99, align 8
  %101 = load %struct.mii_phy*, %struct.mii_phy** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 %100(%struct.mii_phy* %101, i32 %102)
  ret void
}

declare dso_local i32 @spider_net_read_phy(i32, i32, i32) #1

declare dso_local i32 @sungem_phy_probe(%struct.mii_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
