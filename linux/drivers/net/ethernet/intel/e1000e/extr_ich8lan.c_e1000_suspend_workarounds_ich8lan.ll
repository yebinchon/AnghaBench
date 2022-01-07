; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_suspend_workarounds_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_suspend_workarounds_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i64, i32 }

@PHY_CTRL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_GBE_DISABLE = common dso_local global i32 0, align 4
@e1000_phy_i217 = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPTLP_I218_LM = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPTLP_I218_V = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_LM3 = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_V3 = common dso_local global i64 0, align 8
@e1000_pch_spt = common dso_local global i64 0, align 8
@FEXTNVM6 = common dso_local global i32 0, align 4
@E1000_FEXTNVM6_REQ_PLL_CLK = common dso_local global i32 0, align 4
@I217_EEE_ADVERTISEMENT = common dso_local global i32 0, align 4
@I82579_EEE_100_SUPPORTED = common dso_local global i64 0, align 8
@ADVERTISE_100_FULL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_D0A_LPLU = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_NOND0A_LPLU = common dso_local global i32 0, align 4
@I217_LPI_GPIO_CTRL = common dso_local global i32 0, align 4
@I217_LPI_GPIO_CTRL_AUTO_EN_LPI = common dso_local global i64 0, align 8
@FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@I217_PROXY_CTRL = common dso_local global i32 0, align 4
@I217_PROXY_CTRL_AUTO_DISABLE = common dso_local global i64 0, align 8
@I217_SxCTRL = common dso_local global i32 0, align 4
@I217_SxCTRL_ENABLE_LPI_RESET = common dso_local global i64 0, align 8
@I217_MEMPWR = common dso_local global i32 0, align 4
@I217_MEMPWR_DISABLE_SMB_RELEASE = common dso_local global i64 0, align 8
@I217_CGFREG = common dso_local global i32 0, align 4
@I217_CGFREG_ENABLE_MTA_RESET = common dso_local global i64 0, align 8
@e1000_ich8lan = common dso_local global i64 0, align 8
@e1000_pchlan = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_suspend_workarounds_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %12, %struct.e1000_dev_spec_ich8lan** %3, align 8
  %13 = load i32, i32* @PHY_CTRL, align 4
  %14 = call i32 @er32(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @E1000_PHY_CTRL_GBE_DISABLE, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @e1000_phy_i217, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %183

24:                                               ; preds = %1
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @E1000_DEV_ID_PCH_LPTLP_I218_LM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %54, label %35

35:                                               ; preds = %24
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @E1000_DEV_ID_PCH_LPTLP_I218_V, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %54, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @E1000_DEV_ID_PCH_I218_LM3, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @E1000_DEV_ID_PCH_I218_V3, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @e1000_pch_spt, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %47, %43, %39, %35, %24
  %55 = load i32, i32* @FEXTNVM6, align 4
  %56 = call i32 @er32(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @FEXTNVM6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @E1000_FEXTNVM6_REQ_PLL_CLK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @ew32(i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %54, %47
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %65 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %67, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = bitcast %struct.e1000_hw* %69 to %struct.e1000_hw.1*
  %71 = call i64 %68(%struct.e1000_hw.1* %70)
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %184

75:                                               ; preds = %63
  %76 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %125, label %80

80:                                               ; preds = %75
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %82 = load i32, i32* @I217_EEE_ADVERTISEMENT, align 4
  %83 = call i64 @e1000_read_emi_reg_locked(%struct.e1000_hw* %81, i32 %82, i64* %9)
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %174

87:                                               ; preds = %80
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @I82579_EEE_100_SUPPORTED, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %124

92:                                               ; preds = %87
  %93 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @I82579_EEE_100_SUPPORTED, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %92
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %101 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ADVERTISE_100_FULL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %99
  %108 = load i32, i32* @E1000_PHY_CTRL_D0A_LPLU, align 4
  %109 = load i32, i32* @E1000_PHY_CTRL_NOND0A_LPLU, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %4, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %4, align 4
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %115 = load i32, i32* @I217_LPI_GPIO_CTRL, align 4
  %116 = call i32 @e1e_rphy_locked(%struct.e1000_hw* %114, i32 %115, i64* %6)
  %117 = load i64, i64* @I217_LPI_GPIO_CTRL_AUTO_EN_LPI, align 8
  %118 = load i64, i64* %6, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %6, align 8
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %121 = load i32, i32* @I217_LPI_GPIO_CTRL, align 4
  %122 = load i64, i64* %6, align 8
  %123 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %120, i32 %121, i64 %122)
  br label %124

124:                                              ; preds = %107, %99, %92, %87
  br label %125

125:                                              ; preds = %124, %75
  %126 = load i32, i32* @FWSM, align 4
  %127 = call i32 @er32(i32 %126)
  %128 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %163, label %131

131:                                              ; preds = %125
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %133 = load i32, i32* @I217_PROXY_CTRL, align 4
  %134 = call i32 @e1e_rphy_locked(%struct.e1000_hw* %132, i32 %133, i64* %6)
  %135 = load i64, i64* @I217_PROXY_CTRL_AUTO_DISABLE, align 8
  %136 = load i64, i64* %6, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %6, align 8
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %139 = load i32, i32* @I217_PROXY_CTRL, align 4
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %138, i32 %139, i64 %140)
  %142 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %143 = load i32, i32* @I217_SxCTRL, align 4
  %144 = call i32 @e1e_rphy_locked(%struct.e1000_hw* %142, i32 %143, i64* %6)
  %145 = load i64, i64* @I217_SxCTRL_ENABLE_LPI_RESET, align 8
  %146 = load i64, i64* %6, align 8
  %147 = or i64 %146, %145
  store i64 %147, i64* %6, align 8
  %148 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %149 = load i32, i32* @I217_SxCTRL, align 4
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %148, i32 %149, i64 %150)
  %152 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %153 = load i32, i32* @I217_MEMPWR, align 4
  %154 = call i32 @e1e_rphy_locked(%struct.e1000_hw* %152, i32 %153, i64* %6)
  %155 = load i64, i64* @I217_MEMPWR_DISABLE_SMB_RELEASE, align 8
  %156 = xor i64 %155, -1
  %157 = load i64, i64* %6, align 8
  %158 = and i64 %157, %156
  store i64 %158, i64* %6, align 8
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %160 = load i32, i32* @I217_MEMPWR, align 4
  %161 = load i64, i64* %6, align 8
  %162 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %159, i32 %160, i64 %161)
  br label %163

