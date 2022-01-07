; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_fddi_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_fddi_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i8*, i8*, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@TRUE = common dso_local global i8* null, align 8
@ISR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"CH0B\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ISA = 0x%lx\00", align 1
@IMASK_SLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"CH1b\00", align 1
@IS_PLINT1 = common dso_local global i32 0, align 4
@IS_PLINT2 = common dso_local global i32 0, align 4
@IS_MINTR1 = common dso_local global i32 0, align 4
@FM_ST1U = common dso_local global i32 0, align 4
@FM_ST1L = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Slow transmit complete\00", align 1
@IS_MINTR2 = common dso_local global i32 0, align 4
@FM_ST2U = common dso_local global i32 0, align 4
@FM_ST2L = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Slow receive complete\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"stl = %x : stu = %x\00", align 1
@IS_MINTR3 = common dso_local global i32 0, align 4
@FM_ST3U = common dso_local global i32 0, align 4
@FM_ST3L = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"FORMAC Mode Register 3\00", align 1
@IS_TIMINT = common dso_local global i32 0, align 4
@IS_TOKEN = common dso_local global i32 0, align 4
@IS_R1_P = common dso_local global i32 0, align 4
@B4_R1_CSR = common dso_local global i32 0, align 4
@CSR_IRQ_CL_P = common dso_local global i32 0, align 4
@HWM_E0004 = common dso_local global i32 0, align 4
@HWM_E0004_MSG = common dso_local global i32 0, align 4
@IS_R1_C = common dso_local global i32 0, align 4
@CSR_IRQ_CL_C = common dso_local global i32 0, align 4
@HWM_E0005 = common dso_local global i32 0, align 4
@HWM_E0005_MSG = common dso_local global i32 0, align 4
@IS_XA_C = common dso_local global i32 0, align 4
@B5_XA_CSR = common dso_local global i32 0, align 4
@HWM_E0006 = common dso_local global i32 0, align 4
@HWM_E0006_MSG = common dso_local global i32 0, align 4
@IS_XS_C = common dso_local global i32 0, align 4
@B5_XS_CSR = common dso_local global i32 0, align 4
@HWM_E0007 = common dso_local global i32 0, align 4
@HWM_E0007_MSG = common dso_local global i32 0, align 4
@IS_XS_F = common dso_local global i32 0, align 4
@IS_XA_F = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Fast tx complete queue\00", align 1
@CSR_IRQ_CL_F = common dso_local global i32 0, align 4
@IS_R1_F = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Fast receive complete\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"CH2a\00", align 1
@FALSE = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"CH0E\00", align 1
@QUEUE_R1 = common dso_local global i64 0, align 8
@force_irq_pending = common dso_local global i64 0, align 8
@offDepth = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fddi_isr(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %7 = load i8*, i8** @TRUE, align 8
  %8 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %9 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i8* %7, i8** %11, align 8
  br label %12

12:                                               ; preds = %239, %1
  %13 = call i32 (...) @GET_ISR()
  %14 = load i32, i32* @ISR_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %240

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @NDD_TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18, i32 0, i32 0)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i32, i8*, ...) @DB_GEN(i32 7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @IMASK_SLOW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %182

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @NDD_TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 0, i32 0)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @IS_PLINT1, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %35 = call i32 @plc1_irq(%struct.s_smc* %34)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @IS_PLINT2, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %43 = call i32 @plc2_irq(%struct.s_smc* %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @IS_MINTR1, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i32, i32* @FM_ST1U, align 4
  %51 = call i32 @FM_A(i32 %50)
  %52 = call i32 @inpw(i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* @FM_ST1L, align 4
  %54 = call i32 @FM_A(i32 %53)
  %55 = call i32 @inpw(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = call i32 (i32, i8*, ...) @DB_GEN(i32 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %57 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @mac1_irq(%struct.s_smc* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %49, %44
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @IS_MINTR2, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load i32, i32* @FM_ST2U, align 4
  %68 = call i32 @FM_A(i32 %67)
  %69 = call i32 @inpw(i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @FM_ST2L, align 4
  %71 = call i32 @FM_A(i32 %70)
  %72 = call i32 @inpw(i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = call i32 (i32, i8*, ...) @DB_GEN(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (i32, i8*, ...) @DB_GEN(i32 7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @mac2_irq(%struct.s_smc* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %66, %61
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @IS_MINTR3, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load i32, i32* @FM_ST3U, align 4
  %88 = call i32 @FM_A(i32 %87)
  %89 = call i32 @inpw(i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @FM_ST3L, align 4
  %91 = call i32 @FM_A(i32 %90)
  %92 = call i32 @inpw(i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = call i32 (i32, i8*, ...) @DB_GEN(i32 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %94 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @mac3_irq(%struct.s_smc* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %86, %81
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @IS_TIMINT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %105 = call i32 @timer_irq(%struct.s_smc* %104)
  %106 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %107 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = icmp sgt i32 %111, 4
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %115 = call i32 @process_receive(%struct.s_smc* %114)
  br label %116

116:                                              ; preds = %113, %103
  br label %117

117:                                              ; preds = %116, %98
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @IS_TOKEN, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %124 = call i32 @rtm_irq(%struct.s_smc* %123)
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @IS_R1_P, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load i32, i32* @B4_R1_CSR, align 4
  %132 = call i32 @ADDR(i32 %131)
  %133 = load i32, i32* @CSR_IRQ_CL_P, align 4
  %134 = call i32 @outpd(i32 %132, i32 %133)
  %135 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %136 = load i32, i32* @HWM_E0004, align 4
  %137 = load i32, i32* @HWM_E0004_MSG, align 4
  %138 = call i32 @SMT_PANIC(%struct.s_smc* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %130, %125
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @IS_R1_C, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %139
  %145 = load i32, i32* @B4_R1_CSR, align 4
  %146 = call i32 @ADDR(i32 %145)
  %147 = load i32, i32* @CSR_IRQ_CL_C, align 4
  %148 = call i32 @outpd(i32 %146, i32 %147)
  %149 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %150 = load i32, i32* @HWM_E0005, align 4
  %151 = load i32, i32* @HWM_E0005_MSG, align 4
  %152 = call i32 @SMT_PANIC(%struct.s_smc* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %144, %139
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @IS_XA_C, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %153
  %159 = load i32, i32* @B5_XA_CSR, align 4
  %160 = call i32 @ADDR(i32 %159)
  %161 = load i32, i32* @CSR_IRQ_CL_C, align 4
  %162 = call i32 @outpd(i32 %160, i32 %161)
  %163 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %164 = load i32, i32* @HWM_E0006, align 4
  %165 = load i32, i32* @HWM_E0006_MSG, align 4
  %166 = call i32 @SMT_PANIC(%struct.s_smc* %163, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %158, %153
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* @IS_XS_C, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load i32, i32* @B5_XS_CSR, align 4
  %174 = call i32 @ADDR(i32 %173)
  %175 = load i32, i32* @CSR_IRQ_CL_C, align 4
  %176 = call i32 @outpd(i32 %174, i32 %175)
  %177 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %178 = load i32, i32* @HWM_E0007, align 4
  %179 = load i32, i32* @HWM_E0007_MSG, align 4
  %180 = call i32 @SMT_PANIC(%struct.s_smc* %177, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %172, %167
  br label %182

182:                                              ; preds = %181, %17
  %183 = load i32, i32* %3, align 4
  %184 = load i32, i32* @IS_XS_F, align 4
  %185 = load i32, i32* @IS_XA_F, align 4
  %186 = or i32 %184, %185
  %187 = and i32 %183, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %182
  %190 = call i32 (i32, i8*, ...) @DB_GEN(i32 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %191 = load i32, i32* @B5_XS_CSR, align 4
  %192 = call i32 @ADDR(i32 %191)
  %193 = load i32, i32* @CSR_IRQ_CL_F, align 4
  %194 = call i32 @outpd(i32 %192, i32 %193)
  %195 = load i32, i32* @B5_XA_CSR, align 4
  %196 = call i32 @ADDR(i32 %195)
  %197 = load i32, i32* @CSR_IRQ_CL_F, align 4
  %198 = call i32 @outpd(i32 %196, i32 %197)
  %199 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %200 = call i32 @mac_drv_clear_txd(%struct.s_smc* %199)
  %201 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %202 = call i32 @llc_restart_tx(%struct.s_smc* %201)
  br label %203

203:                                              ; preds = %189, %182
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* @IS_R1_F, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = call i32 (i32, i8*, ...) @DB_GEN(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %210 = load i32, i32* @B4_R1_CSR, align 4
  %211 = call i32 @ADDR(i32 %210)
  %212 = load i32, i32* @CSR_IRQ_CL_F, align 4
  %213 = call i32 @outpd(i32 %211, i32 %212)
  %214 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %215 = call i32 @process_receive(%struct.s_smc* %214)
  br label %216

216:                                              ; preds = %208, %203
  br label %217

217:                                              ; preds = %221, %216
  %218 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %219 = call i32* @get_llc_rx(%struct.s_smc* %218)
  store i32* %219, i32** %6, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %223 = load i32*, i32** %6, align 8
  %224 = call i32 @smt_to_llc(%struct.s_smc* %222, i32* %223)
  br label %217

225:                                              ; preds = %217
  %226 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %227 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %231 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %229, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %225
  %236 = call i32 @NDD_TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 0, i32 0)
  %237 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %238 = call i32 @ev_dispatcher(%struct.s_smc* %237)
  br label %239

239:                                              ; preds = %235, %225
  br label %12

240:                                              ; preds = %12
  %241 = load i8*, i8** @FALSE, align 8
  %242 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %243 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  store i8* %241, i8** %245, align 8
  %246 = call i32 @NDD_TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @GET_ISR(...) #1

declare dso_local i32 @NDD_TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @DB_GEN(i32, i8*, ...) #1

declare dso_local i32 @plc1_irq(%struct.s_smc*) #1

declare dso_local i32 @plc2_irq(%struct.s_smc*) #1

declare dso_local i32 @inpw(i32) #1

declare dso_local i32 @FM_A(i32) #1

declare dso_local i32 @mac1_irq(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @mac2_irq(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @mac3_irq(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @timer_irq(%struct.s_smc*) #1

declare dso_local i32 @process_receive(%struct.s_smc*) #1

declare dso_local i32 @rtm_irq(%struct.s_smc*) #1

declare dso_local i32 @outpd(i32, i32) #1

declare dso_local i32 @ADDR(i32) #1

declare dso_local i32 @SMT_PANIC(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @mac_drv_clear_txd(%struct.s_smc*) #1

declare dso_local i32 @llc_restart_tx(%struct.s_smc*) #1

declare dso_local i32* @get_llc_rx(%struct.s_smc*) #1

declare dso_local i32 @smt_to_llc(%struct.s_smc*, i32*) #1

declare dso_local i32 @ev_dispatcher(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
