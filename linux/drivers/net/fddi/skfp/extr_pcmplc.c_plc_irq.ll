; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_plc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pcmplc.c_plc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__, %struct.s_phy* }
%struct.TYPE_9__ = type { i8*, i64, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.s_phy = type { i32*, i32, i64, %struct.TYPE_10__*, i32, %struct.TYPE_7__, %struct.s_plc }
%struct.TYPE_10__ = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.s_plc = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PL_EBUF_ERR = common dso_local global i32 0, align 4
@PC8_ACTIVE = common dso_local global i8* null, align 8
@PL_PHYINV = common dso_local global i32 0, align 4
@PL_VSYM_CTR = common dso_local global i32 0, align 4
@PL_MINI_CTR = common dso_local global i32 0, align 4
@PL_LE_CTR = common dso_local global i32 0, align 4
@PL_LE_THRESHOLD = common dso_local global i32 0, align 4
@PL_LINK_ERR_CTR = common dso_local global i32 0, align 4
@PL_TPC_EXPIRED = common dso_local global i32 0, align 4
@PS_LCT = common dso_local global i64 0, align 8
@PL_LS_MATCH = common dso_local global i32 0, align 4
@PL_CNTRL_B = common dso_local global i32 0, align 4
@PL_MATCH_LS = common dso_local global i32 0, align 4
@PC_ILS = common dso_local global i32 0, align 4
@PC_HLS = common dso_local global i32 0, align 4
@PC_MLS = common dso_local global i32 0, align 4
@PC_QLS = common dso_local global i32 0, align 4
@PL_PCM_BREAK = common dso_local global i32 0, align 4
@PL_STATUS_B = common dso_local global i32 0, align 4
@PL_BREAK_REASON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"PLC %d: MDcF = %x\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"PLC %d: restart (reason %x)\00", align 1
@EVENT_PCM = common dso_local global i64 0, align 8
@PC_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"PLC %d: NO!! restart (reason %x)\00", align 1
@PL_PCM_CODE = common dso_local global i32 0, align 4
@PC_SIGNAL = common dso_local global i32 0, align 4
@PL_RCV_VECTOR = common dso_local global i32 0, align 4
@PL_PCM_ENABLED = common dso_local global i32 0, align 4
@PC_JOIN = common dso_local global i32 0, align 4
@PL_TRACE_PROP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"PCM : irq TRACE_PROP %d %d\00", align 1
@TRUE = common dso_local global i64 0, align 8
@EVENT_ECM = common dso_local global i64 0, align 8
@EC_TRACE_PROP = common dso_local global i32 0, align 4
@PL_SELF_TEST = common dso_local global i32 0, align 4
@PC2_TRACE = common dso_local global i8* null, align 8
@PT_PASSED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"PCM : state = %s %d\00", align 1
@PT_PENDING = common dso_local global i64 0, align 8
@EC_PATH_TEST = common dso_local global i32 0, align 4
@PL_TNE_EXPIRED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"PCM %c : PC81 %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"NSE\00", align 1
@EC_DISCONNECT = common dso_local global i32 0, align 4
@PLC_REV_MASK = common dso_local global i32 0, align 4
@PLC_REV_SN3 = common dso_local global i32 0, align 4
@PL_INTR_MASK = common dso_local global i32 0, align 4
@PL_LSDO = common dso_local global i32 0, align 4
@PL_NP_ERR = common dso_local global i32 0, align 4
@PL_PARITY_ERR = common dso_local global i32 0, align 4
@PL_STATUS_A = common dso_local global i32 0, align 4
@SMT_E0136 = common dso_local global i32 0, align 4
@SMT_E0136_MSG = common dso_local global i32 0, align 4
@plc_imsk_na = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plc_irq(%struct.s_smc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.s_phy*, align 8
  %8 = alloca %struct.s_plc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %14 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %13, i32 0, i32 3
  %15 = load %struct.s_phy*, %struct.s_phy** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %15, i64 %17
  store %struct.s_phy* %18, %struct.s_phy** %7, align 8
  %19 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %20 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %19, i32 0, i32 6
  store %struct.s_plc* %20, %struct.s_plc** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %23 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %21, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %29 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %28, i32 0, i32 17
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %425

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PL_EBUF_ERR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %39 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %37
  %43 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %44 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %43, i32 0, i32 3
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** @PC8_ACTIVE, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %52 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %51, i32 0, i32 3
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %42, %37
  %58 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %59 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %58, i32 0, i32 16
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %63 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sle i32 %64, 1000
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %68 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %66, %57
  br label %75

72:                                               ; preds = %32
  %73 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %74 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %71
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @PL_PHYINV, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %82 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %81, i32 0, i32 15
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @PL_VSYM_CTR, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %92 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %91, i32 0, i32 14
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @PL_MINI_CTR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %102 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %101, i32 0, i32 13
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %95
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @PL_LE_CTR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %146

110:                                              ; preds = %105
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @PL_LE_THRESHOLD, align 4
  %113 = call i32 @PLC(i32 %111, i32 %112)
  %114 = call i32 @inpw(i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @PL_LINK_ERR_CTR, align 4
  %117 = call i32 @PLC(i32 %115, i32 %116)
  %118 = call i32 @inpw(i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 256
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %122, %110
  %126 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %127 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %125
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %134 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, %132
  store i32 %137, i32* %135, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %140 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %139, i32 0, i32 3
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, %138
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %131, %125
  br label %146

146:                                              ; preds = %145, %105
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @PL_TPC_EXPIRED, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %146
  %152 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %153 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @PS_LCT, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %158

158:                                              ; preds = %157, %151
  %159 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %160 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %158, %146
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @PL_LS_MATCH, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %192

168:                                              ; preds = %163
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @PL_CNTRL_B, align 4
  %171 = call i32 @PLC(i32 %169, i32 %170)
  %172 = call i32 @inpw(i32 %171)
  %173 = load i32, i32* @PL_MATCH_LS, align 4
  %174 = and i32 %172, %173
  switch i32 %174, label %191 [
    i32 130, label %175
    i32 131, label %179
    i32 129, label %183
    i32 128, label %187
  ]

175:                                              ; preds = %168
  %176 = load i32, i32* @PC_ILS, align 4
  %177 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %178 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  br label %191

179:                                              ; preds = %168
  %180 = load i32, i32* @PC_HLS, align 4
  %181 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %182 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 8
  br label %191

183:                                              ; preds = %168
  %184 = load i32, i32* @PC_MLS, align 4
  %185 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %186 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 8
  br label %191

187:                                              ; preds = %168
  %188 = load i32, i32* @PC_QLS, align 4
  %189 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %190 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %168, %187, %183, %179, %175
  br label %192

192:                                              ; preds = %191, %163
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @PL_PCM_BREAK, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %265

197:                                              ; preds = %192
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* @PL_STATUS_B, align 4
  %200 = call i32 @PLC(i32 %198, i32 %199)
  %201 = call i32 @inpw(i32 %200)
  %202 = load i32, i32* @PL_BREAK_REASON, align 4
  %203 = and i32 %201, %202
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  switch i32 %204, label %235 [
    i32 135, label %205
    i32 132, label %210
    i32 133, label %215
    i32 134, label %220
    i32 136, label %225
    i32 137, label %230
  ]

205:                                              ; preds = %197
  %206 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %207 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %206, i32 0, i32 11
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %235

210:                                              ; preds = %197
  %211 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %212 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %211, i32 0, i32 10
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 8
  br label %235

215:                                              ; preds = %197
  %216 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %217 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %216, i32 0, i32 9
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 4
  br label %235

220:                                              ; preds = %197
  %221 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %222 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %221, i32 0, i32 8
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 8
  br label %235

225:                                              ; preds = %197
  %226 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %227 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  br label %235

230:                                              ; preds = %197
  %231 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %232 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %197, %230, %225, %220, %215, %210, %205
  %236 = load i32, i32* %5, align 4
  %237 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %238 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 (i32, i8*, i32, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %236, i8* %240)
  %242 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %243 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = load i64, i64* @FALSE, align 8
  %247 = inttoptr i64 %246 to i8*
  %248 = icmp eq i8* %245, %247
  br i1 %248, label %249, label %260

249:                                              ; preds = %235
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* %12, align 4
  %252 = call i32 (i32, i8*, i32, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %250, i32 %251)
  %253 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %254 = load i64, i64* @EVENT_PCM, align 8
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %254, %256
  %258 = load i32, i32* @PC_START, align 4
  %259 = call i32 @queue_event(%struct.s_smc* %253, i64 %257, i32 %258)
  br label %264

260:                                              ; preds = %235
  %261 = load i32, i32* %5, align 4
  %262 = load i32, i32* %12, align 4
  %263 = call i32 (i32, i8*, i32, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %260, %249
  br label %425

265:                                              ; preds = %192
  %266 = load i32, i32* %6, align 4
  %267 = load i32, i32* @PL_PCM_CODE, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %307

270:                                              ; preds = %265
  %271 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %272 = load i64, i64* @EVENT_PCM, align 8
  %273 = load i32, i32* %5, align 4
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %272, %274
  %276 = load i32, i32* @PC_SIGNAL, align 4
  %277 = call i32 @queue_event(%struct.s_smc* %271, i64 %275, i32 %276)
  %278 = load i32, i32* %5, align 4
  %279 = load i32, i32* @PL_RCV_VECTOR, align 4
  %280 = call i32 @PLC(i32 %278, i32 %279)
  %281 = call i32 @inpw(i32 %280)
  store i32 %281, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %282

282:                                              ; preds = %303, %270
  %283 = load i32, i32* %10, align 4
  %284 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %285 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = icmp slt i32 %283, %286
  br i1 %287, label %288, label %306

288:                                              ; preds = %282
  %289 = load i32, i32* %9, align 4
  %290 = and i32 %289, 1
  %291 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %292 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = load %struct.s_plc*, %struct.s_plc** %8, align 8
  %295 = getelementptr inbounds %struct.s_plc, %struct.s_plc* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %10, align 4
  %298 = add nsw i32 %296, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %293, i64 %299
  store i32 %290, i32* %300, align 4
  %301 = load i32, i32* %9, align 4
  %302 = ashr i32 %301, 1
  store i32 %302, i32* %9, align 4
  br label %303

303:                                              ; preds = %288
  %304 = load i32, i32* %10, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %10, align 4
  br label %282

306:                                              ; preds = %282
  br label %321

307:                                              ; preds = %265
  %308 = load i32, i32* %6, align 4
  %309 = load i32, i32* @PL_PCM_ENABLED, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %307
  %313 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %314 = load i64, i64* @EVENT_PCM, align 8
  %315 = load i32, i32* %5, align 4
  %316 = sext i32 %315 to i64
  %317 = add nsw i64 %314, %316
  %318 = load i32, i32* @PC_JOIN, align 4
  %319 = call i32 @queue_event(%struct.s_smc* %313, i64 %317, i32 %318)
  br label %320

320:                                              ; preds = %312, %307
  br label %321

321:                                              ; preds = %320, %306
  %322 = load i32, i32* %6, align 4
  %323 = load i32, i32* @PL_TRACE_PROP, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %354

326:                                              ; preds = %321
  %327 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %328 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %327, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %353, label %331

331:                                              ; preds = %326
  %332 = load i32, i32* %5, align 4
  %333 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %334 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 0
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 (i32, i8*, i32, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %332, i8* %336)
  %338 = load i64, i64* @TRUE, align 8
  %339 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %340 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %339, i32 0, i32 2
  store i64 %338, i64* %340, align 8
  %341 = load i32, i32* %5, align 4
  %342 = call i32 @ENTITY_PHY(i32 %341)
  %343 = call i32 @ENTITY_BIT(i32 %342)
  %344 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %345 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = or i32 %347, %343
  store i32 %348, i32* %346, align 8
  %349 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %350 = load i64, i64* @EVENT_ECM, align 8
  %351 = load i32, i32* @EC_TRACE_PROP, align 4
  %352 = call i32 @queue_event(%struct.s_smc* %349, i64 %350, i32 %351)
  br label %353

353:                                              ; preds = %331, %326
  br label %354

354:                                              ; preds = %353, %321
  %355 = load i32, i32* %6, align 4
  %356 = load i32, i32* @PL_SELF_TEST, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %393

359:                                              ; preds = %354
  %360 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %361 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %360, i32 0, i32 3
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 0
  %364 = load i8*, i8** %363, align 8
  %365 = load i8*, i8** @PC2_TRACE, align 8
  %366 = icmp eq i8* %364, %365
  br i1 %366, label %367, label %393

367:                                              ; preds = %359
  %368 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %369 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @PT_PASSED, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %392

374:                                              ; preds = %367
  %375 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %376 = load i32, i32* %5, align 4
  %377 = call i32 @get_pcmstate(%struct.s_smc* %375, i32 %376)
  %378 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %379 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %378, i32 0, i32 3
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = call i32 (i32, i8*, i32, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %377, i8* %382)
  %384 = load i64, i64* @PT_PENDING, align 8
  %385 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %386 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 1
  store i64 %384, i64* %387, align 8
  %388 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %389 = load i64, i64* @EVENT_ECM, align 8
  %390 = load i32, i32* @EC_PATH_TEST, align 4
  %391 = call i32 @queue_event(%struct.s_smc* %388, i64 %389, i32 %390)
  br label %392

392:                                              ; preds = %374, %367
  br label %393

393:                                              ; preds = %392, %359, %354
  %394 = load i32, i32* %6, align 4
  %395 = load i32, i32* @PL_TNE_EXPIRED, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %425

398:                                              ; preds = %393
  %399 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %400 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %399, i32 0, i32 3
  %401 = load %struct.TYPE_10__*, %struct.TYPE_10__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 0
  %403 = load i8*, i8** %402, align 8
  %404 = load i8*, i8** @PC8_ACTIVE, align 8
  %405 = icmp eq i8* %403, %404
  br i1 %405, label %406, label %424

406:                                              ; preds = %398
  %407 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %408 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %407, i32 0, i32 2
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %423, label %411

411:                                              ; preds = %406
  %412 = load %struct.s_phy*, %struct.s_phy** %7, align 8
  %413 = getelementptr inbounds %struct.s_phy, %struct.s_phy* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = call i32 (i32, i8*, i32, ...) @DB_PCMN(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %414, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %416 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %417 = load i64, i64* @EVENT_PCM, align 8
  %418 = load i32, i32* %5, align 4
  %419 = sext i32 %418 to i64
  %420 = add nsw i64 %417, %419
  %421 = load i32, i32* @PC_START, align 4
  %422 = call i32 @queue_event(%struct.s_smc* %416, i64 %420, i32 %421)
  br label %425

423:                                              ; preds = %406
  br label %424

424:                                              ; preds = %423, %398
  br label %425

425:                                              ; preds = %27, %264, %411, %424, %393
  ret void
}

declare dso_local i32 @inpw(i32) #1

declare dso_local i32 @PLC(i32, i32) #1

declare dso_local i32 @DB_PCMN(i32, i8*, i32, ...) #1

declare dso_local i32 @queue_event(%struct.s_smc*, i64, i32) #1

declare dso_local i32 @ENTITY_BIT(i32) #1

declare dso_local i32 @ENTITY_PHY(i32) #1

declare dso_local i32 @get_pcmstate(%struct.s_smc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