163:                                              ; preds = %131, %125
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %165 = load i32, i32* @I217_CGFREG, align 4
  %166 = call i32 @e1e_rphy_locked(%struct.e1000_hw* %164, i32 %165, i64* %6)
  %167 = load i64, i64* @I217_CGFREG_ENABLE_MTA_RESET, align 8
  %168 = load i64, i64* %6, align 8
  %169 = or i64 %168, %167
  store i64 %169, i64* %6, align 8
  %170 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %171 = load i32, i32* @I217_CGFREG, align 4
  %172 = load i64, i64* %6, align 8
  %173 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %170, i32 %171, i64 %172)
  br label %174

174:                                              ; preds = %163, %86
  %175 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %176 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %178, align 8
  %180 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %181 = bitcast %struct.e1000_hw* %180 to %struct.e1000_hw.0*
  %182 = call i32 %179(%struct.e1000_hw.0* %181)
  br label %183

183:                                              ; preds = %174, %1
  br label %184

184:                                              ; preds = %183, %74
  %185 = load i32, i32* @PHY_CTRL, align 4
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @ew32(i32 %185, i32 %186)
  %188 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %189 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @e1000_ich8lan, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %196 = call i32 @e1000e_gig_downshift_workaround_ich8lan(%struct.e1000_hw* %195)
  br label %197

197:                                              ; preds = %194, %184
  %198 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %199 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @e1000_pchlan, align 8
  %203 = icmp sge i64 %201, %202
  br i1 %203, label %204, label %239

204:                                              ; preds = %197
  %205 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %206 = call i32 @e1000_oem_bits_config_ich8lan(%struct.e1000_hw* %205, i32 0)
  %207 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %208 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @e1000_pchlan, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %204
  %214 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %215 = call i32 @e1000e_phy_hw_reset_generic(%struct.e1000_hw* %214)
  br label %216

216:                                              ; preds = %213, %204
  %217 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %218 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  %221 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %220, align 8
  %222 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %223 = bitcast %struct.e1000_hw* %222 to %struct.e1000_hw.1*
  %224 = call i64 %221(%struct.e1000_hw.1* %223)
  store i64 %224, i64* %5, align 8
  %225 = load i64, i64* %5, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %216
  br label %239

228:                                              ; preds = %216
  %229 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %230 = call i32 @e1000_write_smbus_addr(%struct.e1000_hw* %229)
  %231 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %232 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %234, align 8
  %236 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %237 = bitcast %struct.e1000_hw* %236 to %struct.e1000_hw.0*
  %238 = call i32 %235(%struct.e1000_hw.0* %237)
  br label %239

239:                                              ; preds = %227, %228, %197
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_read_emi_reg_locked(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @e1e_rphy_locked(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @e1e_wphy_locked(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @e1000e_gig_downshift_workaround_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_oem_bits_config_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000e_phy_hw_reset_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_write_smbus_addr(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
