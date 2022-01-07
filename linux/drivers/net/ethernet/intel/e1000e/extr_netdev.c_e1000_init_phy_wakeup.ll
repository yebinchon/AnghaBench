; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_init_phy_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_init_phy_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.2*, i64, i64)*, i32 (%struct.e1000_hw.3*, i64, i64*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Could not acquire PHY\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@BM_RCTL = common dso_local global i64 0, align 8
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_UPE = common dso_local global i64 0, align 8
@BM_RCTL_UPE = common dso_local global i64 0, align 8
@E1000_RCTL_MPE = common dso_local global i64 0, align 8
@BM_RCTL_MPE = common dso_local global i64 0, align 8
@BM_RCTL_MO_MASK = common dso_local global i64 0, align 8
@E1000_RCTL_MO_3 = common dso_local global i64 0, align 8
@E1000_RCTL_MO_SHIFT = common dso_local global i64 0, align 8
@BM_RCTL_MO_SHIFT = common dso_local global i64 0, align 8
@E1000_RCTL_BAM = common dso_local global i64 0, align 8
@BM_RCTL_BAM = common dso_local global i64 0, align 8
@E1000_RCTL_PMCF = common dso_local global i64 0, align 8
@BM_RCTL_PMCF = common dso_local global i64 0, align 8
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_RFCE = common dso_local global i64 0, align 8
@BM_RCTL_RFCE = common dso_local global i64 0, align 8
@E1000_WUC_PME_EN = common dso_local global i64 0, align 8
@E1000_WUFC_MAG = common dso_local global i64 0, align 8
@E1000_WUFC_LNKC = common dso_local global i64 0, align 8
@E1000_WUC_APME = common dso_local global i64 0, align 8
@WUFC = common dso_local global i32 0, align 4
@WUC = common dso_local global i32 0, align 4
@E1000_WUC_PHY_WAKE = common dso_local global i64 0, align 8
@E1000_WUC_APMPME = common dso_local global i64 0, align 8
@E1000_WUC_PME_STATUS = common dso_local global i64 0, align 8
@BM_WUFC = common dso_local global i64 0, align 8
@BM_WUC = common dso_local global i64 0, align 8
@BM_WUC_ENABLE_BIT = common dso_local global i64 0, align 8
@BM_WUC_HOST_WU_BIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not set PHY Host Wakeup bit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, i64)* @e1000_init_phy_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_phy_wakeup(%struct.e1000_adapter* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 0
  store %struct.e1000_hw* %14, %struct.e1000_hw** %6, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %16 = call i32 @e1000_copy_rx_addrs_to_phy_ich8lan(%struct.e1000_hw* %15)
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %20, align 8
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %23 = bitcast %struct.e1000_hw* %22 to %struct.e1000_hw.0*
  %24 = call i32 %21(%struct.e1000_hw.0* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = call i32 @e_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %3, align 4
  br label %237

30:                                               ; preds = %2
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %32 = call i32 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %31, i64* %11)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %227

36:                                               ; preds = %30
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %76, %36
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %38, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %37
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %47 = load i32, i32* @E1000_MTA, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %46, i32 %47, i64 %48)
  store i64 %49, i64* %8, align 8
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32 (%struct.e1000_hw.2*, i64, i64)*, i32 (%struct.e1000_hw.2*, i64, i64)** %53, align 8
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %56 = bitcast %struct.e1000_hw* %55 to %struct.e1000_hw.2*
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @BM_MTA(i64 %57)
  %59 = load i64, i64* %8, align 8
  %60 = and i64 %59, 65535
  %61 = call i32 %54(%struct.e1000_hw.2* %56, i64 %58, i64 %60)
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %63 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32 (%struct.e1000_hw.2*, i64, i64)*, i32 (%struct.e1000_hw.2*, i64, i64)** %65, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %68 = bitcast %struct.e1000_hw* %67 to %struct.e1000_hw.2*
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @BM_MTA(i64 %69)
  %71 = add nsw i64 %70, 1
  %72 = load i64, i64* %8, align 8
  %73 = ashr i64 %72, 16
  %74 = and i64 %73, 65535
  %75 = call i32 %66(%struct.e1000_hw.2* %68, i64 %71, i64 %74)
  br label %76

