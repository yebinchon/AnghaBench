; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-common.c_xlgmac_get_all_hw_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-common.c_xlgmac_get_all_hw_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i64, %struct.xlgmac_hw_features }
%struct.xlgmac_hw_features = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@MAC_HWF0R = common dso_local global i64 0, align 8
@MAC_HWF1R = common dso_local global i64 0, align 8
@MAC_HWF2R = common dso_local global i64 0, align 8
@MAC_VR = common dso_local global i64 0, align 8
@MAC_HWF0R_PHYIFSEL_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_PHYIFSEL_LEN = common dso_local global i32 0, align 4
@MAC_HWF0R_VLHASH_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_VLHASH_LEN = common dso_local global i32 0, align 4
@MAC_HWF0R_SMASEL_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_SMASEL_LEN = common dso_local global i32 0, align 4
@MAC_HWF0R_RWKSEL_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_RWKSEL_LEN = common dso_local global i32 0, align 4
@MAC_HWF0R_MGKSEL_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_MGKSEL_LEN = common dso_local global i32 0, align 4
@MAC_HWF0R_MMCSEL_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_MMCSEL_LEN = common dso_local global i32 0, align 4
@MAC_HWF0R_ARPOFFSEL_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_ARPOFFSEL_LEN = common dso_local global i32 0, align 4
@MAC_HWF0R_TSSEL_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_TSSEL_LEN = common dso_local global i32 0, align 4
@MAC_HWF0R_EEESEL_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_EEESEL_LEN = common dso_local global i32 0, align 4
@MAC_HWF0R_TXCOESEL_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_TXCOESEL_LEN = common dso_local global i32 0, align 4
@MAC_HWF0R_RXCOESEL_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_RXCOESEL_LEN = common dso_local global i32 0, align 4
@MAC_HWF0R_ADDMACADRSEL_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_ADDMACADRSEL_LEN = common dso_local global i32 0, align 4
@MAC_HWF0R_TSSTSSEL_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_TSSTSSEL_LEN = common dso_local global i32 0, align 4
@MAC_HWF0R_SAVLANINS_POS = common dso_local global i32 0, align 4
@MAC_HWF0R_SAVLANINS_LEN = common dso_local global i32 0, align 4
@MAC_HWF1R_RXFIFOSIZE_POS = common dso_local global i32 0, align 4
@MAC_HWF1R_RXFIFOSIZE_LEN = common dso_local global i32 0, align 4
@MAC_HWF1R_TXFIFOSIZE_POS = common dso_local global i32 0, align 4
@MAC_HWF1R_TXFIFOSIZE_LEN = common dso_local global i32 0, align 4
@MAC_HWF1R_ADVTHWORD_POS = common dso_local global i32 0, align 4
@MAC_HWF1R_ADVTHWORD_LEN = common dso_local global i32 0, align 4
@MAC_HWF1R_ADDR64_POS = common dso_local global i32 0, align 4
@MAC_HWF1R_ADDR64_LEN = common dso_local global i32 0, align 4
@MAC_HWF1R_DCBEN_POS = common dso_local global i32 0, align 4
@MAC_HWF1R_DCBEN_LEN = common dso_local global i32 0, align 4
@MAC_HWF1R_SPHEN_POS = common dso_local global i32 0, align 4
@MAC_HWF1R_SPHEN_LEN = common dso_local global i32 0, align 4
@MAC_HWF1R_TSOEN_POS = common dso_local global i32 0, align 4
@MAC_HWF1R_TSOEN_LEN = common dso_local global i32 0, align 4
@MAC_HWF1R_DBGMEMA_POS = common dso_local global i32 0, align 4
@MAC_HWF1R_DBGMEMA_LEN = common dso_local global i32 0, align 4
@MAC_HWF1R_RSSEN_POS = common dso_local global i32 0, align 4
@MAC_HWF1R_RSSEN_LEN = common dso_local global i32 0, align 4
@MAC_HWF1R_NUMTC_POS = common dso_local global i32 0, align 4
@MAC_HWF1R_NUMTC_LEN = common dso_local global i32 0, align 4
@MAC_HWF1R_HASHTBLSZ_POS = common dso_local global i32 0, align 4
@MAC_HWF1R_HASHTBLSZ_LEN = common dso_local global i32 0, align 4
@MAC_HWF1R_L3L4FNUM_POS = common dso_local global i32 0, align 4
@MAC_HWF1R_L3L4FNUM_LEN = common dso_local global i32 0, align 4
@MAC_HWF2R_RXQCNT_POS = common dso_local global i32 0, align 4
@MAC_HWF2R_RXQCNT_LEN = common dso_local global i32 0, align 4
@MAC_HWF2R_TXQCNT_POS = common dso_local global i32 0, align 4
@MAC_HWF2R_TXQCNT_LEN = common dso_local global i32 0, align 4
@MAC_HWF2R_RXCHCNT_POS = common dso_local global i32 0, align 4
@MAC_HWF2R_RXCHCNT_LEN = common dso_local global i32 0, align 4
@MAC_HWF2R_TXCHCNT_POS = common dso_local global i32 0, align 4
@MAC_HWF2R_TXCHCNT_LEN = common dso_local global i32 0, align 4
@MAC_HWF2R_PPSOUTNUM_POS = common dso_local global i32 0, align 4
@MAC_HWF2R_PPSOUTNUM_LEN = common dso_local global i32 0, align 4
@MAC_HWF2R_AUXSNAPNUM_POS = common dso_local global i32 0, align 4
@MAC_HWF2R_AUXSNAPNUM_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xlgmac_get_all_hw_features(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca %struct.xlgmac_hw_features*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %7 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %8 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %7, i32 0, i32 1
  store %struct.xlgmac_hw_features* %8, %struct.xlgmac_hw_features** %3, align 8
  %9 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %10 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MAC_HWF0R, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i8* @readl(i64 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %17 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MAC_HWF1R, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i8* @readl(i64 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %24 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAC_HWF2R, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i8* @readl(i64 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %31 = call i32 @memset(%struct.xlgmac_hw_features* %30, i32 0, i32 256)
  %32 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %33 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MAC_VR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i8* @readl(i64 %36)
  %38 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %39 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %38, i32 0, i32 32
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @MAC_HWF0R_PHYIFSEL_POS, align 4
  %42 = load i32, i32* @MAC_HWF0R_PHYIFSEL_LEN, align 4
  %43 = call i8* @XLGMAC_GET_REG_BITS(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %45 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %44, i32 0, i32 31
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @MAC_HWF0R_VLHASH_POS, align 4
  %48 = load i32, i32* @MAC_HWF0R_VLHASH_LEN, align 4
  %49 = call i8* @XLGMAC_GET_REG_BITS(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %51 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %50, i32 0, i32 30
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @MAC_HWF0R_SMASEL_POS, align 4
  %54 = load i32, i32* @MAC_HWF0R_SMASEL_LEN, align 4
  %55 = call i8* @XLGMAC_GET_REG_BITS(i32 %52, i32 %53, i32 %54)
  %56 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %57 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %56, i32 0, i32 29
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @MAC_HWF0R_RWKSEL_POS, align 4
  %60 = load i32, i32* @MAC_HWF0R_RWKSEL_LEN, align 4
  %61 = call i8* @XLGMAC_GET_REG_BITS(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %63 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %62, i32 0, i32 28
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @MAC_HWF0R_MGKSEL_POS, align 4
  %66 = load i32, i32* @MAC_HWF0R_MGKSEL_LEN, align 4
  %67 = call i8* @XLGMAC_GET_REG_BITS(i32 %64, i32 %65, i32 %66)
  %68 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %69 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %68, i32 0, i32 27
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @MAC_HWF0R_MMCSEL_POS, align 4
  %72 = load i32, i32* @MAC_HWF0R_MMCSEL_LEN, align 4
  %73 = call i8* @XLGMAC_GET_REG_BITS(i32 %70, i32 %71, i32 %72)
  %74 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %75 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %74, i32 0, i32 26
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @MAC_HWF0R_ARPOFFSEL_POS, align 4
  %78 = load i32, i32* @MAC_HWF0R_ARPOFFSEL_LEN, align 4
  %79 = call i8* @XLGMAC_GET_REG_BITS(i32 %76, i32 %77, i32 %78)
  %80 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %81 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %80, i32 0, i32 25
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @MAC_HWF0R_TSSEL_POS, align 4
  %84 = load i32, i32* @MAC_HWF0R_TSSEL_LEN, align 4
  %85 = call i8* @XLGMAC_GET_REG_BITS(i32 %82, i32 %83, i32 %84)
  %86 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %87 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %86, i32 0, i32 24
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @MAC_HWF0R_EEESEL_POS, align 4
  %90 = load i32, i32* @MAC_HWF0R_EEESEL_LEN, align 4
  %91 = call i8* @XLGMAC_GET_REG_BITS(i32 %88, i32 %89, i32 %90)
  %92 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %93 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %92, i32 0, i32 23
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @MAC_HWF0R_TXCOESEL_POS, align 4
  %96 = load i32, i32* @MAC_HWF0R_TXCOESEL_LEN, align 4
  %97 = call i8* @XLGMAC_GET_REG_BITS(i32 %94, i32 %95, i32 %96)
  %98 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %99 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %98, i32 0, i32 22
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @MAC_HWF0R_RXCOESEL_POS, align 4
  %102 = load i32, i32* @MAC_HWF0R_RXCOESEL_LEN, align 4
  %103 = call i8* @XLGMAC_GET_REG_BITS(i32 %100, i32 %101, i32 %102)
  %104 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %105 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %104, i32 0, i32 21
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @MAC_HWF0R_ADDMACADRSEL_POS, align 4
  %108 = load i32, i32* @MAC_HWF0R_ADDMACADRSEL_LEN, align 4
  %109 = call i8* @XLGMAC_GET_REG_BITS(i32 %106, i32 %107, i32 %108)
  %110 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %111 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %110, i32 0, i32 20
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @MAC_HWF0R_TSSTSSEL_POS, align 4
  %114 = load i32, i32* @MAC_HWF0R_TSSTSSEL_LEN, align 4
  %115 = call i8* @XLGMAC_GET_REG_BITS(i32 %112, i32 %113, i32 %114)
  %116 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %117 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %116, i32 0, i32 19
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @MAC_HWF0R_SAVLANINS_POS, align 4
  %120 = load i32, i32* @MAC_HWF0R_SAVLANINS_LEN, align 4
  %121 = call i8* @XLGMAC_GET_REG_BITS(i32 %118, i32 %119, i32 %120)
  %122 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %123 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %122, i32 0, i32 18
  store i8* %121, i8** %123, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @MAC_HWF1R_RXFIFOSIZE_POS, align 4
  %126 = load i32, i32* @MAC_HWF1R_RXFIFOSIZE_LEN, align 4
  %127 = call i8* @XLGMAC_GET_REG_BITS(i32 %124, i32 %125, i32 %126)
  %128 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %129 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %128, i32 0, i32 17
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @MAC_HWF1R_TXFIFOSIZE_POS, align 4
  %132 = load i32, i32* @MAC_HWF1R_TXFIFOSIZE_LEN, align 4
  %133 = call i8* @XLGMAC_GET_REG_BITS(i32 %130, i32 %131, i32 %132)
  %134 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %135 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %134, i32 0, i32 16
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @MAC_HWF1R_ADVTHWORD_POS, align 4
  %138 = load i32, i32* @MAC_HWF1R_ADVTHWORD_LEN, align 4
  %139 = call i8* @XLGMAC_GET_REG_BITS(i32 %136, i32 %137, i32 %138)
  %140 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %141 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %140, i32 0, i32 15
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @MAC_HWF1R_ADDR64_POS, align 4
  %144 = load i32, i32* @MAC_HWF1R_ADDR64_LEN, align 4
  %145 = call i8* @XLGMAC_GET_REG_BITS(i32 %142, i32 %143, i32 %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %148 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @MAC_HWF1R_DCBEN_POS, align 4
  %151 = load i32, i32* @MAC_HWF1R_DCBEN_LEN, align 4
  %152 = call i8* @XLGMAC_GET_REG_BITS(i32 %149, i32 %150, i32 %151)
  %153 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %154 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %153, i32 0, i32 14
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @MAC_HWF1R_SPHEN_POS, align 4
  %157 = load i32, i32* @MAC_HWF1R_SPHEN_LEN, align 4
  %158 = call i8* @XLGMAC_GET_REG_BITS(i32 %155, i32 %156, i32 %157)
  %159 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %160 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %159, i32 0, i32 13
  store i8* %158, i8** %160, align 8
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @MAC_HWF1R_TSOEN_POS, align 4
  %163 = load i32, i32* @MAC_HWF1R_TSOEN_LEN, align 4
  %164 = call i8* @XLGMAC_GET_REG_BITS(i32 %161, i32 %162, i32 %163)
  %165 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %166 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %165, i32 0, i32 12
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @MAC_HWF1R_DBGMEMA_POS, align 4
  %169 = load i32, i32* @MAC_HWF1R_DBGMEMA_LEN, align 4
  %170 = call i8* @XLGMAC_GET_REG_BITS(i32 %167, i32 %168, i32 %169)
  %171 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %172 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %171, i32 0, i32 11
  store i8* %170, i8** %172, align 8
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* @MAC_HWF1R_RSSEN_POS, align 4
  %175 = load i32, i32* @MAC_HWF1R_RSSEN_LEN, align 4
  %176 = call i8* @XLGMAC_GET_REG_BITS(i32 %173, i32 %174, i32 %175)
  %177 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %178 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %177, i32 0, i32 10
  store i8* %176, i8** %178, align 8
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @MAC_HWF1R_NUMTC_POS, align 4
  %181 = load i32, i32* @MAC_HWF1R_NUMTC_LEN, align 4
  %182 = call i8* @XLGMAC_GET_REG_BITS(i32 %179, i32 %180, i32 %181)
  %183 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %184 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %183, i32 0, i32 2
  store i8* %182, i8** %184, align 8
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* @MAC_HWF1R_HASHTBLSZ_POS, align 4
  %187 = load i32, i32* @MAC_HWF1R_HASHTBLSZ_LEN, align 4
  %188 = call i8* @XLGMAC_GET_REG_BITS(i32 %185, i32 %186, i32 %187)
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %191 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @MAC_HWF1R_L3L4FNUM_POS, align 4
  %194 = load i32, i32* @MAC_HWF1R_L3L4FNUM_LEN, align 4
  %195 = call i8* @XLGMAC_GET_REG_BITS(i32 %192, i32 %193, i32 %194)
  %196 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %197 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %196, i32 0, i32 9
  store i8* %195, i8** %197, align 8
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @MAC_HWF2R_RXQCNT_POS, align 4
  %200 = load i32, i32* @MAC_HWF2R_RXQCNT_LEN, align 4
  %201 = call i8* @XLGMAC_GET_REG_BITS(i32 %198, i32 %199, i32 %200)
  %202 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %203 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %202, i32 0, i32 6
  store i8* %201, i8** %203, align 8
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* @MAC_HWF2R_TXQCNT_POS, align 4
  %206 = load i32, i32* @MAC_HWF2R_TXQCNT_LEN, align 4
  %207 = call i8* @XLGMAC_GET_REG_BITS(i32 %204, i32 %205, i32 %206)
  %208 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %209 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %208, i32 0, i32 5
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @MAC_HWF2R_RXCHCNT_POS, align 4
  %212 = load i32, i32* @MAC_HWF2R_RXCHCNT_LEN, align 4
  %213 = call i8* @XLGMAC_GET_REG_BITS(i32 %210, i32 %211, i32 %212)
  %214 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %215 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %214, i32 0, i32 4
  store i8* %213, i8** %215, align 8
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* @MAC_HWF2R_TXCHCNT_POS, align 4
  %218 = load i32, i32* @MAC_HWF2R_TXCHCNT_LEN, align 4
  %219 = call i8* @XLGMAC_GET_REG_BITS(i32 %216, i32 %217, i32 %218)
  %220 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %221 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %220, i32 0, i32 3
  store i8* %219, i8** %221, align 8
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* @MAC_HWF2R_PPSOUTNUM_POS, align 4
  %224 = load i32, i32* @MAC_HWF2R_PPSOUTNUM_LEN, align 4
  %225 = call i8* @XLGMAC_GET_REG_BITS(i32 %222, i32 %223, i32 %224)
  %226 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %227 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %226, i32 0, i32 8
  store i8* %225, i8** %227, align 8
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* @MAC_HWF2R_AUXSNAPNUM_POS, align 4
  %230 = load i32, i32* @MAC_HWF2R_AUXSNAPNUM_LEN, align 4
  %231 = call i8* @XLGMAC_GET_REG_BITS(i32 %228, i32 %229, i32 %230)
  %232 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %233 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %232, i32 0, i32 7
  store i8* %231, i8** %233, align 8
  %234 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %235 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  switch i32 %236, label %247 [
    i32 0, label %237
    i32 1, label %238
    i32 2, label %241
    i32 3, label %244
  ]

237:                                              ; preds = %1
  br label %247

238:                                              ; preds = %1
  %239 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %240 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %239, i32 0, i32 1
  store i32 64, i32* %240, align 4
  br label %247

241:                                              ; preds = %1
  %242 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %243 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %242, i32 0, i32 1
  store i32 128, i32* %243, align 4
  br label %247

244:                                              ; preds = %1
  %245 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %246 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %245, i32 0, i32 1
  store i32 256, i32* %246, align 4
  br label %247

247:                                              ; preds = %1, %244, %241, %238, %237
  %248 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %249 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  switch i32 %250, label %260 [
    i32 0, label %251
    i32 1, label %254
    i32 2, label %257
  ]

251:                                              ; preds = %247
  %252 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %253 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %252, i32 0, i32 0
  store i32 32, i32* %253, align 8
  br label %263

254:                                              ; preds = %247
  %255 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %256 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %255, i32 0, i32 0
  store i32 40, i32* %256, align 8
  br label %263

257:                                              ; preds = %247
  %258 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %259 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %258, i32 0, i32 0
  store i32 48, i32* %259, align 8
  br label %263

260:                                              ; preds = %247
  %261 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %262 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %261, i32 0, i32 0
  store i32 32, i32* %262, align 8
  br label %263

263:                                              ; preds = %260, %257, %254, %251
  %264 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %265 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %264, i32 0, i32 6
  %266 = load i8*, i8** %265, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %265, align 8
  %268 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %269 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %268, i32 0, i32 5
  %270 = load i8*, i8** %269, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %269, align 8
  %272 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %273 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %272, i32 0, i32 4
  %274 = load i8*, i8** %273, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %273, align 8
  %276 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %277 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %276, i32 0, i32 3
  %278 = load i8*, i8** %277, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %277, align 8
  %280 = load %struct.xlgmac_hw_features*, %struct.xlgmac_hw_features** %3, align 8
  %281 = getelementptr inbounds %struct.xlgmac_hw_features, %struct.xlgmac_hw_features* %280, i32 0, i32 2
  %282 = load i8*, i8** %281, align 8
  %283 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %283, i8** %281, align 8
  ret void
}

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @memset(%struct.xlgmac_hw_features*, i32, i32) #1

declare dso_local i8* @XLGMAC_GET_REG_BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
