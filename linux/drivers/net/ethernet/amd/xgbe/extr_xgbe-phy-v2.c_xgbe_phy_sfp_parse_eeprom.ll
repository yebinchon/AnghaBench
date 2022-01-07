; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_parse_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_parse_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i64, i32, i32, i32, i32, i32, %struct.xgbe_sfp_eeprom }
%struct.xgbe_sfp_eeprom = type { i32* }

@XGBE_SFP_BASE_ID = common dso_local global i64 0, align 8
@XGBE_SFP_ID_SFP = common dso_local global i32 0, align 4
@XGBE_SFP_BASE_EXT_ID = common dso_local global i64 0, align 8
@XGBE_SFP_EXT_ID_SFP = common dso_local global i32 0, align 4
@XGBE_SFP_BASE_CABLE = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_CABLE_PASSIVE = common dso_local global i32 0, align 4
@XGBE_SFP_CABLE_PASSIVE = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_CU_CABLE_LEN = common dso_local global i64 0, align 8
@XGBE_SFP_CABLE_ACTIVE = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_10GBE_CC = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_10GBE_CC_SR = common dso_local global i32 0, align 4
@XGBE_SFP_BASE_10GBE_CC_LR = common dso_local global i32 0, align 4
@XGBE_SFP_BASE_10GBE_CC_LRM = common dso_local global i32 0, align 4
@XGBE_SFP_BASE_10GBE_CC_ER = common dso_local global i32 0, align 4
@XGBE_SFP_BASE_1GBE_CC = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_1GBE_CC_SX = common dso_local global i32 0, align 4
@XGBE_SFP_BASE_1GBE_CC_LX = common dso_local global i32 0, align 4
@XGBE_SFP_BASE_1GBE_CC_CX = common dso_local global i32 0, align 4
@XGBE_SFP_BASE_1GBE_CC_T = common dso_local global i32 0, align 4
@XGBE_SFP_SPEED_10000 = common dso_local global i32 0, align 4
@XGBE_SFP_SPEED_100_1000 = common dso_local global i32 0, align 4
@XGBE_SFP_SPEED_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_sfp_parse_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_sfp_parse_eeprom(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_phy_data*, align 8
  %4 = alloca %struct.xgbe_sfp_eeprom*, align 8
  %5 = alloca i32*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 0
  %8 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %7, align 8
  store %struct.xgbe_phy_data* %8, %struct.xgbe_phy_data** %3, align 8
  %9 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %10 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %9, i32 0, i32 6
  store %struct.xgbe_sfp_eeprom* %10, %struct.xgbe_sfp_eeprom** %4, align 8
  %11 = load %struct.xgbe_sfp_eeprom*, %struct.xgbe_sfp_eeprom** %4, align 8
  %12 = getelementptr inbounds %struct.xgbe_sfp_eeprom, %struct.xgbe_sfp_eeprom* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* @XGBE_SFP_BASE_ID, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @XGBE_SFP_ID_SFP, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %186

21:                                               ; preds = %1
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* @XGBE_SFP_BASE_EXT_ID, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @XGBE_SFP_EXT_ID_SFP, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %186

29:                                               ; preds = %21
  %30 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %31 = call i32 @xgbe_phy_check_sfp_tx_fault(%struct.xgbe_phy_data* %30)
  %32 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %33 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %35 = call i32 @xgbe_phy_check_sfp_rx_los(%struct.xgbe_phy_data* %34)
  %36 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %37 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* @XGBE_SFP_BASE_CABLE, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @XGBE_SFP_BASE_CABLE_PASSIVE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %29
  %46 = load i64, i64* @XGBE_SFP_CABLE_PASSIVE, align 8
  %47 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %48 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* @XGBE_SFP_BASE_CU_CABLE_LEN, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %54 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %59

55:                                               ; preds = %29
  %56 = load i64, i64* @XGBE_SFP_CABLE_ACTIVE, align 8
  %57 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %58 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %45
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* @XGBE_SFP_BASE_10GBE_CC, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @XGBE_SFP_BASE_10GBE_CC_SR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %69 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %68, i32 0, i32 2
  store i32 132, i32* %69, align 4
  br label %169

70:                                               ; preds = %59
  %71 = load i32*, i32** %5, align 8
  %72 = load i64, i64* @XGBE_SFP_BASE_10GBE_CC, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @XGBE_SFP_BASE_10GBE_CC_LR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %80 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %79, i32 0, i32 2
  store i32 134, i32* %80, align 4
  br label %168

81:                                               ; preds = %70
  %82 = load i32*, i32** %5, align 8
  %83 = load i64, i64* @XGBE_SFP_BASE_10GBE_CC, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @XGBE_SFP_BASE_10GBE_CC_LRM, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %91 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %90, i32 0, i32 2
  store i32 133, i32* %91, align 4
  br label %167

92:                                               ; preds = %81
  %93 = load i32*, i32** %5, align 8
  %94 = load i64, i64* @XGBE_SFP_BASE_10GBE_CC, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @XGBE_SFP_BASE_10GBE_CC_ER, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %102 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %101, i32 0, i32 2
  store i32 135, i32* %102, align 4
  br label %166

103:                                              ; preds = %92
  %104 = load i32*, i32** %5, align 8
  %105 = load i64, i64* @XGBE_SFP_BASE_1GBE_CC, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @XGBE_SFP_BASE_1GBE_CC_SX, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %113 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %112, i32 0, i32 2
  store i32 129, i32* %113, align 4
  br label %165

114:                                              ; preds = %103
  %115 = load i32*, i32** %5, align 8
  %116 = load i64, i64* @XGBE_SFP_BASE_1GBE_CC, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @XGBE_SFP_BASE_1GBE_CC_LX, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %124 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %123, i32 0, i32 2
  store i32 130, i32* %124, align 4
  br label %164

125:                                              ; preds = %114
  %126 = load i32*, i32** %5, align 8
  %127 = load i64, i64* @XGBE_SFP_BASE_1GBE_CC, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @XGBE_SFP_BASE_1GBE_CC_CX, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %135 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %134, i32 0, i32 2
  store i32 131, i32* %135, align 4
  br label %163

136:                                              ; preds = %125
  %137 = load i32*, i32** %5, align 8
  %138 = load i64, i64* @XGBE_SFP_BASE_1GBE_CC, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @XGBE_SFP_BASE_1GBE_CC_T, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %146 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %145, i32 0, i32 2
  store i32 128, i32* %146, align 4
  br label %162

147:                                              ; preds = %136
  %148 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %149 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @XGBE_SFP_CABLE_PASSIVE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %147
  %154 = load %struct.xgbe_sfp_eeprom*, %struct.xgbe_sfp_eeprom** %4, align 8
  %155 = load i32, i32* @XGBE_SFP_SPEED_10000, align 4
  %156 = call i64 @xgbe_phy_sfp_bit_rate(%struct.xgbe_sfp_eeprom* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %160 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %159, i32 0, i32 2
  store i32 136, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %153, %147
  br label %162

162:                                              ; preds = %161, %144
  br label %163

163:                                              ; preds = %162, %133
  br label %164

164:                                              ; preds = %163, %122
  br label %165

165:                                              ; preds = %164, %111
  br label %166

166:                                              ; preds = %165, %100
  br label %167

167:                                              ; preds = %166, %89
  br label %168

168:                                              ; preds = %167, %78
  br label %169

169:                                              ; preds = %168, %67
  %170 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %171 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  switch i32 %172, label %185 [
    i32 128, label %173
    i32 129, label %177
    i32 130, label %177
    i32 131, label %177
    i32 132, label %181
    i32 134, label %181
    i32 133, label %181
    i32 135, label %181
    i32 136, label %181
  ]

173:                                              ; preds = %169
  %174 = load i32, i32* @XGBE_SFP_SPEED_100_1000, align 4
  %175 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %176 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 8
  br label %186

177:                                              ; preds = %169, %169, %169
  %178 = load i32, i32* @XGBE_SFP_SPEED_1000, align 4
  %179 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %180 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  br label %186

181:                                              ; preds = %169, %169, %169, %169, %169
  %182 = load i32, i32* @XGBE_SFP_SPEED_10000, align 4
  %183 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %184 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 8
  br label %186

185:                                              ; preds = %169
  br label %186

186:                                              ; preds = %20, %28, %185, %181, %177, %173
  ret void
}

declare dso_local i32 @xgbe_phy_check_sfp_tx_fault(%struct.xgbe_phy_data*) #1

declare dso_local i32 @xgbe_phy_check_sfp_rx_los(%struct.xgbe_phy_data*) #1

declare dso_local i64 @xgbe_phy_sfp_bit_rate(%struct.xgbe_sfp_eeprom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