76:                                               ; preds = %45
  %77 = load i64, i64* %7, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %37

79:                                               ; preds = %37
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i32 (%struct.e1000_hw.3*, i64, i64*)*, i32 (%struct.e1000_hw.3*, i64, i64*)** %83, align 8
  %85 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %85, i32 0, i32 0
  %87 = bitcast %struct.e1000_hw* %86 to %struct.e1000_hw.3*
  %88 = load i64, i64* @BM_RCTL, align 8
  %89 = call i32 %84(%struct.e1000_hw.3* %87, i64 %88, i64* %10)
  %90 = load i32, i32* @RCTL, align 4
  %91 = call i64 @er32(i32 %90)
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @E1000_RCTL_UPE, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %79
  %97 = load i64, i64* @BM_RCTL_UPE, align 8
  %98 = load i64, i64* %10, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %10, align 8
  br label %100

100:                                              ; preds = %96, %79
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* @E1000_RCTL_MPE, align 8
  %103 = and i64 %101, %102
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i64, i64* @BM_RCTL_MPE, align 8
  %107 = load i64, i64* %10, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %10, align 8
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i64, i64* @BM_RCTL_MO_MASK, align 8
  %111 = xor i64 %110, -1
  %112 = load i64, i64* %10, align 8
  %113 = and i64 %112, %111
  store i64 %113, i64* %10, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* @E1000_RCTL_MO_3, align 8
  %116 = and i64 %114, %115
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %109
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* @E1000_RCTL_MO_3, align 8
  %121 = and i64 %119, %120
  %122 = load i64, i64* @E1000_RCTL_MO_SHIFT, align 8
  %123 = ashr i64 %121, %122
  %124 = load i64, i64* @BM_RCTL_MO_SHIFT, align 8
  %125 = shl i64 %123, %124
  %126 = load i64, i64* %10, align 8
  %127 = or i64 %126, %125
  store i64 %127, i64* %10, align 8
  br label %128

128:                                              ; preds = %118, %109
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* @E1000_RCTL_BAM, align 8
  %131 = and i64 %129, %130
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i64, i64* @BM_RCTL_BAM, align 8
  %135 = load i64, i64* %10, align 8
  %136 = or i64 %135, %134
  store i64 %136, i64* %10, align 8
  br label %137

137:                                              ; preds = %133, %128
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* @E1000_RCTL_PMCF, align 8
  %140 = and i64 %138, %139
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i64, i64* @BM_RCTL_PMCF, align 8
  %144 = load i64, i64* %10, align 8
  %145 = or i64 %144, %143
  store i64 %145, i64* %10, align 8
  br label %146

146:                                              ; preds = %142, %137
  %147 = load i32, i32* @CTRL, align 4
  %148 = call i64 @er32(i32 %147)
  store i64 %148, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* @E1000_CTRL_RFCE, align 8
  %151 = and i64 %149, %150
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load i64, i64* @BM_RCTL_RFCE, align 8
  %155 = load i64, i64* %10, align 8
  %156 = or i64 %155, %154
  store i64 %156, i64* %10, align 8
  br label %157

157:                                              ; preds = %153, %146
  %158 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %159 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32 (%struct.e1000_hw.2*, i64, i64)*, i32 (%struct.e1000_hw.2*, i64, i64)** %161, align 8
  %163 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %164 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %163, i32 0, i32 0
  %165 = bitcast %struct.e1000_hw* %164 to %struct.e1000_hw.2*
  %166 = load i64, i64* @BM_RCTL, align 8
  %167 = load i64, i64* %10, align 8
  %168 = call i32 %162(%struct.e1000_hw.2* %165, i64 %166, i64 %167)
  %169 = load i64, i64* @E1000_WUC_PME_EN, align 8
  store i64 %169, i64* %9, align 8
  %170 = load i64, i64* %5, align 8
  %171 = load i64, i64* @E1000_WUFC_MAG, align 8
  %172 = load i64, i64* @E1000_WUFC_LNKC, align 8
  %173 = or i64 %171, %172
  %174 = and i64 %170, %173
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %157
  %177 = load i64, i64* @E1000_WUC_APME, align 8
  %178 = load i64, i64* %9, align 8
  %179 = or i64 %178, %177
  store i64 %179, i64* %9, align 8
  br label %180

