; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i64, i32, %struct.TYPE_2__*, i32, i32, i32, %struct.i40e_hw, %struct.i40e_vsi**, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32 }
%struct.i40e_vsi = type { %struct.i40e_q_vector** }
%struct.i40e_q_vector = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0 = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_INTEVENT_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_SWINT_MASK = common dso_local global i32 0, align 4
@I40E_FLAG_IWARP_ENABLED = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cleared PE_CRITERR\0A\00", align 1
@__I40E_CORE_RESET_REQUESTED = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_QUEUE_0_MASK = common dso_local global i32 0, align 4
@__I40E_DOWN = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ADMINQ_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_ADMINQ_MASK = common dso_local global i32 0, align 4
@__I40E_ADMINQ_EVENT_PENDING = common dso_local global i32 0, align 4
@I40E_DEBUG_NVM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"AdminQ event\0A\00", align 1
@I40E_PFINT_ICR0_MAL_DETECT_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK = common dso_local global i32 0, align 4
@__I40E_MDD_EVENT_PENDING = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_VFLR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_VFLR_MASK = common dso_local global i32 0, align 4
@__I40E_VFLR_EVENT_PENDING = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_GRST_MASK = common dso_local global i32 0, align 4
@__I40E_RESET_RECOVERY_PENDING = common dso_local global i32 0, align 4
@__I40E_RESET_INTR_RECEIVED = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_GRST_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTAT = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTAT_RESET_TYPE_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_RESET_CORER = common dso_local global i32 0, align 4
@I40E_RESET_GLOBR = common dso_local global i32 0, align 4
@I40E_RESET_EMPR = common dso_local global i32 0, align 4
@__I40E_EMP_RESET_INTR_RECEIVED = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_HMC_ERR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"HMC error interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"HMC error info 0x%x, HMC error data 0x%x\0A\00", align 1
@I40E_PFHMC_ERRORINFO = common dso_local global i32 0, align 4
@I40E_PFHMC_ERRORDATA = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_TIMESYNC_MASK = common dso_local global i32 0, align 4
@I40E_PRTTSYN_STAT_0 = common dso_local global i32 0, align 4
@I40E_PRTTSYN_STAT_0_TXTIME_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA_TIMESYNC_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"unhandled interrupt icr0=0x%08x\0A\00", align 1
@I40E_PFINT_ICR0_PE_CRITERR_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_PCI_EXCEPTION_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ECC_ERR_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"device will be reset\0A\00", align 1
@__I40E_PF_RESET_REQUESTED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@__I40E_RECOVERY_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @i40e_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40e_vsi*, align 8
  %13 = alloca %struct.i40e_q_vector*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.i40e_pf*
  store %struct.i40e_pf* %16, %struct.i40e_pf** %5, align 8
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 7
  store %struct.i40e_hw* %18, %struct.i40e_hw** %6, align 8
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %21 = load i32, i32* @I40E_PFINT_ICR0, align 4
  %22 = call i32 @rd32(%struct.i40e_hw* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %24 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %25 = call i32 @rd32(%struct.i40e_hw* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @I40E_PFINT_ICR0_INTEVENT_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %312

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @I40E_PFINT_ICR0_INTEVENT_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @I40E_PFINT_ICR0_SWINT_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %31
  %43 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %44 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %49 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @I40E_FLAG_IWARP_ENABLED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load i32, i32* @I40E_PFINT_ICR0_ENA_PE_CRITERR_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %65 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @dev_dbg(i32* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @__I40E_CORE_RESET_REQUESTED, align 4
  %70 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %71 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @set_bit(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %59, %54, %47
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @I40E_PFINT_ICR0_QUEUE_0_MASK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %74
  %80 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %81 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %80, i32 0, i32 8
  %82 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %81, align 8
  %83 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %84 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %82, i64 %85
  %87 = load %struct.i40e_vsi*, %struct.i40e_vsi** %86, align 8
  store %struct.i40e_vsi* %87, %struct.i40e_vsi** %12, align 8
  %88 = load %struct.i40e_vsi*, %struct.i40e_vsi** %12, align 8
  %89 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %88, i32 0, i32 0
  %90 = load %struct.i40e_q_vector**, %struct.i40e_q_vector*** %89, align 8
  %91 = getelementptr inbounds %struct.i40e_q_vector*, %struct.i40e_q_vector** %90, i64 0
  %92 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %91, align 8
  store %struct.i40e_q_vector* %92, %struct.i40e_q_vector** %13, align 8
  %93 = load i32, i32* @__I40E_DOWN, align 4
  %94 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %95 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @test_bit(i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %79
  %100 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %13, align 8
  %101 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %100, i32 0, i32 0
  %102 = call i32 @napi_schedule_irqoff(i32* %101)
  br label %103

103:                                              ; preds = %99, %79
  br label %104

104:                                              ; preds = %103, %74
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @I40E_PFINT_ICR0_ADMINQ_MASK, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load i32, i32* @I40E_PFINT_ICR0_ENA_ADMINQ_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %11, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* @__I40E_ADMINQ_EVENT_PENDING, align 4
  %115 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %116 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @set_bit(i32 %114, i32 %117)
  %119 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %120 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %119, i32 0, i32 7
  %121 = load i32, i32* @I40E_DEBUG_NVM, align 4
  %122 = call i32 @i40e_debug(%struct.i40e_hw* %120, i32 %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %123

123:                                              ; preds = %109, %104
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @I40E_PFINT_ICR0_MAL_DETECT_MASK, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load i32, i32* @I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK, align 4
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %11, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* @__I40E_MDD_EVENT_PENDING, align 4
  %134 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %135 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @set_bit(i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %128, %123
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @I40E_PFINT_ICR0_VFLR_MASK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load i32, i32* @I40E_PFINT_ICR0_ENA_VFLR_MASK, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %11, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* @__I40E_VFLR_EVENT_PENDING, align 4
  %149 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %150 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @set_bit(i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %143, %138
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @I40E_PFINT_ICR0_GRST_MASK, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %218

158:                                              ; preds = %153
  %159 = load i32, i32* @__I40E_RESET_RECOVERY_PENDING, align 4
  %160 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %161 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @test_bit(i32 %159, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %158
  %166 = load i32, i32* @__I40E_RESET_INTR_RECEIVED, align 4
  %167 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %168 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @set_bit(i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %165, %158
  %172 = load i32, i32* @I40E_PFINT_ICR0_ENA_GRST_MASK, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %11, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %11, align 4
  %176 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %177 = load i32, i32* @I40E_GLGEN_RSTAT, align 4
  %178 = call i32 @rd32(%struct.i40e_hw* %176, i32 %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @I40E_GLGEN_RSTAT_RESET_TYPE_MASK, align 4
  %181 = and i32 %179, %180
  %182 = load i32, i32* @I40E_GLGEN_RSTAT_RESET_TYPE_SHIFT, align 4
  %183 = ashr i32 %181, %182
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* @I40E_RESET_CORER, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %171
  %188 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %189 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  br label %217

192:                                              ; preds = %171
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @I40E_RESET_GLOBR, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %198 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  br label %216

201:                                              ; preds = %192
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @I40E_RESET_EMPR, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %201
  %206 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %207 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  %210 = load i32, i32* @__I40E_EMP_RESET_INTR_RECEIVED, align 4
  %211 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %212 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @set_bit(i32 %210, i32 %213)
  br label %215

215:                                              ; preds = %205, %201
  br label %216

216:                                              ; preds = %215, %196
  br label %217

217:                                              ; preds = %216, %187
  br label %218

218:                                              ; preds = %217, %153
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* @I40E_PFINT_ICR0_HMC_ERR_MASK, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %244

223:                                              ; preds = %218
  %224 = load i32, i32* @I40E_PFINT_ICR0_HMC_ERR_MASK, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %8, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %8, align 4
  %228 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %229 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %228, i32 0, i32 3
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = call i32 (i32*, i8*, ...) @dev_info(i32* %231, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %233 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %234 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %233, i32 0, i32 3
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  %237 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %238 = load i32, i32* @I40E_PFHMC_ERRORINFO, align 4
  %239 = call i32 @rd32(%struct.i40e_hw* %237, i32 %238)
  %240 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %241 = load i32, i32* @I40E_PFHMC_ERRORDATA, align 4
  %242 = call i32 @rd32(%struct.i40e_hw* %240, i32 %241)
  %243 = call i32 (i32*, i8*, ...) @dev_info(i32* %236, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %239, i32 %242)
  br label %244

244:                                              ; preds = %223, %218
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @I40E_PFINT_ICR0_TIMESYNC_MASK, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %265

249:                                              ; preds = %244
  %250 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %251 = load i32, i32* @I40E_PRTTSYN_STAT_0, align 4
  %252 = call i32 @rd32(%struct.i40e_hw* %250, i32 %251)
  store i32 %252, i32* %14, align 4
  %253 = load i32, i32* %14, align 4
  %254 = load i32, i32* @I40E_PRTTSYN_STAT_0_TXTIME_MASK, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %249
  %258 = load i32, i32* @I40E_PFINT_ICR0_ENA_TIMESYNC_MASK, align 4
  %259 = xor i32 %258, -1
  %260 = load i32, i32* %8, align 4
  %261 = and i32 %260, %259
  store i32 %261, i32* %8, align 4
  %262 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %263 = call i32 @i40e_ptp_tx_hwtstamp(%struct.i40e_pf* %262)
  br label %264

264:                                              ; preds = %257, %249
  br label %265

265:                                              ; preds = %264, %244
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* %11, align 4
  %268 = and i32 %266, %267
  store i32 %268, i32* %9, align 4
  %269 = load i32, i32* %9, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %310

271:                                              ; preds = %265
  %272 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %273 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %272, i32 0, i32 3
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  %276 = load i32, i32* %9, align 4
  %277 = call i32 (i32*, i8*, ...) @dev_info(i32* %275, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %276)
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* @I40E_PFINT_ICR0_PE_CRITERR_MASK, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %292, label %282

282:                                              ; preds = %271
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* @I40E_PFINT_ICR0_PCI_EXCEPTION_MASK, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %282
  %288 = load i32, i32* %9, align 4
  %289 = load i32, i32* @I40E_PFINT_ICR0_ECC_ERR_MASK, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %305

292:                                              ; preds = %287, %282, %271
  %293 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %294 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %293, i32 0, i32 3
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 0
  %297 = call i32 (i32*, i8*, ...) @dev_info(i32* %296, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %298 = load i32, i32* @__I40E_PF_RESET_REQUESTED, align 4
  %299 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %300 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @set_bit(i32 %298, i32 %301)
  %303 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %304 = call i32 @i40e_service_event_schedule(%struct.i40e_pf* %303)
  br label %305

305:                                              ; preds = %292, %287
  %306 = load i32, i32* %9, align 4
  %307 = xor i32 %306, -1
  %308 = load i32, i32* %11, align 4
  %309 = and i32 %308, %307
  store i32 %309, i32* %11, align 4
  br label %310

310:                                              ; preds = %305, %265
  %311 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %311, i32* %7, align 4
  br label %312

312:                                              ; preds = %310, %30
  %313 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %314 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %315 = load i32, i32* %11, align 4
  %316 = call i32 @wr32(%struct.i40e_hw* %313, i32 %314, i32 %315)
  %317 = load i32, i32* @__I40E_DOWN, align 4
  %318 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %319 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = call i64 @test_bit(i32 %317, i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %312
  %324 = load i32, i32* @__I40E_RECOVERY_MODE, align 4
  %325 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %326 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = call i64 @test_bit(i32 %324, i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %323, %312
  %331 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %332 = call i32 @i40e_service_event_schedule(%struct.i40e_pf* %331)
  %333 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %334 = call i32 @i40e_irq_dynamic_enable_icr0(%struct.i40e_pf* %333)
  br label %335

335:                                              ; preds = %330, %323
  %336 = load i32, i32* %7, align 4
  ret i32 %336
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @napi_schedule_irqoff(i32*) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @i40e_ptp_tx_hwtstamp(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_service_event_schedule(%struct.i40e_pf*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @i40e_irq_dynamic_enable_icr0(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
