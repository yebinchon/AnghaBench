; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_sgmii_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_sgmii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lmac = type { i32, i32, i64, i64 }

@BGX_GMP_GMI_TXX_THRESH = common dso_local global i32 0, align 4
@BGX_GMP_GMI_RXX_JABBER = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@BGX_GMP_GMI_TXX_APPEND = common dso_local global i32 0, align 4
@BGX_GMP_GMI_TXX_SGMII_CTL = common dso_local global i32 0, align 4
@BGX_CMRX_CFG = common dso_local global i32 0, align 4
@CMR_EN = common dso_local global i32 0, align 4
@BGX_GMP_PCS_MRX_CTL = common dso_local global i32 0, align 4
@PCS_MRX_CTL_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"BGX PCS reset not completed\0A\00", align 1
@PCS_MRX_CTL_PWR_DN = common dso_local global i32 0, align 4
@PCS_MRX_CTL_RST_AN = common dso_local global i32 0, align 4
@PCS_MRX_CTL_AN_EN = common dso_local global i32 0, align 4
@BGX_MODE_QSGMII = common dso_local global i64 0, align 8
@BGX_GMP_PCS_MISCX_CTL = common dso_local global i32 0, align 4
@PCS_MISC_CTL_DISP_EN = common dso_local global i32 0, align 4
@BGX_MODE_SGMII = common dso_local global i64 0, align 8
@BGX_GMP_PCS_MRX_STATUS = common dso_local global i32 0, align 4
@PCS_MRX_STATUS_AN_CPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"BGX AN_CPT not completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgx*, %struct.lmac*)* @bgx_lmac_sgmii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgx_lmac_sgmii_init(%struct.bgx* %0, %struct.lmac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bgx*, align 8
  %5 = alloca %struct.lmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bgx* %0, %struct.bgx** %4, align 8
  store %struct.lmac* %1, %struct.lmac** %5, align 8
  %8 = load %struct.lmac*, %struct.lmac** %5, align 8
  %9 = getelementptr inbounds %struct.lmac, %struct.lmac* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.bgx*, %struct.bgx** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @BGX_GMP_GMI_TXX_THRESH, align 4
  %14 = call i32 @bgx_reg_modify(%struct.bgx* %11, i32 %12, i32 %13, i32 48)
  %15 = load %struct.bgx*, %struct.bgx** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @BGX_GMP_GMI_RXX_JABBER, align 4
  %18 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %19 = call i32 @bgx_reg_modify(%struct.bgx* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.bgx*, %struct.bgx** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @BGX_GMP_GMI_TXX_APPEND, align 4
  %23 = call i32 @bgx_reg_read(%struct.bgx* %20, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.bgx*, %struct.bgx** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @BGX_GMP_GMI_TXX_SGMII_CTL, align 4
  %31 = call i32 @bgx_reg_write(%struct.bgx* %28, i32 %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %27, %2
  %33 = load %struct.bgx*, %struct.bgx** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @BGX_CMRX_CFG, align 4
  %36 = load i32, i32* @CMR_EN, align 4
  %37 = call i32 @bgx_reg_modify(%struct.bgx* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.bgx*, %struct.bgx** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @BGX_GMP_PCS_MRX_CTL, align 4
  %41 = load i32, i32* @PCS_MRX_CTL_RESET, align 4
  %42 = call i32 @bgx_reg_modify(%struct.bgx* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.bgx*, %struct.bgx** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @BGX_GMP_PCS_MRX_CTL, align 4
  %46 = load i32, i32* @PCS_MRX_CTL_RESET, align 4
  %47 = call i64 @bgx_poll_reg(%struct.bgx* %43, i32 %44, i32 %45, i32 %46, i32 1)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %32
  %50 = load %struct.bgx*, %struct.bgx** %4, align 8
  %51 = getelementptr inbounds %struct.bgx, %struct.bgx* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %135

55:                                               ; preds = %32
  %56 = load %struct.bgx*, %struct.bgx** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @BGX_GMP_PCS_MRX_CTL, align 4
  %59 = call i32 @bgx_reg_read(%struct.bgx* %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @PCS_MRX_CTL_PWR_DN, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @PCS_MRX_CTL_RST_AN, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.lmac*, %struct.lmac** %5, align 8
  %68 = getelementptr inbounds %struct.lmac, %struct.lmac* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %55
  %72 = load i32, i32* @PCS_MRX_CTL_AN_EN, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %84

75:                                               ; preds = %55
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @PCS_MRX_CTL_AN_EN, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.lmac*, %struct.lmac** %5, align 8
  %82 = getelementptr inbounds %struct.lmac, %struct.lmac* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %71
  %85 = load %struct.bgx*, %struct.bgx** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @BGX_GMP_PCS_MRX_CTL, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @bgx_reg_write(%struct.bgx* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.lmac*, %struct.lmac** %5, align 8
  %91 = getelementptr inbounds %struct.lmac, %struct.lmac* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BGX_MODE_QSGMII, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %84
  %96 = load %struct.bgx*, %struct.bgx** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @BGX_GMP_PCS_MISCX_CTL, align 4
  %99 = call i32 @bgx_reg_read(%struct.bgx* %96, i32 %97, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* @PCS_MISC_CTL_DISP_EN, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load %struct.bgx*, %struct.bgx** %4, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @BGX_GMP_PCS_MISCX_CTL, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @bgx_reg_write(%struct.bgx* %104, i32 %105, i32 %106, i32 %107)
  store i32 0, i32* %3, align 4
  br label %135

109:                                              ; preds = %84
  %110 = load %struct.lmac*, %struct.lmac** %5, align 8
  %111 = getelementptr inbounds %struct.lmac, %struct.lmac* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @BGX_MODE_SGMII, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %109
  %116 = load %struct.lmac*, %struct.lmac** %5, align 8
  %117 = getelementptr inbounds %struct.lmac, %struct.lmac* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load %struct.bgx*, %struct.bgx** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @BGX_GMP_PCS_MRX_STATUS, align 4
  %124 = load i32, i32* @PCS_MRX_STATUS_AN_CPT, align 4
  %125 = call i64 @bgx_poll_reg(%struct.bgx* %121, i32 %122, i32 %123, i32 %124, i32 0)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load %struct.bgx*, %struct.bgx** %4, align 8
  %129 = getelementptr inbounds %struct.bgx, %struct.bgx* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %135

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %115, %109
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %127, %95, %49
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @bgx_reg_modify(%struct.bgx*, i32, i32, i32) #1

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i32, i32) #1

declare dso_local i64 @bgx_poll_reg(%struct.bgx*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
