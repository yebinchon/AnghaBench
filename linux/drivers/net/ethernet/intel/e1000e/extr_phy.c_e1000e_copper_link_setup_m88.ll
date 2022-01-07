; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000e_copper_link_setup_m88.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000e_copper_link_setup_m88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i32, i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@e1000_phy_bm = common dso_local global i64 0, align 8
@M88E1000_PSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDI_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDIX_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_1000T = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@BME1000_E_PHY_ID_R2 = common dso_local global i64 0, align 8
@BME1000_PSCR_ENABLE_DOWNSHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error committing the PHY changes\0A\00", align 1
@e1000_phy_m88 = common dso_local global i64 0, align 8
@E1000_REVISION_4 = common dso_local global i32 0, align 4
@M88E1000_EXT_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_EPSCR_TX_CLK_25 = common dso_local global i32 0, align 4
@M88E1111_I_PHY_ID = common dso_local global i64 0, align 8
@M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK = common dso_local global i32 0, align 4
@M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X = common dso_local global i32 0, align 4
@M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK = common dso_local global i32 0, align 4
@M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK = common dso_local global i32 0, align 4
@M88E1000_EPSCR_MASTER_DOWNSHIFT_1X = common dso_local global i32 0, align 4
@M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X = common dso_local global i32 0, align 4
@e1000_phy_82578 = common dso_local global i64 0, align 8
@I82578_EPSCR_DOWNSHIFT_ENABLE = common dso_local global i32 0, align 4
@I82578_EPSCR_DOWNSHIFT_COUNTER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_copper_link_setup_m88(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %4, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %11 = call i64 @e1e_rphy(%struct.e1000_hw* %9, i32 %10, i32* %6)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %2, align 8
  br label %265

16:                                               ; preds = %1
  %17 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %18 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @e1000_phy_bm, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @M88E1000_PSCR_ASSERT_CRS_ON_TX, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %47 [
    i32 1, label %34
    i32 2, label %38
    i32 3, label %42
    i32 0, label %46
  ]

34:                                               ; preds = %26
  %35 = load i32, i32* @M88E1000_PSCR_MDI_MANUAL_MODE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %51

38:                                               ; preds = %26
  %39 = load i32, i32* @M88E1000_PSCR_MDIX_MANUAL_MODE, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %51

42:                                               ; preds = %26
  %43 = load i32, i32* @M88E1000_PSCR_AUTO_X_1000T, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %51

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %26, %46
  %48 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %42, %38, %34
  %52 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %57 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %51
  %65 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %66 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @e1000_phy_bm, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %64
  %71 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %72 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BME1000_E_PHY_ID_R2, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  %77 = load i32, i32* @BME1000_PSCR_ENABLE_DOWNSHIFT, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %82 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @e1e_wphy(%struct.e1000_hw* %81, i32 %82, i32 %83)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i64, i64* %5, align 8
  store i64 %88, i64* %2, align 8
  br label %265

89:                                               ; preds = %76
  %90 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %91 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %92, align 8
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = bitcast %struct.e1000_hw* %94 to %struct.e1000_hw.0*
  %96 = call i64 %93(%struct.e1000_hw.0* %95)
  store i64 %96, i64* %5, align 8
  %97 = load i64, i64* %5, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = call i32 @e_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %101 = load i64, i64* %5, align 8
  store i64 %101, i64* %2, align 8
  br label %265

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %70
  %104 = load i32, i32* @BME1000_PSCR_ENABLE_DOWNSHIFT, align 4
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %103, %64
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %109 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i64 @e1e_wphy(%struct.e1000_hw* %108, i32 %109, i32 %110)
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %5, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i64, i64* %5, align 8
  store i64 %115, i64* %2, align 8
  br label %265

116:                                              ; preds = %107
  %117 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %118 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @e1000_phy_m88, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %186

122:                                              ; preds = %116
  %123 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %124 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @E1000_REVISION_4, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %186

128:                                              ; preds = %122
  %129 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %130 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @BME1000_E_PHY_ID_R2, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %186

134:                                              ; preds = %128
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %136 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %137 = call i64 @e1e_rphy(%struct.e1000_hw* %135, i32 %136, i32* %6)
  store i64 %137, i64* %5, align 8
  %138 = load i64, i64* %5, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i64, i64* %5, align 8
  store i64 %141, i64* %2, align 8
  br label %265

142:                                              ; preds = %134
  %143 = load i32, i32* @M88E1000_EPSCR_TX_CLK_25, align 4
  %144 = load i32, i32* %6, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %6, align 4
  %146 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %147 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %164

150:                                              ; preds = %142
  %151 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %152 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @M88E1111_I_PHY_ID, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load i32, i32* @M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %6, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* @M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X, align 4
  %162 = load i32, i32* %6, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %6, align 4
  br label %176

164:                                              ; preds = %150, %142
  %165 = load i32, i32* @M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK, align 4
  %166 = load i32, i32* @M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK, align 4
  %167 = or i32 %165, %166
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %6, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* @M88E1000_EPSCR_MASTER_DOWNSHIFT_1X, align 4
  %172 = load i32, i32* @M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* %6, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %164, %156
  %177 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %178 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %179 = load i32, i32* %6, align 4
  %180 = call i64 @e1e_wphy(%struct.e1000_hw* %177, i32 %178, i32 %179)
  store i64 %180, i64* %5, align 8
  %181 = load i64, i64* %5, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  %184 = load i64, i64* %5, align 8
  store i64 %184, i64* %2, align 8
  br label %265

185:                                              ; preds = %176
  br label %186

186:                                              ; preds = %185, %128, %122, %116
  %187 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %188 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @e1000_phy_bm, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %213

192:                                              ; preds = %186
  %193 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %194 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @BME1000_E_PHY_ID_R2, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %192
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %200 = call i64 @e1e_wphy(%struct.e1000_hw* %199, i32 29, i32 3)
  store i64 %200, i64* %5, align 8
  %201 = load i64, i64* %5, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i64, i64* %5, align 8
  store i64 %204, i64* %2, align 8
  br label %265

205:                                              ; preds = %198
  %206 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %207 = call i64 @e1e_wphy(%struct.e1000_hw* %206, i32 30, i32 0)
  store i64 %207, i64* %5, align 8
  %208 = load i64, i64* %5, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i64, i64* %5, align 8
  store i64 %211, i64* %2, align 8
  br label %265

212:                                              ; preds = %205
  br label %213

213:                                              ; preds = %212, %192, %186
  %214 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %215 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %216, align 8
  %218 = icmp ne i64 (%struct.e1000_hw.0*)* %217, null
  br i1 %218, label %219, label %233

219:                                              ; preds = %213
  %220 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %221 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %222, align 8
  %224 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %225 = bitcast %struct.e1000_hw* %224 to %struct.e1000_hw.0*
  %226 = call i64 %223(%struct.e1000_hw.0* %225)
  store i64 %226, i64* %5, align 8
  %227 = load i64, i64* %5, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %219
  %230 = call i32 @e_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %231 = load i64, i64* %5, align 8
  store i64 %231, i64* %2, align 8
  br label %265

232:                                              ; preds = %219
  br label %233

233:                                              ; preds = %232, %213
  %234 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %235 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @e1000_phy_82578, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %264

239:                                              ; preds = %233
  %240 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %241 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %242 = call i64 @e1e_rphy(%struct.e1000_hw* %240, i32 %241, i32* %6)
  store i64 %242, i64* %5, align 8
  %243 = load i64, i64* %5, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %239
  %246 = load i64, i64* %5, align 8
  store i64 %246, i64* %2, align 8
  br label %265

247:                                              ; preds = %239
  %248 = load i32, i32* @I82578_EPSCR_DOWNSHIFT_ENABLE, align 4
  %249 = load i32, i32* %6, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %6, align 4
  %251 = load i32, i32* @I82578_EPSCR_DOWNSHIFT_COUNTER_MASK, align 4
  %252 = xor i32 %251, -1
  %253 = load i32, i32* %6, align 4
  %254 = and i32 %253, %252
  store i32 %254, i32* %6, align 4
  %255 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %256 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %257 = load i32, i32* %6, align 4
  %258 = call i64 @e1e_wphy(%struct.e1000_hw* %255, i32 %256, i32 %257)
  store i64 %258, i64* %5, align 8
  %259 = load i64, i64* %5, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %247
  %262 = load i64, i64* %5, align 8
  store i64 %262, i64* %2, align 8
  br label %265

263:                                              ; preds = %247
  br label %264

264:                                              ; preds = %263, %233
  store i64 0, i64* %2, align 8
  br label %265

265:                                              ; preds = %264, %261, %245, %229, %210, %203, %183, %140, %114, %99, %87, %14
  %266 = load i64, i64* %2, align 8
  ret i64 %266
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
