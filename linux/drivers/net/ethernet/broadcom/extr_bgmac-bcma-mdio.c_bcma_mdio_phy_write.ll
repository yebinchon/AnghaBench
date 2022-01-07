; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma-mdio.c_bcma_mdio_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma-mdio.c_bcma_mdio_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.bcma_device* }
%struct.bcma_device = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.bcma_device* }
%struct.TYPE_5__ = type { i64 }

@BCMA_CORE_4706_MAC_GBIT = common dso_local global i64 0, align 8
@BCMA_GMAC_CMN_PHY_ACCESS = common dso_local global i32 0, align 4
@BCMA_GMAC_CMN_PHY_CTL = common dso_local global i32 0, align 4
@BGMAC_PHY_ACCESS = common dso_local global i32 0, align 4
@BGMAC_PHY_CNTL = common dso_local global i32 0, align 4
@BGMAC_PC_EPA_MASK = common dso_local global i32 0, align 4
@BGMAC_INT_STATUS = common dso_local global i32 0, align 4
@BGMAC_IS_MDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error setting MDIO int\0A\00", align 1
@BGMAC_PA_START = common dso_local global i32 0, align 4
@BGMAC_PA_WRITE = common dso_local global i32 0, align 4
@BGMAC_PA_ADDR_SHIFT = common dso_local global i32 0, align 4
@BGMAC_PA_REG_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Writing to PHY %d register 0x%X failed\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgmac*, i32, i32, i32)* @bcma_mdio_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_mdio_phy_write(%struct.bgmac* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bgmac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcma_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.bgmac*, %struct.bgmac** %6, align 8
  %15 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.bcma_device*, %struct.bcma_device** %16, align 8
  %18 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BCMA_CORE_4706_MAC_GBIT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load %struct.bgmac*, %struct.bgmac** %6, align 8
  %25 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.bcma_device*, %struct.bcma_device** %26, align 8
  %28 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.bcma_device*, %struct.bcma_device** %31, align 8
  store %struct.bcma_device* %32, %struct.bcma_device** %10, align 8
  %33 = load i32, i32* @BCMA_GMAC_CMN_PHY_ACCESS, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @BCMA_GMAC_CMN_PHY_CTL, align 4
  store i32 %34, i32* %12, align 4
  br label %42

35:                                               ; preds = %4
  %36 = load %struct.bgmac*, %struct.bgmac** %6, align 8
  %37 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load %struct.bcma_device*, %struct.bcma_device** %38, align 8
  store %struct.bcma_device* %39, %struct.bcma_device** %10, align 8
  %40 = load i32, i32* @BGMAC_PHY_ACCESS, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @BGMAC_PHY_CNTL, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %35, %23
  %43 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @bcma_read32(%struct.bcma_device* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* @BGMAC_PC_EPA_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @bcma_write32(%struct.bcma_device* %53, i32 %54, i32 %55)
  %57 = load %struct.bgmac*, %struct.bgmac** %6, align 8
  %58 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.bcma_device*, %struct.bcma_device** %59, align 8
  %61 = load i32, i32* @BGMAC_INT_STATUS, align 4
  %62 = load i32, i32* @BGMAC_IS_MDIO, align 4
  %63 = call i32 @bcma_write32(%struct.bcma_device* %60, i32 %61, i32 %62)
  %64 = load %struct.bgmac*, %struct.bgmac** %6, align 8
  %65 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.bcma_device*, %struct.bcma_device** %66, align 8
  %68 = load i32, i32* @BGMAC_INT_STATUS, align 4
  %69 = call i32 @bcma_read32(%struct.bcma_device* %67, i32 %68)
  %70 = load i32, i32* @BGMAC_IS_MDIO, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %42
  %74 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %75 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %74, i32 0, i32 0
  %76 = call i32 @dev_warn(i32* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %42
  %78 = load i32, i32* @BGMAC_PA_START, align 4
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* @BGMAC_PA_WRITE, align 4
  %80 = load i32, i32* %13, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @BGMAC_PA_ADDR_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* %13, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @BGMAC_PA_REG_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = load i32, i32* %13, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %13, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %13, align 4
  %95 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @bcma_write32(%struct.bcma_device* %95, i32 %96, i32 %97)
  %99 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @BGMAC_PA_START, align 4
  %102 = call i32 @bcma_mdio_wait_value(%struct.bcma_device* %99, i32 %100, i32 %101, i32 0, i32 1000)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %77
  %105 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %106 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %105, i32 0, i32 0
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load i32, i32* @ETIMEDOUT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %113

112:                                              ; preds = %77
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %104
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @bcma_mdio_wait_value(%struct.bcma_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