180:                                              ; preds = %176, %157
  %181 = load i32, i32* @WUFC, align 4
  %182 = load i64, i64* %5, align 8
  %183 = call i32 @ew32(i32 %181, i64 %182)
  %184 = load i32, i32* @WUC, align 4
  %185 = load i64, i64* @E1000_WUC_PHY_WAKE, align 8
  %186 = load i64, i64* @E1000_WUC_APMPME, align 8
  %187 = or i64 %185, %186
  %188 = load i64, i64* @E1000_WUC_PME_STATUS, align 8
  %189 = or i64 %187, %188
  %190 = load i64, i64* %9, align 8
  %191 = or i64 %189, %190
  %192 = call i32 @ew32(i32 %184, i64 %191)
  %193 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %194 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 2
  %197 = load i32 (%struct.e1000_hw.2*, i64, i64)*, i32 (%struct.e1000_hw.2*, i64, i64)** %196, align 8
  %198 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %199 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %198, i32 0, i32 0
  %200 = bitcast %struct.e1000_hw* %199 to %struct.e1000_hw.2*
  %201 = load i64, i64* @BM_WUFC, align 8
  %202 = load i64, i64* %5, align 8
  %203 = call i32 %197(%struct.e1000_hw.2* %200, i64 %201, i64 %202)
  %204 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %205 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  %208 = load i32 (%struct.e1000_hw.2*, i64, i64)*, i32 (%struct.e1000_hw.2*, i64, i64)** %207, align 8
  %209 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %210 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %209, i32 0, i32 0
  %211 = bitcast %struct.e1000_hw* %210 to %struct.e1000_hw.2*
  %212 = load i64, i64* @BM_WUC, align 8
  %213 = load i64, i64* %9, align 8
  %214 = call i32 %208(%struct.e1000_hw.2* %211, i64 %212, i64 %213)
  %215 = load i64, i64* @BM_WUC_ENABLE_BIT, align 8
  %216 = load i64, i64* @BM_WUC_HOST_WU_BIT, align 8
  %217 = or i64 %215, %216
  %218 = load i64, i64* %11, align 8
  %219 = or i64 %218, %217
  store i64 %219, i64* %11, align 8
  %220 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %221 = call i32 @e1000_disable_phy_wakeup_reg_access_bm(%struct.e1000_hw* %220, i64* %11)
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %12, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %180
  %225 = call i32 @e_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %180
  br label %227

227:                                              ; preds = %226, %35
  %228 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %229 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 1
  %232 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %231, align 8
  %233 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %234 = bitcast %struct.e1000_hw* %233 to %struct.e1000_hw.1*
  %235 = call i32 %232(%struct.e1000_hw.1* %234)
  %236 = load i32, i32* %12, align 4
  store i32 %236, i32* %3, align 4
  br label %237

237:                                              ; preds = %227, %27
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i32 @e1000_copy_rx_addrs_to_phy_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e_err(i8*) #1

declare dso_local i32 @e1000_enable_phy_wakeup_reg_access_bm(%struct.e1000_hw*, i64*) #1

declare dso_local i64 @E1000_READ_REG_ARRAY(%struct.e1000_hw*, i32, i64) #1

declare dso_local i64 @BM_MTA(i64) #1

declare dso_local i64 @er32(i32) #1

declare dso_local i32 @ew32(i32, i64) #1

declare dso_local i32 @e1000_disable_phy_wakeup_reg_access_bm(%struct.e1000_hw*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
