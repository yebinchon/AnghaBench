; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_self_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.bnx2x = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"VFs are enabled, can not perform self test\0A\00", align 1
@BNX2X_RECOVERY_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Handling parity error recovery. Try again later\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Self-test command parameters: offline = %d, external_lb = %d\0A\00", align 1
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@ETH_TEST_FL_EXTERNAL_LB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Interface is down\0A\00", align 1
@LINK_STATUS_SERDES_LINK = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_UMP0_IN_EN = common dso_local global i64 0, align 8
@UNLOAD_NORMAL = common dso_local global i32 0, align 4
@LOAD_DIAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Can't perform self-test, nic_load (for offline) failed\0A\00", align 1
@ETH_TEST_FL_EXTERNAL_LB_DONE = common dso_local global i32 0, align 4
@LOAD_NORMAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"Can't perform self-test, nic_load (for online) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @bnx2x_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_self_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %14)
  store %struct.bnx2x* %15, %struct.bnx2x** %7, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @pci_num_vf(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %23 = call i32 (i32, i8*, ...) @DP(i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %300

24:                                               ; preds = %3
  %25 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %26 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BNX2X_RECOVERY_DONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @netdev_err(i32 %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %36 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %300

40:                                               ; preds = %24
  %41 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %42 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %46 = and i32 %44, %45
  %47 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ETH_TEST_FL_EXTERNAL_LB, align 4
  %51 = and i32 %49, %50
  %52 = ashr i32 %51, 2
  %53 = call i32 (i32, i8*, ...) @DP(i32 %41, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %56 = call i32 @BNX2X_NUM_TESTS(%struct.bnx2x* %55)
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memset(i32* %54, i32 0, i32 %59)
  %61 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %62 = call i64 @bnx2x_test_nvram(%struct.bnx2x* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %40
  %65 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %66 = call i32 @IS_MF(%struct.bnx2x* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  store i32 1, i32* %70, align 4
  br label %74

71:                                               ; preds = %64
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %76 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %40
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = call i32 @netif_running(%struct.net_device* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %86 = call i32 (i32, i8*, ...) @DP(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %300

87:                                               ; preds = %80
  %88 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %89 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @LINK_STATUS_SERDES_LINK, align 4
  %93 = and i32 %91, %92
  %94 = icmp sgt i32 %93, 0
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %8, align 4
  %96 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %97 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %9, align 4
  %100 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %101 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %243

106:                                              ; preds = %87
  %107 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %108 = call i32 @IS_MF(%struct.bnx2x* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %243, label %110

110:                                              ; preds = %106
  %111 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %112 = call i32 @BP_PORT(%struct.bnx2x* %111)
  store i32 %112, i32* %12, align 4
  %113 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %114 = load i64, i64* @NIG_REG_EGRESS_UMP0_IN_EN, align 8
  %115 = load i32, i32* %12, align 4
  %116 = mul nsw i32 %115, 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %114, %117
  %119 = call i32 @REG_RD(%struct.bnx2x* %113, i64 %118)
  store i32 %119, i32* %13, align 4
  %120 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %121 = load i64, i64* @NIG_REG_EGRESS_UMP0_IN_EN, align 8
  %122 = load i32, i32* %12, align 4
  %123 = mul nsw i32 %122, 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %121, %124
  %126 = call i32 @REG_WR(%struct.bnx2x* %120, i64 %125, i32 0)
  %127 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %128 = load i32, i32* @UNLOAD_NORMAL, align 4
  %129 = call i32 @bnx2x_nic_unload(%struct.bnx2x* %127, i32 %128, i32 0)
  %130 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %131 = load i32, i32* @LOAD_DIAG, align 4
  %132 = call i32 @bnx2x_nic_load(%struct.bnx2x* %130, i32 %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %110
  %136 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %137 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %138 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %142 = call i32 (i32, i8*, ...) @DP(i32 %141, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %300

143:                                              ; preds = %110
  %144 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @bnx2x_wait_for_link(%struct.bnx2x* %144, i32 1, i32 %145)
  %147 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %148 = call i64 @bnx2x_test_registers(%struct.bnx2x* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 1, i32* %152, align 4
  %153 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %154 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %155 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %150, %143
  %159 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %160 = call i64 @bnx2x_test_memory(%struct.bnx2x* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load i32*, i32** %6, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  store i32 1, i32* %164, align 4
  %165 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %166 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %167 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %162, %158
  %171 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %172 = call i32 @bnx2x_test_loopback(%struct.bnx2x* %171)
  %173 = load i32*, i32** %6, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 2
  store i32 %172, i32* %174, align 4
  %175 = load i32*, i32** %6, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %170
  %180 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %181 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %182 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %179, %170
  %186 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %187 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @ETH_TEST_FL_EXTERNAL_LB, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %213

192:                                              ; preds = %185
  %193 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %194 = call i32 @bnx2x_test_ext_loopback(%struct.bnx2x* %193)
  %195 = load i32*, i32** %6, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 3
  store i32 %194, i32* %196, align 4
  %197 = load i32*, i32** %6, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 3
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %192
  %202 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %203 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %204 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %201, %192
  %208 = load i32, i32* @ETH_TEST_FL_EXTERNAL_LB_DONE, align 4
  %209 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %210 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %207, %185
  %214 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %215 = load i32, i32* @UNLOAD_NORMAL, align 4
  %216 = call i32 @bnx2x_nic_unload(%struct.bnx2x* %214, i32 %215, i32 0)
  %217 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %218 = load i64, i64* @NIG_REG_EGRESS_UMP0_IN_EN, align 8
  %219 = load i32, i32* %12, align 4
  %220 = mul nsw i32 %219, 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %218, %221
  %223 = load i32, i32* %13, align 4
  %224 = call i32 @REG_WR(%struct.bnx2x* %217, i64 %222, i32 %223)
  %225 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %226 = load i32, i32* @LOAD_NORMAL, align 4
  %227 = call i32 @bnx2x_nic_load(%struct.bnx2x* %225, i32 %226)
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %213
  %231 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %232 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %233 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 4
  %236 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %237 = call i32 (i32, i8*, ...) @DP(i32 %236, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  br label %300

238:                                              ; preds = %213
  %239 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @bnx2x_wait_for_link(%struct.bnx2x* %239, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %238, %106, %87
  %244 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %245 = call i64 @bnx2x_test_intr(%struct.bnx2x* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %263

247:                                              ; preds = %243
  %248 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %249 = call i32 @IS_MF(%struct.bnx2x* %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %247
  %252 = load i32*, i32** %6, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 5
  store i32 1, i32* %253, align 4
  br label %257

254:                                              ; preds = %247
  %255 = load i32*, i32** %6, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  store i32 1, i32* %256, align 4
  br label %257

257:                                              ; preds = %254, %251
  %258 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %259 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %260 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %257, %243
  %264 = load i32, i32* %9, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %281

266:                                              ; preds = %263
  store i32 100, i32* %11, align 4
  br label %267

267:                                              ; preds = %278, %266
  %268 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %269 = load i32, i32* %8, align 4
  %270 = call i64 @bnx2x_link_test(%struct.bnx2x* %268, i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %267
  %273 = load i32, i32* %11, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %11, align 4
  %275 = icmp ne i32 %274, 0
  br label %276

276:                                              ; preds = %272, %267
  %277 = phi i1 [ false, %267 ], [ %275, %272 ]
  br i1 %277, label %278, label %280

278:                                              ; preds = %276
  %279 = call i32 @msleep(i32 20)
  br label %267

280:                                              ; preds = %276
  br label %281

281:                                              ; preds = %280, %263
  %282 = load i32, i32* %11, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %300, label %284

284:                                              ; preds = %281
  %285 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %286 = call i32 @IS_MF(%struct.bnx2x* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %284
  %289 = load i32*, i32** %6, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 6
  store i32 1, i32* %290, align 4
  br label %294

291:                                              ; preds = %284
  %292 = load i32*, i32** %6, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 2
  store i32 1, i32* %293, align 4
  br label %294

294:                                              ; preds = %291, %288
  %295 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %296 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %297 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %21, %30, %84, %135, %230, %294, %281
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pci_num_vf(i32) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @BNX2X_NUM_TESTS(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_test_nvram(%struct.bnx2x*) #1

declare dso_local i32 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_nic_unload(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_nic_load(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_wait_for_link(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @bnx2x_test_registers(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_test_memory(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_test_loopback(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_test_ext_loopback(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_test_intr(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_link_test(%struct.bnx2x*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
