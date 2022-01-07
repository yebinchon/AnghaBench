; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma-mdio.c_bcma_mdio_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma-mdio.c_bcma_mdio_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.bcma_device* }
%struct.bcma_device = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.bcma_device* }
%struct.TYPE_5__ = type { i64 }

@BGMAC_PA_DATA_MASK = common dso_local global i32 0, align 4
@BCMA_GMAC_CMN_PA_DATA_MASK = common dso_local global i32 0, align 4
@BGMAC_PA_ADDR_MASK = common dso_local global i64 0, align 8
@BCMA_GMAC_CMN_PA_ADDR_MASK = common dso_local global i64 0, align 8
@BGMAC_PA_ADDR_SHIFT = common dso_local global i32 0, align 4
@BCMA_GMAC_CMN_PA_ADDR_SHIFT = common dso_local global i32 0, align 4
@BGMAC_PA_REG_MASK = common dso_local global i64 0, align 8
@BCMA_GMAC_CMN_PA_REG_MASK = common dso_local global i64 0, align 8
@BGMAC_PA_REG_SHIFT = common dso_local global i32 0, align 4
@BCMA_GMAC_CMN_PA_REG_SHIFT = common dso_local global i32 0, align 4
@BGMAC_PA_WRITE = common dso_local global i64 0, align 8
@BCMA_GMAC_CMN_PA_WRITE = common dso_local global i64 0, align 8
@BGMAC_PA_START = common dso_local global i32 0, align 4
@BCMA_GMAC_CMN_PA_START = common dso_local global i32 0, align 4
@BGMAC_PC_EPA_MASK = common dso_local global i32 0, align 4
@BCMA_GMAC_CMN_PC_EPA_MASK = common dso_local global i32 0, align 4
@BGMAC_PC_MCT_MASK = common dso_local global i64 0, align 8
@BCMA_GMAC_CMN_PC_MCT_MASK = common dso_local global i64 0, align 8
@BGMAC_PC_MCT_SHIFT = common dso_local global i64 0, align 8
@BCMA_GMAC_CMN_PC_MCT_SHIFT = common dso_local global i64 0, align 8
@BGMAC_PC_MTE = common dso_local global i64 0, align 8
@BCMA_GMAC_CMN_PC_MTE = common dso_local global i64 0, align 8
@BCMA_CORE_4706_MAC_GBIT = common dso_local global i64 0, align 8
@BCMA_GMAC_CMN_PHY_ACCESS = common dso_local global i32 0, align 4
@BCMA_GMAC_CMN_PHY_CTL = common dso_local global i32 0, align 4
@BGMAC_PHY_ACCESS = common dso_local global i32 0, align 4
@BGMAC_PHY_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Reading PHY %d register 0x%X failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgmac*, i32, i32)* @bcma_mdio_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_mdio_phy_read(%struct.bgmac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bgmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcma_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @BGMAC_PA_DATA_MASK, align 4
  %13 = load i32, i32* @BCMA_GMAC_CMN_PA_DATA_MASK, align 4
  %14 = icmp ne i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUILD_BUG_ON(i32 %15)
  %17 = load i64, i64* @BGMAC_PA_ADDR_MASK, align 8
  %18 = load i64, i64* @BCMA_GMAC_CMN_PA_ADDR_MASK, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUILD_BUG_ON(i32 %20)
  %22 = load i32, i32* @BGMAC_PA_ADDR_SHIFT, align 4
  %23 = load i32, i32* @BCMA_GMAC_CMN_PA_ADDR_SHIFT, align 4
  %24 = icmp ne i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUILD_BUG_ON(i32 %25)
  %27 = load i64, i64* @BGMAC_PA_REG_MASK, align 8
  %28 = load i64, i64* @BCMA_GMAC_CMN_PA_REG_MASK, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUILD_BUG_ON(i32 %30)
  %32 = load i32, i32* @BGMAC_PA_REG_SHIFT, align 4
  %33 = load i32, i32* @BCMA_GMAC_CMN_PA_REG_SHIFT, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUILD_BUG_ON(i32 %35)
  %37 = load i64, i64* @BGMAC_PA_WRITE, align 8
  %38 = load i64, i64* @BCMA_GMAC_CMN_PA_WRITE, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUILD_BUG_ON(i32 %40)
  %42 = load i32, i32* @BGMAC_PA_START, align 4
  %43 = load i32, i32* @BCMA_GMAC_CMN_PA_START, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUILD_BUG_ON(i32 %45)
  %47 = load i32, i32* @BGMAC_PC_EPA_MASK, align 4
  %48 = load i32, i32* @BCMA_GMAC_CMN_PC_EPA_MASK, align 4
  %49 = icmp ne i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUILD_BUG_ON(i32 %50)
  %52 = load i64, i64* @BGMAC_PC_MCT_MASK, align 8
  %53 = load i64, i64* @BCMA_GMAC_CMN_PC_MCT_MASK, align 8
  %54 = icmp ne i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUILD_BUG_ON(i32 %55)
  %57 = load i64, i64* @BGMAC_PC_MCT_SHIFT, align 8
  %58 = load i64, i64* @BCMA_GMAC_CMN_PC_MCT_SHIFT, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUILD_BUG_ON(i32 %60)
  %62 = load i64, i64* @BGMAC_PC_MTE, align 8
  %63 = load i64, i64* @BCMA_GMAC_CMN_PC_MTE, align 8
  %64 = icmp ne i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUILD_BUG_ON(i32 %65)
  %67 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %68 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load %struct.bcma_device*, %struct.bcma_device** %69, align 8
  %71 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BCMA_CORE_4706_MAC_GBIT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %3
  %77 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %78 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.bcma_device*, %struct.bcma_device** %79, align 8
  %81 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.bcma_device*, %struct.bcma_device** %84, align 8
  store %struct.bcma_device* %85, %struct.bcma_device** %8, align 8
  %86 = load i32, i32* @BCMA_GMAC_CMN_PHY_ACCESS, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* @BCMA_GMAC_CMN_PHY_CTL, align 4
  store i32 %87, i32* %10, align 4
  br label %95

88:                                               ; preds = %3
  %89 = load %struct.bgmac*, %struct.bgmac** %5, align 8
  %90 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.bcma_device*, %struct.bcma_device** %91, align 8
  store %struct.bcma_device* %92, %struct.bcma_device** %8, align 8
  %93 = load i32, i32* @BGMAC_PHY_ACCESS, align 4
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* @BGMAC_PHY_CNTL, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %88, %76
  %96 = load %struct.bcma_device*, %struct.bcma_device** %8, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @bcma_read32(%struct.bcma_device* %96, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* @BGMAC_PC_EPA_MASK, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %11, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load %struct.bcma_device*, %struct.bcma_device** %8, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @bcma_write32(%struct.bcma_device* %106, i32 %107, i32 %108)
  %110 = load i32, i32* @BGMAC_PA_START, align 4
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @BGMAC_PA_ADDR_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @BGMAC_PA_REG_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load %struct.bcma_device*, %struct.bcma_device** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @bcma_write32(%struct.bcma_device* %121, i32 %122, i32 %123)
  %125 = load %struct.bcma_device*, %struct.bcma_device** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @BGMAC_PA_START, align 4
  %128 = call i32 @bcma_mdio_wait_value(%struct.bcma_device* %125, i32 %126, i32 %127, i32 0, i32 1000)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %95
  %131 = load %struct.bcma_device*, %struct.bcma_device** %8, align 8
  %132 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %131, i32 0, i32 0
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %134)
  store i32 65535, i32* %4, align 4
  br label %142

136:                                              ; preds = %95
  %137 = load %struct.bcma_device*, %struct.bcma_device** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @bcma_read32(%struct.bcma_device* %137, i32 %138)
  %140 = load i32, i32* @BGMAC_PA_DATA_MASK, align 4
  %141 = and i32 %139, %140
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %136, %130
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @bcma_mdio_wait_value(%struct.bcma_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
