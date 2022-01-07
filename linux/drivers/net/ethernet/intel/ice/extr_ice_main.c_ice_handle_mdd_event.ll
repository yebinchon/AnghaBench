; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_handle_mdd_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_handle_mdd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, %struct.TYPE_2__*, %struct.ice_vf*, i32, %struct.ice_hw }
%struct.TYPE_2__ = type { i32 }
%struct.ice_vf = type { i64 }
%struct.ice_hw = type { i32 }

@__ICE_MDD_EVENT_PENDING = common dso_local global i32 0, align 4
@GL_MDET_TX_PQM = common dso_local global i32 0, align 4
@GL_MDET_TX_PQM_VALID_M = common dso_local global i32 0, align 4
@GL_MDET_TX_PQM_PF_NUM_M = common dso_local global i32 0, align 4
@GL_MDET_TX_PQM_PF_NUM_S = common dso_local global i32 0, align 4
@GL_MDET_TX_PQM_VF_NUM_M = common dso_local global i32 0, align 4
@GL_MDET_TX_PQM_VF_NUM_S = common dso_local global i32 0, align 4
@GL_MDET_TX_PQM_MAL_TYPE_M = common dso_local global i32 0, align 4
@GL_MDET_TX_PQM_MAL_TYPE_S = common dso_local global i32 0, align 4
@GL_MDET_TX_PQM_QNUM_M = common dso_local global i32 0, align 4
@GL_MDET_TX_PQM_QNUM_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Malicious Driver Detection event %d on TX queue %d PF# %d VF# %d\0A\00", align 1
@GL_MDET_TX_TCLAN = common dso_local global i32 0, align 4
@GL_MDET_TX_TCLAN_VALID_M = common dso_local global i32 0, align 4
@GL_MDET_TX_TCLAN_PF_NUM_M = common dso_local global i32 0, align 4
@GL_MDET_TX_TCLAN_PF_NUM_S = common dso_local global i32 0, align 4
@GL_MDET_TX_TCLAN_VF_NUM_M = common dso_local global i32 0, align 4
@GL_MDET_TX_TCLAN_VF_NUM_S = common dso_local global i32 0, align 4
@GL_MDET_TX_TCLAN_MAL_TYPE_M = common dso_local global i32 0, align 4
@GL_MDET_TX_TCLAN_MAL_TYPE_S = common dso_local global i32 0, align 4
@GL_MDET_TX_TCLAN_QNUM_M = common dso_local global i32 0, align 4
@GL_MDET_TX_TCLAN_QNUM_S = common dso_local global i32 0, align 4
@GL_MDET_RX = common dso_local global i32 0, align 4
@GL_MDET_RX_VALID_M = common dso_local global i32 0, align 4
@GL_MDET_RX_PF_NUM_M = common dso_local global i32 0, align 4
@GL_MDET_RX_PF_NUM_S = common dso_local global i32 0, align 4
@GL_MDET_RX_VF_NUM_M = common dso_local global i32 0, align 4
@GL_MDET_RX_VF_NUM_S = common dso_local global i32 0, align 4
@GL_MDET_RX_MAL_TYPE_M = common dso_local global i32 0, align 4
@GL_MDET_RX_MAL_TYPE_S = common dso_local global i32 0, align 4
@GL_MDET_RX_QNUM_M = common dso_local global i32 0, align 4
@GL_MDET_RX_QNUM_S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Malicious Driver Detection event %d on RX queue %d PF# %d VF# %d\0A\00", align 1
@PF_MDET_TX_PQM = common dso_local global i32 0, align 4
@PF_MDET_TX_PQM_VALID_M = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"TX driver issue detected, PF reset issued\0A\00", align 1
@PF_MDET_TX_TCLAN = common dso_local global i32 0, align 4
@PF_MDET_TX_TCLAN_VALID_M = common dso_local global i32 0, align 4
@PF_MDET_RX = common dso_local global i32 0, align 4
@PF_MDET_RX_VALID_M = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"RX driver issue detected, PF reset issued\0A\00", align 1
@__ICE_NEEDS_RESTART = common dso_local global i32 0, align 4
@VP_MDET_TX_PQM_VALID_M = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"TX driver issue detected on VF %d\0A\00", align 1
@VP_MDET_TX_TCLAN_VALID_M = common dso_local global i32 0, align 4
@VP_MDET_TX_TDPU_VALID_M = common dso_local global i32 0, align 4
@VP_MDET_RX_VALID_M = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"RX driver issue detected on VF %d\0A\00", align 1
@ICE_MDD_EVENTS_THRESHOLD = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [113 x i8] c"VF %d has had %llu MDD events since last boot, Admin might need to reload AVF driver with this number of events\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_pf*)* @ice_handle_mdd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_handle_mdd_event(%struct.ice_pf* %0) #0 {
  %2 = alloca %struct.ice_pf*, align 8
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ice_vf*, align 8
  %21 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %2, align 8
  %22 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %23 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %22, i32 0, i32 4
  store %struct.ice_hw* %23, %struct.ice_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %24 = load i32, i32* @__ICE_MDD_EVENT_PENDING, align 4
  %25 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %26 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @test_and_clear_bit(i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  br label %361

31:                                               ; preds = %1
  %32 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %33 = load i32, i32* @GL_MDET_TX_PQM, align 4
  %34 = call i32 @rd32(%struct.ice_hw* %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @GL_MDET_TX_PQM_VALID_M, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %77

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @GL_MDET_TX_PQM_PF_NUM_M, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @GL_MDET_TX_PQM_PF_NUM_S, align 4
  %44 = ashr i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @GL_MDET_TX_PQM_VF_NUM_M, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @GL_MDET_TX_PQM_VF_NUM_S, align 4
  %49 = ashr i32 %47, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @GL_MDET_TX_PQM_MAL_TYPE_M, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @GL_MDET_TX_PQM_MAL_TYPE_S, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @GL_MDET_TX_PQM_QNUM_M, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @GL_MDET_TX_PQM_QNUM_S, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %61 = call i64 @netif_msg_tx_err(%struct.ice_pf* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %39
  %64 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %65 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i32*, i8*, ...) @dev_info(i32* %67, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %63, %39
  %74 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %75 = load i32, i32* @GL_MDET_TX_PQM, align 4
  %76 = call i32 @wr32(%struct.ice_hw* %74, i32 %75, i32 -1)
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %31
  %78 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %79 = load i32, i32* @GL_MDET_TX_TCLAN, align 4
  %80 = call i32 @rd32(%struct.ice_hw* %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @GL_MDET_TX_TCLAN_VALID_M, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %123

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @GL_MDET_TX_TCLAN_PF_NUM_M, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @GL_MDET_TX_TCLAN_PF_NUM_S, align 4
  %90 = ashr i32 %88, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @GL_MDET_TX_TCLAN_VF_NUM_M, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @GL_MDET_TX_TCLAN_VF_NUM_S, align 4
  %95 = ashr i32 %93, %94
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @GL_MDET_TX_TCLAN_MAL_TYPE_M, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @GL_MDET_TX_TCLAN_MAL_TYPE_S, align 4
  %100 = ashr i32 %98, %99
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @GL_MDET_TX_TCLAN_QNUM_M, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @GL_MDET_TX_TCLAN_QNUM_S, align 4
  %105 = ashr i32 %103, %104
  store i32 %105, i32* %14, align 4
  %106 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %107 = call i64 @netif_msg_rx_err(%struct.ice_pf* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %85
  %110 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %111 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 (i32*, i8*, ...) @dev_info(i32* %113, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %109, %85
  %120 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %121 = load i32, i32* @GL_MDET_TX_TCLAN, align 4
  %122 = call i32 @wr32(%struct.ice_hw* %120, i32 %121, i32 -1)
  store i32 1, i32* %4, align 4
  br label %123

123:                                              ; preds = %119, %77
  %124 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %125 = load i32, i32* @GL_MDET_RX, align 4
  %126 = call i32 @rd32(%struct.ice_hw* %124, i32 %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @GL_MDET_RX_VALID_M, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %169

131:                                              ; preds = %123
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @GL_MDET_RX_PF_NUM_M, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @GL_MDET_RX_PF_NUM_S, align 4
  %136 = ashr i32 %134, %135
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @GL_MDET_RX_VF_NUM_M, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* @GL_MDET_RX_VF_NUM_S, align 4
  %141 = ashr i32 %139, %140
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @GL_MDET_RX_MAL_TYPE_M, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* @GL_MDET_RX_MAL_TYPE_S, align 4
  %146 = ashr i32 %144, %145
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @GL_MDET_RX_QNUM_M, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* @GL_MDET_RX_QNUM_S, align 4
  %151 = ashr i32 %149, %150
  store i32 %151, i32* %18, align 4
  %152 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %153 = call i64 @netif_msg_rx_err(%struct.ice_pf* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %131
  %156 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %157 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %156, i32 0, i32 1
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %16, align 4
  %164 = call i32 (i32*, i8*, ...) @dev_info(i32* %159, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %160, i32 %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %155, %131
  %166 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %167 = load i32, i32* @GL_MDET_RX, align 4
  %168 = call i32 @wr32(%struct.ice_hw* %166, i32 %167, i32 -1)
  store i32 1, i32* %4, align 4
  br label %169

169:                                              ; preds = %165, %123
  %170 = load i32, i32* %4, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %235

172:                                              ; preds = %169
  store i32 0, i32* %19, align 4
  %173 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %174 = load i32, i32* @PF_MDET_TX_PQM, align 4
  %175 = call i32 @rd32(%struct.ice_hw* %173, i32 %174)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @PF_MDET_TX_PQM_VALID_M, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %172
  %181 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %182 = load i32, i32* @PF_MDET_TX_PQM, align 4
  %183 = call i32 @wr32(%struct.ice_hw* %181, i32 %182, i32 65535)
  %184 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %185 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %184, i32 0, i32 1
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = call i32 (i32*, i8*, ...) @dev_info(i32* %187, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %189

189:                                              ; preds = %180, %172
  %190 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %191 = load i32, i32* @PF_MDET_TX_TCLAN, align 4
  %192 = call i32 @rd32(%struct.ice_hw* %190, i32 %191)
  store i32 %192, i32* %5, align 4
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @PF_MDET_TX_TCLAN_VALID_M, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %189
  %198 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %199 = load i32, i32* @PF_MDET_TX_TCLAN, align 4
  %200 = call i32 @wr32(%struct.ice_hw* %198, i32 %199, i32 65535)
  %201 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %202 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %201, i32 0, i32 1
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = call i32 (i32*, i8*, ...) @dev_info(i32* %204, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %206

206:                                              ; preds = %197, %189
  %207 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %208 = load i32, i32* @PF_MDET_RX, align 4
  %209 = call i32 @rd32(%struct.ice_hw* %207, i32 %208)
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* @PF_MDET_RX_VALID_M, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %206
  %215 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %216 = load i32, i32* @PF_MDET_RX, align 4
  %217 = call i32 @wr32(%struct.ice_hw* %215, i32 %216, i32 65535)
  %218 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %219 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %218, i32 0, i32 1
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = call i32 (i32*, i8*, ...) @dev_info(i32* %221, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %19, align 4
  br label %223

223:                                              ; preds = %214, %206
  %224 = load i32, i32* %19, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %223
  %227 = load i32, i32* @__ICE_NEEDS_RESTART, align 4
  %228 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %229 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @set_bit(i32 %227, i32 %230)
  %232 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %233 = call i32 @ice_service_task_schedule(%struct.ice_pf* %232)
  br label %234

234:                                              ; preds = %226, %223
  br label %235

235:                                              ; preds = %234, %169
  store i32 0, i32* %6, align 4
  br label %236

236:                                              ; preds = %358, %235
  %237 = load i32, i32* %6, align 4
  %238 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %239 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %361

242:                                              ; preds = %236
  %243 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %244 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %243, i32 0, i32 2
  %245 = load %struct.ice_vf*, %struct.ice_vf** %244, align 8
  %246 = load i32, i32* %6, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %245, i64 %247
  store %struct.ice_vf* %248, %struct.ice_vf** %20, align 8
  store i32 0, i32* %21, align 4
  %249 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %250 = load i32, i32* %6, align 4
  %251 = call i32 @VP_MDET_TX_PQM(i32 %250)
  %252 = call i32 @rd32(%struct.ice_hw* %249, i32 %251)
  store i32 %252, i32* %5, align 4
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* @VP_MDET_TX_PQM_VALID_M, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %242
  %258 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %259 = load i32, i32* %6, align 4
  %260 = call i32 @VP_MDET_TX_PQM(i32 %259)
  %261 = call i32 @wr32(%struct.ice_hw* %258, i32 %260, i32 65535)
  store i32 1, i32* %21, align 4
  %262 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %263 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %262, i32 0, i32 1
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 0
  %266 = load i32, i32* %6, align 4
  %267 = call i32 (i32*, i8*, ...) @dev_info(i32* %265, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %266)
  br label %268

268:                                              ; preds = %257, %242
  %269 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %270 = load i32, i32* %6, align 4
  %271 = call i32 @VP_MDET_TX_TCLAN(i32 %270)
  %272 = call i32 @rd32(%struct.ice_hw* %269, i32 %271)
  store i32 %272, i32* %5, align 4
  %273 = load i32, i32* %5, align 4
  %274 = load i32, i32* @VP_MDET_TX_TCLAN_VALID_M, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %268
  %278 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %279 = load i32, i32* %6, align 4
  %280 = call i32 @VP_MDET_TX_TCLAN(i32 %279)
  %281 = call i32 @wr32(%struct.ice_hw* %278, i32 %280, i32 65535)
  store i32 1, i32* %21, align 4
  %282 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %283 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %282, i32 0, i32 1
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 0
  %286 = load i32, i32* %6, align 4
  %287 = call i32 (i32*, i8*, ...) @dev_info(i32* %285, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %286)
  br label %288

288:                                              ; preds = %277, %268
  %289 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %290 = load i32, i32* %6, align 4
  %291 = call i32 @VP_MDET_TX_TDPU(i32 %290)
  %292 = call i32 @rd32(%struct.ice_hw* %289, i32 %291)
  store i32 %292, i32* %5, align 4
  %293 = load i32, i32* %5, align 4
  %294 = load i32, i32* @VP_MDET_TX_TDPU_VALID_M, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %308

297:                                              ; preds = %288
  %298 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %299 = load i32, i32* %6, align 4
  %300 = call i32 @VP_MDET_TX_TDPU(i32 %299)
  %301 = call i32 @wr32(%struct.ice_hw* %298, i32 %300, i32 65535)
  store i32 1, i32* %21, align 4
  %302 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %303 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %302, i32 0, i32 1
  %304 = load %struct.TYPE_2__*, %struct.TYPE_2__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 0
  %306 = load i32, i32* %6, align 4
  %307 = call i32 (i32*, i8*, ...) @dev_info(i32* %305, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %306)
  br label %308

308:                                              ; preds = %297, %288
  %309 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %310 = load i32, i32* %6, align 4
  %311 = call i32 @VP_MDET_RX(i32 %310)
  %312 = call i32 @rd32(%struct.ice_hw* %309, i32 %311)
  store i32 %312, i32* %5, align 4
  %313 = load i32, i32* %5, align 4
  %314 = load i32, i32* @VP_MDET_RX_VALID_M, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %328

317:                                              ; preds = %308
  %318 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %319 = load i32, i32* %6, align 4
  %320 = call i32 @VP_MDET_RX(i32 %319)
  %321 = call i32 @wr32(%struct.ice_hw* %318, i32 %320, i32 65535)
  store i32 1, i32* %21, align 4
  %322 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %323 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %322, i32 0, i32 1
  %324 = load %struct.TYPE_2__*, %struct.TYPE_2__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 0
  %326 = load i32, i32* %6, align 4
  %327 = call i32 (i32*, i8*, ...) @dev_info(i32* %325, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %326)
  br label %328

328:                                              ; preds = %317, %308
  %329 = load i32, i32* %21, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %357

331:                                              ; preds = %328
  %332 = load %struct.ice_vf*, %struct.ice_vf** %20, align 8
  %333 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = add nsw i64 %334, 1
  store i64 %335, i64* %333, align 8
  %336 = load %struct.ice_vf*, %struct.ice_vf** %20, align 8
  %337 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %356

340:                                              ; preds = %331
  %341 = load %struct.ice_vf*, %struct.ice_vf** %20, align 8
  %342 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @ICE_MDD_EVENTS_THRESHOLD, align 8
  %345 = icmp sle i64 %343, %344
  br i1 %345, label %346, label %356

346:                                              ; preds = %340
  %347 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %348 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %347, i32 0, i32 1
  %349 = load %struct.TYPE_2__*, %struct.TYPE_2__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 0
  %351 = load i32, i32* %6, align 4
  %352 = load %struct.ice_vf*, %struct.ice_vf** %20, align 8
  %353 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = call i32 (i32*, i8*, ...) @dev_info(i32* %350, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.6, i64 0, i64 0), i32 %351, i64 %354)
  br label %356

356:                                              ; preds = %346, %340, %331
  br label %357

357:                                              ; preds = %356, %328
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %6, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %6, align 4
  br label %236

361:                                              ; preds = %30, %236
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @rd32(%struct.ice_hw*, i32) #1

declare dso_local i64 @netif_msg_tx_err(%struct.ice_pf*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.ice_pf*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ice_service_task_schedule(%struct.ice_pf*) #1

declare dso_local i32 @VP_MDET_TX_PQM(i32) #1

declare dso_local i32 @VP_MDET_TX_TCLAN(i32) #1

declare dso_local i32 @VP_MDET_TX_TDPU(i32) #1

declare dso_local i32 @VP_MDET_RX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
