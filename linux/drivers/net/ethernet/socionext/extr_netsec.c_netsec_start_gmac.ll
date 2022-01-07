; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_start_gmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_start_gmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.phy_device* }
%struct.phy_device = type { i64 }

@SPEED_1000 = common dso_local global i64 0, align 8
@NETSEC_GMAC_MCR_REG_CST = common dso_local global i32 0, align 4
@NETSEC_GMAC_MCR_REG_HALF_DUPLEX_COMMON = common dso_local global i32 0, align 4
@GMAC_REG_MCR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@GMAC_REG_BMR = common dso_local global i32 0, align 4
@NETSEC_GMAC_BMR_REG_RESET = common dso_local global i32 0, align 4
@NETSEC_GMAC_BMR_REG_SWR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MAC_REG_DESC_SOFT_RST = common dso_local global i32 0, align 4
@MAC_REG_DESC_INIT = common dso_local global i32 0, align 4
@NETSEC_GMAC_BMR_REG_COMMON = common dso_local global i32 0, align 4
@GMAC_REG_RDLAR = common dso_local global i32 0, align 4
@NETSEC_GMAC_RDLAR_REG_COMMON = common dso_local global i32 0, align 4
@GMAC_REG_TDLAR = common dso_local global i32 0, align 4
@NETSEC_GMAC_TDLAR_REG_COMMON = common dso_local global i32 0, align 4
@GMAC_REG_MFFR = common dso_local global i32 0, align 4
@GMAC_REG_OMR = common dso_local global i32 0, align 4
@NETSEC_GMAC_OMR_REG_SR = common dso_local global i32 0, align 4
@NETSEC_GMAC_OMR_REG_ST = common dso_local global i32 0, align 4
@NETSEC_REG_NRM_RX_INTEN_CLR = common dso_local global i32 0, align 4
@NETSEC_REG_NRM_TX_INTEN_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netsec_priv*)* @netsec_start_gmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_start_gmac(%struct.netsec_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netsec_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.netsec_priv* %0, %struct.netsec_priv** %3, align 8
  %7 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %8 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPEED_1000, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @NETSEC_GMAC_MCR_REG_CST, align 4
  %19 = load i32, i32* @NETSEC_GMAC_MCR_REG_HALF_DUPLEX_COMMON, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %23 = load i32, i32* @GMAC_REG_MCR, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @netsec_mac_write(%struct.netsec_priv* %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %156

30:                                               ; preds = %21
  %31 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %32 = load i32, i32* @GMAC_REG_BMR, align 4
  %33 = load i32, i32* @NETSEC_GMAC_BMR_REG_RESET, align 4
  %34 = call i64 @netsec_mac_write(%struct.netsec_priv* %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %156

39:                                               ; preds = %30
  %40 = call i32 @usleep_range(i32 1000, i32 5000)
  %41 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %42 = load i32, i32* @GMAC_REG_BMR, align 4
  %43 = call i32 @netsec_mac_read(%struct.netsec_priv* %41, i32 %42, i32* %5)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %156

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @NETSEC_GMAC_BMR_REG_SWR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %156

56:                                               ; preds = %48
  %57 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %58 = load i32, i32* @MAC_REG_DESC_SOFT_RST, align 4
  %59 = call i32 @netsec_write(%struct.netsec_priv* %57, i32 %58, i32 1)
  %60 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %61 = load i32, i32* @MAC_REG_DESC_SOFT_RST, align 4
  %62 = call i64 @netsec_wait_while_busy(%struct.netsec_priv* %60, i32 %61, i32 1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %156

67:                                               ; preds = %56
  %68 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %69 = load i32, i32* @MAC_REG_DESC_INIT, align 4
  %70 = call i32 @netsec_write(%struct.netsec_priv* %68, i32 %69, i32 1)
  %71 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %72 = load i32, i32* @MAC_REG_DESC_INIT, align 4
  %73 = call i64 @netsec_wait_while_busy(%struct.netsec_priv* %71, i32 %72, i32 1)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @ETIMEDOUT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %156

78:                                               ; preds = %67
  %79 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %80 = load i32, i32* @GMAC_REG_BMR, align 4
  %81 = load i32, i32* @NETSEC_GMAC_BMR_REG_COMMON, align 4
  %82 = call i64 @netsec_mac_write(%struct.netsec_priv* %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %156

87:                                               ; preds = %78
  %88 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %89 = load i32, i32* @GMAC_REG_RDLAR, align 4
  %90 = load i32, i32* @NETSEC_GMAC_RDLAR_REG_COMMON, align 4
  %91 = call i64 @netsec_mac_write(%struct.netsec_priv* %88, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @ETIMEDOUT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %156

96:                                               ; preds = %87
  %97 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %98 = load i32, i32* @GMAC_REG_TDLAR, align 4
  %99 = load i32, i32* @NETSEC_GMAC_TDLAR_REG_COMMON, align 4
  %100 = call i64 @netsec_mac_write(%struct.netsec_priv* %97, i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @ETIMEDOUT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %156

105:                                              ; preds = %96
  %106 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %107 = load i32, i32* @GMAC_REG_MFFR, align 4
  %108 = call i64 @netsec_mac_write(%struct.netsec_priv* %106, i32 %107, i32 -2147483647)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* @ETIMEDOUT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %156

113:                                              ; preds = %105
  %114 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %115 = call i32 @netsec_mac_update_to_phy_state(%struct.netsec_priv* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %2, align 4
  br label %156

120:                                              ; preds = %113
  %121 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %122 = load i32, i32* @GMAC_REG_OMR, align 4
  %123 = call i32 @netsec_mac_read(%struct.netsec_priv* %121, i32 %122, i32* %5)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %2, align 4
  br label %156

128:                                              ; preds = %120
  %129 = load i32, i32* @NETSEC_GMAC_OMR_REG_SR, align 4
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* @NETSEC_GMAC_OMR_REG_ST, align 4
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %136 = load i32, i32* @NETSEC_REG_NRM_RX_INTEN_CLR, align 4
  %137 = call i32 @netsec_write(%struct.netsec_priv* %135, i32 %136, i32 -1)
  %138 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %139 = load i32, i32* @NETSEC_REG_NRM_TX_INTEN_CLR, align 4
  %140 = call i32 @netsec_write(%struct.netsec_priv* %138, i32 %139, i32 -1)
  %141 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %142 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %145 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %144, i32 0, i32 0
  %146 = call i32 @netsec_et_set_coalesce(%struct.TYPE_2__* %143, i32* %145)
  %147 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %148 = load i32, i32* @GMAC_REG_OMR, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i64 @netsec_mac_write(%struct.netsec_priv* %147, i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %128
  %153 = load i32, i32* @ETIMEDOUT, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %156

155:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %152, %126, %118, %110, %102, %93, %84, %75, %64, %53, %46, %36, %27
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i64 @netsec_mac_write(%struct.netsec_priv*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netsec_mac_read(%struct.netsec_priv*, i32, i32*) #1

declare dso_local i32 @netsec_write(%struct.netsec_priv*, i32, i32) #1

declare dso_local i64 @netsec_wait_while_busy(%struct.netsec_priv*, i32, i32) #1

declare dso_local i32 @netsec_mac_update_to_phy_state(%struct.netsec_priv*) #1

declare dso_local i32 @netsec_et_set_coalesce(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
