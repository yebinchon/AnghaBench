; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_self_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.bnxt = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@ETH_TEST_FL_EXTERNAL_LB = common dso_local global i32 0, align 4
@BNXT_TEST_FL_EXT_LPBK = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Offline tests cannot be run with active VFs\0A\00", align 1
@BNXT_DRV_TESTS = common dso_local global i32 0, align 4
@BNXT_MACLPBK_TEST_IDX = common dso_local global i64 0, align 8
@BNXT_PHYLPBK_TEST_IDX = common dso_local global i64 0, align 8
@ETH_TEST_FL_EXTERNAL_LB_DONE = common dso_local global i32 0, align 4
@BNXT_EXTLPBK_TEST_IDX = common dso_local global i64 0, align 8
@BNXT_IRQ_TEST_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @bnxt_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_self_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bnxt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.bnxt* @netdev_priv(%struct.net_device* %16)
  store %struct.bnxt* %17, %struct.bnxt** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %24 = call i32 @BNXT_SINGLE_PF(%struct.bnxt* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %3
  br label %270

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %30 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i32* %28, i32 0, i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @netif_running(%struct.net_device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %41 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %270

45:                                               ; preds = %27
  %46 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ETH_TEST_FL_EXTERNAL_LB, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %54 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BNXT_TEST_FL_EXT_LPBK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %52, %45
  %63 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %71 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %77 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = call i32 @netdev_warn(%struct.net_device* %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %270

83:                                               ; preds = %69
  store i32 1, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %62
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %117, %84
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %88 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @BNXT_DRV_TESTS, align 4
  %91 = sub nsw i32 %89, %90
  %92 = icmp slt i32 %86, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %85
  %94 = load i32, i32* %13, align 4
  %95 = shl i32 1, %94
  store i32 %95, i32* %14, align 4
  %96 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %97 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %14, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %116

108:                                              ; preds = %93
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %11, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %111, %108
  br label %116

116:                                              ; preds = %115, %104
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %85

120:                                              ; preds = %85
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @bnxt_run_fw_tests(%struct.bnxt* %124, i32 %125, i32* %10)
  br label %219

127:                                              ; preds = %120
  %128 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %129 = call i32 @bnxt_close_nic(%struct.bnxt* %128, i32 0, i32 0)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %270

133:                                              ; preds = %127
  %134 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @bnxt_run_fw_tests(%struct.bnxt* %134, i32 %135, i32* %10)
  %137 = load i32*, i32** %6, align 8
  %138 = load i64, i64* @BNXT_MACLPBK_TEST_IDX, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32 1, i32* %139, align 4
  %140 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %141 = call i32 @bnxt_hwrm_mac_loopback(%struct.bnxt* %140, i32 1)
  %142 = call i32 @msleep(i32 250)
  %143 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %144 = call i32 @bnxt_half_open_nic(%struct.bnxt* %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %133
  %148 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %149 = call i32 @bnxt_hwrm_mac_loopback(%struct.bnxt* %148, i32 0)
  %150 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %151 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %152 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %270

155:                                              ; preds = %133
  %156 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %157 = call i64 @bnxt_run_loopback(%struct.bnxt* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %161 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %162 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %169

165:                                              ; preds = %155
  %166 = load i32*, i32** %6, align 8
  %167 = load i64, i64* @BNXT_MACLPBK_TEST_IDX, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32 0, i32* %168, align 4
  br label %169

169:                                              ; preds = %165, %159
  %170 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %171 = call i32 @bnxt_hwrm_mac_loopback(%struct.bnxt* %170, i32 0)
  %172 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %173 = call i32 @bnxt_hwrm_phy_loopback(%struct.bnxt* %172, i32 1, i32 0)
  %174 = call i32 @msleep(i32 1000)
  %175 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %176 = call i64 @bnxt_run_loopback(%struct.bnxt* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %169
  %179 = load i32*, i32** %6, align 8
  %180 = load i64, i64* @BNXT_PHYLPBK_TEST_IDX, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32 1, i32* %181, align 4
  %182 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %183 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %184 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %178, %169
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %212

190:                                              ; preds = %187
  %191 = load i32, i32* @ETH_TEST_FL_EXTERNAL_LB_DONE, align 4
  %192 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %193 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  %196 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %197 = call i32 @bnxt_hwrm_phy_loopback(%struct.bnxt* %196, i32 1, i32 1)
  %198 = call i32 @msleep(i32 1000)
  %199 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %200 = call i64 @bnxt_run_loopback(%struct.bnxt* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %190
  %203 = load i32*, i32** %6, align 8
  %204 = load i64, i64* @BNXT_EXTLPBK_TEST_IDX, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  store i32 1, i32* %205, align 4
  %206 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %207 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %208 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %202, %190
  br label %212

212:                                              ; preds = %211, %187
  %213 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %214 = call i32 @bnxt_hwrm_phy_loopback(%struct.bnxt* %213, i32 0, i32 0)
  %215 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %216 = call i32 @bnxt_half_close_nic(%struct.bnxt* %215)
  %217 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %218 = call i32 @bnxt_open_nic(%struct.bnxt* %217, i32 0, i32 1)
  store i32 %218, i32* %12, align 4
  br label %219

219:                                              ; preds = %212, %123
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %219
  %223 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %224 = call i64 @bnxt_test_irq(%struct.bnxt* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %222, %219
  %227 = load i32*, i32** %6, align 8
  %228 = load i64, i64* @BNXT_IRQ_TEST_IDX, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  store i32 1, i32* %229, align 4
  %230 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %231 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %232 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %226, %222
  store i32 0, i32* %13, align 4
  br label %236

236:                                              ; preds = %267, %235
  %237 = load i32, i32* %13, align 4
  %238 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %239 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @BNXT_DRV_TESTS, align 4
  %242 = sub nsw i32 %240, %241
  %243 = icmp slt i32 %237, %242
  br i1 %243, label %244, label %270

244:                                              ; preds = %236
  %245 = load i32, i32* %13, align 4
  %246 = shl i32 1, %245
  store i32 %246, i32* %15, align 4
  %247 = load i32, i32* %11, align 4
  %248 = load i32, i32* %15, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %266

251:                                              ; preds = %244
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %15, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %266, label %256

256:                                              ; preds = %251
  %257 = load i32*, i32** %6, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  store i32 1, i32* %260, align 4
  %261 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %262 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %263 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %256, %251, %244
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %13, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %13, align 4
  br label %236

270:                                              ; preds = %26, %39, %75, %132, %147, %236
  ret void
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BNXT_SINGLE_PF(%struct.bnxt*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @bnxt_run_fw_tests(%struct.bnxt*, i32, i32*) #1

declare dso_local i32 @bnxt_close_nic(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @bnxt_hwrm_mac_loopback(%struct.bnxt*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bnxt_half_open_nic(%struct.bnxt*) #1

declare dso_local i64 @bnxt_run_loopback(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_phy_loopback(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @bnxt_half_close_nic(%struct.bnxt*) #1

declare dso_local i32 @bnxt_open_nic(%struct.bnxt*, i32, i32) #1

declare dso_local i64 @bnxt_test_irq(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
