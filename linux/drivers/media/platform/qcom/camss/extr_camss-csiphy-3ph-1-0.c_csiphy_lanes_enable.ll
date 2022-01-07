; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy-3ph-1-0.c_csiphy_lanes_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy-3ph-1-0.c_csiphy_lanes_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csiphy_device = type { i64, i32 }
%struct.csiphy_config = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.csiphy_lanes_cfg }
%struct.csiphy_lanes_cfg = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B = common dso_local global i32 0, align 4
@CSIPHY_3PH_LNn_CFG1_SWI_REC_DLY_PRG = common dso_local global i32 0, align 4
@CSIPHY_3PH_LNn_CFG2_LP_REC_EN_INT = common dso_local global i32 0, align 4
@CSIPHY_3PH_LNn_CFG5_T_HS_DTERM = common dso_local global i32 0, align 4
@CSIPHY_3PH_LNn_CFG5_HS_REC_EQ_FQ_INT = common dso_local global i32 0, align 4
@CSIPHY_3PH_LNn_CFG6_SWI_FORCE_INIT_EXIT = common dso_local global i32 0, align 4
@CSIPHY_3PH_LNn_CFG7_SWI_T_INIT = common dso_local global i32 0, align 4
@CSIPHY_3PH_LNn_CFG8_SWI_SKIP_WAKEUP = common dso_local global i32 0, align 4
@CSIPHY_3PH_LNn_CFG8_SKEW_FILTER_ENABLE = common dso_local global i32 0, align 4
@CSIPHY_3PH_LNn_CFG9_SWI_T_WAKEUP = common dso_local global i32 0, align 4
@CSIPHY_3PH_LNn_TEST_IMP_HS_TERM_IMP = common dso_local global i32 0, align 4
@CSIPHY_3PH_LNn_CSI_LANE_CTRL15_SWI_SOT_SYMBOL = common dso_local global i32 0, align 4
@CSIPHY_3PH_LNn_CFG4_T_HS_CLK_MISS = common dso_local global i32 0, align 4
@CSIPHY_3PH_LNn_MISC1_IS_CLKLANE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csiphy_device*, %struct.csiphy_config*, i32, i32, i32)* @csiphy_lanes_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csiphy_lanes_enable(%struct.csiphy_device* %0, %struct.csiphy_config* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.csiphy_device*, align 8
  %7 = alloca %struct.csiphy_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.csiphy_lanes_cfg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.csiphy_device* %0, %struct.csiphy_device** %6, align 8
  store %struct.csiphy_config* %1, %struct.csiphy_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.csiphy_config*, %struct.csiphy_config** %7, align 8
  %17 = getelementptr inbounds %struct.csiphy_config, %struct.csiphy_config* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.csiphy_lanes_cfg* %19, %struct.csiphy_lanes_cfg** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %11, align 8
  %23 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %26 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @csiphy_settle_cnt_calc(i32 %20, i32 %21, i32 %24, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %11, align 8
  %30 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @BIT(i32 %32)
  store i32 %33, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %53, %5
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %11, align 8
  %37 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %11, align 8
  %42 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 2
  %50 = call i32 @BIT(i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %15, align 4
  br label %34

56:                                               ; preds = %34
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %59 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 5)
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel_relaxed(i32 %57, i64 %62)
  %64 = load i32, i32* @CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %67 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 6)
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel_relaxed(i32 %65, i64 %70)
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %192, %56
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %11, align 8
  %75 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sle i32 %73, %76
  br i1 %77, label %78, label %195

78:                                               ; preds = %72
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %11, align 8
  %81 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 7, i32* %14, align 4
  br label %95

85:                                               ; preds = %78
  %86 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %11, align 8
  %87 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %93, 2
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %85, %84
  %96 = load i32, i32* @CSIPHY_3PH_LNn_CFG1_SWI_REC_DLY_PRG, align 4
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = or i32 %97, 23
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %101 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = call i64 @CSIPHY_3PH_LNn_CFG1(i32 %103)
  %105 = add nsw i64 %102, %104
  %106 = call i32 @writel_relaxed(i32 %99, i64 %105)
  %107 = load i32, i32* @CSIPHY_3PH_LNn_CFG2_LP_REC_EN_INT, align 4
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %110 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i64 @CSIPHY_3PH_LNn_CFG2(i32 %112)
  %114 = add nsw i64 %111, %113
  %115 = call i32 @writel_relaxed(i32 %108, i64 %114)
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %119 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i64 @CSIPHY_3PH_LNn_CFG3(i32 %121)
  %123 = add nsw i64 %120, %122
  %124 = call i32 @writel_relaxed(i32 %117, i64 %123)
  %125 = load i32, i32* @CSIPHY_3PH_LNn_CFG5_T_HS_DTERM, align 4
  %126 = load i32, i32* @CSIPHY_3PH_LNn_CFG5_HS_REC_EQ_FQ_INT, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %130 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = call i64 @CSIPHY_3PH_LNn_CFG5(i32 %132)
  %134 = add nsw i64 %131, %133
  %135 = call i32 @writel_relaxed(i32 %128, i64 %134)
  %136 = load i32, i32* @CSIPHY_3PH_LNn_CFG6_SWI_FORCE_INIT_EXIT, align 4
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %139 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %14, align 4
  %142 = call i64 @CSIPHY_3PH_LNn_CFG6(i32 %141)
  %143 = add nsw i64 %140, %142
  %144 = call i32 @writel_relaxed(i32 %137, i64 %143)
  %145 = load i32, i32* @CSIPHY_3PH_LNn_CFG7_SWI_T_INIT, align 4
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %148 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = call i64 @CSIPHY_3PH_LNn_CFG7(i32 %150)
  %152 = add nsw i64 %149, %151
  %153 = call i32 @writel_relaxed(i32 %146, i64 %152)
  %154 = load i32, i32* @CSIPHY_3PH_LNn_CFG8_SWI_SKIP_WAKEUP, align 4
  %155 = load i32, i32* @CSIPHY_3PH_LNn_CFG8_SKEW_FILTER_ENABLE, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %159 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = call i64 @CSIPHY_3PH_LNn_CFG8(i32 %161)
  %163 = add nsw i64 %160, %162
  %164 = call i32 @writel_relaxed(i32 %157, i64 %163)
  %165 = load i32, i32* @CSIPHY_3PH_LNn_CFG9_SWI_T_WAKEUP, align 4
  store i32 %165, i32* %13, align 4
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %168 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = call i64 @CSIPHY_3PH_LNn_CFG9(i32 %170)
  %172 = add nsw i64 %169, %171
  %173 = call i32 @writel_relaxed(i32 %166, i64 %172)
  %174 = load i32, i32* @CSIPHY_3PH_LNn_TEST_IMP_HS_TERM_IMP, align 4
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %177 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = call i64 @CSIPHY_3PH_LNn_TEST_IMP(i32 %179)
  %181 = add nsw i64 %178, %180
  %182 = call i32 @writel_relaxed(i32 %175, i64 %181)
  %183 = load i32, i32* @CSIPHY_3PH_LNn_CSI_LANE_CTRL15_SWI_SOT_SYMBOL, align 4
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %186 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = call i64 @CSIPHY_3PH_LNn_CSI_LANE_CTRL15(i32 %188)
  %190 = add nsw i64 %187, %189
  %191 = call i32 @writel_relaxed(i32 %184, i64 %190)
  br label %192

192:                                              ; preds = %95
  %193 = load i32, i32* %15, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %15, align 4
  br label %72

195:                                              ; preds = %72
  %196 = load i32, i32* @CSIPHY_3PH_LNn_CFG1_SWI_REC_DLY_PRG, align 4
  store i32 %196, i32* %13, align 4
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %199 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* %14, align 4
  %202 = call i64 @CSIPHY_3PH_LNn_CFG1(i32 %201)
  %203 = add nsw i64 %200, %202
  %204 = call i32 @writel_relaxed(i32 %197, i64 %203)
  %205 = load i32, i32* @CSIPHY_3PH_LNn_CFG4_T_HS_CLK_MISS, align 4
  store i32 %205, i32* %13, align 4
  %206 = load i32, i32* %13, align 4
  %207 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %208 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = call i64 @CSIPHY_3PH_LNn_CFG4(i32 %210)
  %212 = add nsw i64 %209, %211
  %213 = call i32 @writel_relaxed(i32 %206, i64 %212)
  %214 = load i32, i32* @CSIPHY_3PH_LNn_MISC1_IS_CLKLANE, align 4
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* %13, align 4
  %216 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %217 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* %14, align 4
  %220 = call i64 @CSIPHY_3PH_LNn_MISC1(i32 %219)
  %221 = add nsw i64 %218, %220
  %222 = call i32 @writel_relaxed(i32 %215, i64 %221)
  store i32 255, i32* %13, align 4
  %223 = load i32, i32* %13, align 4
  %224 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %225 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 11)
  %228 = add nsw i64 %226, %227
  %229 = call i32 @writel_relaxed(i32 %223, i64 %228)
  store i32 255, i32* %13, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %232 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 12)
  %235 = add nsw i64 %233, %234
  %236 = call i32 @writel_relaxed(i32 %230, i64 %235)
  store i32 251, i32* %13, align 4
  %237 = load i32, i32* %13, align 4
  %238 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %239 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 13)
  %242 = add nsw i64 %240, %241
  %243 = call i32 @writel_relaxed(i32 %237, i64 %242)
  store i32 255, i32* %13, align 4
  %244 = load i32, i32* %13, align 4
  %245 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %246 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 14)
  %249 = add nsw i64 %247, %248
  %250 = call i32 @writel_relaxed(i32 %244, i64 %249)
  store i32 127, i32* %13, align 4
  %251 = load i32, i32* %13, align 4
  %252 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %253 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 15)
  %256 = add nsw i64 %254, %255
  %257 = call i32 @writel_relaxed(i32 %251, i64 %256)
  store i32 255, i32* %13, align 4
  %258 = load i32, i32* %13, align 4
  %259 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %260 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 16)
  %263 = add nsw i64 %261, %262
  %264 = call i32 @writel_relaxed(i32 %258, i64 %263)
  store i32 255, i32* %13, align 4
  %265 = load i32, i32* %13, align 4
  %266 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %267 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 17)
  %270 = add nsw i64 %268, %269
  %271 = call i32 @writel_relaxed(i32 %265, i64 %270)
  store i32 239, i32* %13, align 4
  %272 = load i32, i32* %13, align 4
  %273 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %274 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 18)
  %277 = add nsw i64 %275, %276
  %278 = call i32 @writel_relaxed(i32 %272, i64 %277)
  store i32 255, i32* %13, align 4
  %279 = load i32, i32* %13, align 4
  %280 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %281 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 19)
  %284 = add nsw i64 %282, %283
  %285 = call i32 @writel_relaxed(i32 %279, i64 %284)
  store i32 255, i32* %13, align 4
  %286 = load i32, i32* %13, align 4
  %287 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %288 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 20)
  %291 = add nsw i64 %289, %290
  %292 = call i32 @writel_relaxed(i32 %286, i64 %291)
  store i32 255, i32* %13, align 4
  %293 = load i32, i32* %13, align 4
  %294 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %295 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 21)
  %298 = add nsw i64 %296, %297
  %299 = call i32 @writel_relaxed(i32 %293, i64 %298)
  ret void
}

declare dso_local i32 @csiphy_settle_cnt_calc(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32) #1

declare dso_local i64 @CSIPHY_3PH_LNn_CFG1(i32) #1

declare dso_local i64 @CSIPHY_3PH_LNn_CFG2(i32) #1

declare dso_local i64 @CSIPHY_3PH_LNn_CFG3(i32) #1

declare dso_local i64 @CSIPHY_3PH_LNn_CFG5(i32) #1

declare dso_local i64 @CSIPHY_3PH_LNn_CFG6(i32) #1

declare dso_local i64 @CSIPHY_3PH_LNn_CFG7(i32) #1

declare dso_local i64 @CSIPHY_3PH_LNn_CFG8(i32) #1

declare dso_local i64 @CSIPHY_3PH_LNn_CFG9(i32) #1

declare dso_local i64 @CSIPHY_3PH_LNn_TEST_IMP(i32) #1

declare dso_local i64 @CSIPHY_3PH_LNn_CSI_LANE_CTRL15(i32) #1

declare dso_local i64 @CSIPHY_3PH_LNn_CFG4(i32) #1

declare dso_local i64 @CSIPHY_3PH_LNn_MISC1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
