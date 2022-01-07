; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_setup_rctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_setup_rctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.e1000_hw }
%struct.TYPE_6__ = type { i64, i32 }
%struct.e1000_hw = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32 }

@e1000_pch2lan = common dso_local global i64 0, align 8
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"failed to enable|disable jumbo frame workaround mode\0A\00", align 1
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_MO_SHIFT = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@E1000_RCTL_BAM = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_NO = common dso_local global i32 0, align 4
@E1000_RCTL_RDMTS_HALF = common dso_local global i32 0, align 4
@E1000_RCTL_SBP = common dso_local global i32 0, align 4
@E1000_RCTL_LPE = common dso_local global i32 0, align 4
@FLAG2_CRC_STRIPPING = common dso_local global i32 0, align 4
@E1000_RCTL_SECRC = common dso_local global i32 0, align 4
@e1000_phy_82577 = common dso_local global i64 0, align 8
@E1000_RCTL_SZ_4096 = common dso_local global i32 0, align 4
@E1000_RCTL_BSEX = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_2048 = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_8192 = common dso_local global i32 0, align 4
@E1000_RCTL_SZ_16384 = common dso_local global i32 0, align 4
@RFCTL = common dso_local global i32 0, align 4
@E1000_RFCTL_EXTEN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@E1000_RCTL_DTYP_PS = common dso_local global i32 0, align 4
@E1000_PSRCTL_BSIZE0_SHIFT = common dso_local global i32 0, align 4
@E1000_PSRCTL_BSIZE3_SHIFT = common dso_local global i32 0, align 4
@E1000_PSRCTL_BSIZE2_SHIFT = common dso_local global i32 0, align 4
@E1000_PSRCTL_BSIZE1_SHIFT = common dso_local global i32 0, align 4
@PSRCTL = common dso_local global i32 0, align 4
@NETIF_F_RXALL = common dso_local global i32 0, align 4
@E1000_RCTL_PMCF = common dso_local global i32 0, align 4
@E1000_RCTL_VFE = common dso_local global i32 0, align 4
@E1000_RCTL_DPF = common dso_local global i32 0, align 4
@E1000_RCTL_CFIEN = common dso_local global i32 0, align 4
@FLAG_RESTART_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_setup_rctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_setup_rctl(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 6
  store %struct.e1000_hw* %11, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e1000_pch2lan, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 5
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ETH_DATA_LEN, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = call i64 @e1000_lv_jumbo_workaround_ich8lan(%struct.e1000_hw* %27, i32 1)
  store i64 %28, i64* %7, align 8
  br label %32

29:                                               ; preds = %18
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = call i64 @e1000_lv_jumbo_workaround_ich8lan(%struct.e1000_hw* %30, i32 0)
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @e_dbg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* @RCTL, align 4
  %40 = call i32 @er32(i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @E1000_RCTL_MO_SHIFT, align 4
  %42 = shl i32 3, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* @E1000_RCTL_EN, align 4
  %47 = load i32, i32* @E1000_RCTL_BAM, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @E1000_RCTL_LBM_NO, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @E1000_RCTL_RDMTS_HALF, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @E1000_RCTL_MO_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %52, %59
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @E1000_RCTL_SBP, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %67, i32 0, i32 5
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ETH_DATA_LEN, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %38
  %75 = load i32, i32* @E1000_RCTL_LPE, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %83

79:                                               ; preds = %38
  %80 = load i32, i32* @E1000_RCTL_LPE, align 4
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @FLAG2_CRC_STRIPPING, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @E1000_RCTL_SECRC, align 4
  %92 = load i32, i32* %4, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %83
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @e1000_phy_82577, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %133

101:                                              ; preds = %94
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @E1000_RCTL_LPE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %101
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = call i32 @PHY_REG(i32 770, i32 26)
  %109 = call i32 @e1e_rphy(%struct.e1000_hw* %107, i32 %108, i32* %8)
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, 65528
  store i32 %111, i32* %8, align 4
  %112 = call i32 @BIT(i32 2)
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %116 = call i32 @PHY_REG(i32 770, i32 26)
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @e1e_wphy(%struct.e1000_hw* %115, i32 %116, i32 %117)
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = call i32 @e1e_rphy(%struct.e1000_hw* %119, i32 22, i32* %8)
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, 4095
  store i32 %122, i32* %8, align 4
  %123 = call i32 @BIT(i32 14)
  %124 = load i32, i32* %8, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %127 = call i32 @e1e_wphy(%struct.e1000_hw* %126, i32 16, i32 10275)
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %129 = call i32 @e1e_wphy(%struct.e1000_hw* %128, i32 17, i32 3)
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @e1e_wphy(%struct.e1000_hw* %130, i32 22, i32 %131)
  br label %133

133:                                              ; preds = %106, %101, %94
  %134 = load i32, i32* @E1000_RCTL_SZ_4096, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %4, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* @E1000_RCTL_BSEX, align 4
  %139 = load i32, i32* %4, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %4, align 4
  %141 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %142 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %145 [
    i32 2048, label %144
    i32 4096, label %153
    i32 8192, label %157
    i32 16384, label %161
  ]

144:                                              ; preds = %133
  br label %145

145:                                              ; preds = %133, %144
  %146 = load i32, i32* @E1000_RCTL_SZ_2048, align 4
  %147 = load i32, i32* %4, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* @E1000_RCTL_BSEX, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %4, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %4, align 4
  br label %165

153:                                              ; preds = %133
  %154 = load i32, i32* @E1000_RCTL_SZ_4096, align 4
  %155 = load i32, i32* %4, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %4, align 4
  br label %165

157:                                              ; preds = %133
  %158 = load i32, i32* @E1000_RCTL_SZ_8192, align 4
  %159 = load i32, i32* %4, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %4, align 4
  br label %165

161:                                              ; preds = %133
  %162 = load i32, i32* @E1000_RCTL_SZ_16384, align 4
  %163 = load i32, i32* %4, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %161, %157, %153, %145
  %166 = load i32, i32* @RFCTL, align 4
  %167 = call i32 @er32(i32 %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* @E1000_RFCTL_EXTEN, align 4
  %169 = load i32, i32* %5, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* @RFCTL, align 4
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @ew32(i32 %171, i32 %172)
  %174 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %175 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %174, i32 0, i32 5
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @PAGE_USE_COUNT(i64 %178)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp sle i32 %180, 3
  br i1 %181, label %182, label %194

182:                                              ; preds = %165
  %183 = load i32, i32* @PAGE_SIZE, align 4
  %184 = icmp sle i32 %183, 16384
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @E1000_RCTL_LPE, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %193 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  br label %197

194:                                              ; preds = %185, %182, %165
  %195 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %196 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %195, i32 0, i32 2
  store i32 0, i32* %196, align 8
  br label %197

197:                                              ; preds = %194, %190
  %198 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %199 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %238

202:                                              ; preds = %197
  store i32 0, i32* %9, align 4
  %203 = load i32, i32* @E1000_RCTL_DTYP_PS, align 4
  %204 = load i32, i32* %4, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %4, align 4
  %206 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %207 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @E1000_PSRCTL_BSIZE0_SHIFT, align 4
  %210 = ashr i32 %208, %209
  %211 = load i32, i32* %9, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %9, align 4
  %213 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %214 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  switch i32 %215, label %234 [
    i32 3, label %216
    i32 2, label %222
    i32 1, label %228
  ]

216:                                              ; preds = %202
  %217 = load i32, i32* @PAGE_SIZE, align 4
  %218 = load i32, i32* @E1000_PSRCTL_BSIZE3_SHIFT, align 4
  %219 = shl i32 %217, %218
  %220 = load i32, i32* %9, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %9, align 4
  br label %222

222:                                              ; preds = %202, %216
  %223 = load i32, i32* @PAGE_SIZE, align 4
  %224 = load i32, i32* @E1000_PSRCTL_BSIZE2_SHIFT, align 4
  %225 = shl i32 %223, %224
  %226 = load i32, i32* %9, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %9, align 4
  br label %228

228:                                              ; preds = %202, %222
  %229 = load i32, i32* @PAGE_SIZE, align 4
  %230 = load i32, i32* @E1000_PSRCTL_BSIZE1_SHIFT, align 4
  %231 = ashr i32 %229, %230
  %232 = load i32, i32* %9, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %202, %228
  %235 = load i32, i32* @PSRCTL, align 4
  %236 = load i32, i32* %9, align 4
  %237 = call i32 @ew32(i32 %235, i32 %236)
  br label %238

238:                                              ; preds = %234, %197
  %239 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %240 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %239, i32 0, i32 5
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @NETIF_F_RXALL, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %263

247:                                              ; preds = %238
  %248 = load i32, i32* @E1000_RCTL_SBP, align 4
  %249 = load i32, i32* @E1000_RCTL_BAM, align 4
  %250 = or i32 %248, %249
  %251 = load i32, i32* @E1000_RCTL_PMCF, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* %4, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %4, align 4
  %255 = load i32, i32* @E1000_RCTL_VFE, align 4
  %256 = load i32, i32* @E1000_RCTL_DPF, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @E1000_RCTL_CFIEN, align 4
  %259 = or i32 %257, %258
  %260 = xor i32 %259, -1
  %261 = load i32, i32* %4, align 4
  %262 = and i32 %261, %260
  store i32 %262, i32* %4, align 4
  br label %263

263:                                              ; preds = %247, %238
  %264 = load i32, i32* @RCTL, align 4
  %265 = load i32, i32* %4, align 4
  %266 = call i32 @ew32(i32 %264, i32 %265)
  %267 = load i32, i32* @FLAG_RESTART_NOW, align 4
  %268 = xor i32 %267, -1
  %269 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %270 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = and i32 %271, %268
  store i32 %272, i32* %270, align 8
  ret void
}

declare dso_local i64 @e1000_lv_jumbo_workaround_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @PHY_REG(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @PAGE_USE_COUNT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
