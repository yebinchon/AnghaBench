; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_gru_try_dropin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_gru_try_dropin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_state = type { i32 }
%struct.gru_thread_state = type { i8, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gru_tlb_fault_handle = type { i64, i64, i32, i64, i32, i32 }
%struct.gru_instruction_bits = type { i64, i64, i32, i64, i32, i32 }
%struct.gru_control_block_extended = type { i32 }

@TFHSTATUS_EXCEPTION = common dso_local global i64 0, align 8
@tfh_stale_on_fault = common dso_local global i32 0, align 4
@TFHSTATE_IDLE = common dso_local global i64 0, align 8
@TFHSTATE_MISS_FMM = common dso_local global i64 0, align 8
@TFHCAUSE_TLB_MOD = common dso_local global i32 0, align 4
@VTOP_INVALID = common dso_local global i32 0, align 4
@VTOP_RETRY = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GAA_RAM = common dso_local global i32 0, align 4
@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"%s: gid %d, gts 0x%p, tfh 0x%p, vaddr 0x%lx, asid 0x%x, indexway 0x%x, rw %d, ps %d, gpa 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"atomic\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"non-atomic\00", align 1
@tlb_dropin = common dso_local global i32 0, align 4
@tlb_dropin_fail_no_asid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"FAILED no_asid tfh: 0x%p, vaddr 0x%lx\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@tlb_dropin_fail_upm = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"FAILED upm tfh: 0x%p, vaddr 0x%lx\0A\00", align 1
@tlb_dropin_fail_fmm = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"FAILED fmm tfh: 0x%p, state %d\0A\00", align 1
@tlb_dropin_fail_no_exception = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"FAILED non-exception tfh: 0x%p, status %d, state %d\0A\00", align 1
@tlb_dropin_fail_idle = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"FAILED idle tfh: 0x%p, state %d\0A\00", align 1
@tlb_dropin_fail_invalid = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"FAILED inval tfh: 0x%p, vaddr 0x%lx\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@tlb_dropin_fail_range_active = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"FAILED range active: tfh 0x%p, vaddr 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gru_state*, %struct.gru_thread_state*, %struct.gru_tlb_fault_handle*, %struct.gru_instruction_bits*)* @gru_try_dropin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gru_try_dropin(%struct.gru_state* %0, %struct.gru_thread_state* %1, %struct.gru_tlb_fault_handle* %2, %struct.gru_instruction_bits* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gru_state*, align 8
  %7 = alloca %struct.gru_thread_state*, align 8
  %8 = alloca %struct.gru_tlb_fault_handle*, align 8
  %9 = alloca %struct.gru_instruction_bits*, align 8
  %10 = alloca %struct.gru_control_block_extended*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.gru_state* %0, %struct.gru_state** %6, align 8
  store %struct.gru_thread_state* %1, %struct.gru_thread_state** %7, align 8
  store %struct.gru_tlb_fault_handle* %2, %struct.gru_tlb_fault_handle** %8, align 8
  store %struct.gru_instruction_bits* %3, %struct.gru_instruction_bits** %9, align 8
  store %struct.gru_control_block_extended* null, %struct.gru_control_block_extended** %10, align 8
  %20 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %21 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 8
  store i8 %22, i8* %11, align 1
  store i32 0, i32* %12, align 4
  %23 = load %struct.gru_instruction_bits*, %struct.gru_instruction_bits** %9, align 8
  %24 = icmp ne %struct.gru_instruction_bits* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %16, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %27 = load i8, i8* %11, align 1
  %28 = call i64 @unlikely(i8 zeroext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %32 = call %struct.gru_control_block_extended* @gru_tfh_to_cbe(%struct.gru_tlb_fault_handle* %31)
  store %struct.gru_control_block_extended* %32, %struct.gru_control_block_extended** %10, align 8
  %33 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %10, align 8
  %34 = call i32 @prefetchw(%struct.gru_control_block_extended* %33)
  br label %35

35:                                               ; preds = %30, %4
  %36 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %37 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TFHSTATUS_EXCEPTION, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %43 = call i32 @gru_flush_cache(%struct.gru_tlb_fault_handle* %42)
  %44 = call i32 (...) @sync_core()
  %45 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %46 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TFHSTATUS_EXCEPTION, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %243

51:                                               ; preds = %41
  %52 = load i32, i32* @tfh_stale_on_fault, align 4
  %53 = call i32 @STAT(i32 %52)
  br label %54

54:                                               ; preds = %51, %35
  %55 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %56 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TFHSTATE_IDLE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %266

61:                                               ; preds = %54
  %62 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %63 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TFHSTATE_MISS_FMM, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.gru_instruction_bits*, %struct.gru_instruction_bits** %9, align 8
  %69 = icmp ne %struct.gru_instruction_bits* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %230

71:                                               ; preds = %67, %61
  %72 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %73 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @TFHCAUSE_TLB_MOD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %14, align 4
  %79 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %80 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %19, align 8
  %82 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %83 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %13, align 4
  %85 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %86 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %71
  br label %199

91:                                               ; preds = %71
  %92 = call i32 (...) @rmb()
  %93 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %94 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %93, i32 0, i32 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = call i64 @atomic_read(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %299

100:                                              ; preds = %91
  %101 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @gru_vtop(%struct.gru_thread_state* %101, i64 %102, i32 %103, i32 %104, i64* %18, i32* %12)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* @VTOP_INVALID, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %286

110:                                              ; preds = %100
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @VTOP_RETRY, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %219

115:                                              ; preds = %110
  %116 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %117 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @GRU_SIZEAVAIL(i32 %119)
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %140, label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @GRU_SIZEAVAIL(i32 %124)
  %126 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %127 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %123
  %133 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %134 = call i32 @gru_update_cch(%struct.gru_thread_state* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132, %123
  %137 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %138 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %137, i32 0, i32 2
  store i32 1, i32* %138, align 8
  br label %219

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %115
  %141 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %10, align 8
  %142 = ptrtoint %struct.gru_control_block_extended* %141 to i8
  %143 = call i64 @unlikely(i8 zeroext %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %140
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @PAGE_SHIFT, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %145
  %150 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %151 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %152 = load i32, i32* %16, align 4
  %153 = load i64, i64* %19, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i8, i8* %11, align 1
  %157 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %158 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %10, align 8
  %159 = call i32 @gru_preload_tlb(%struct.gru_state* %150, %struct.gru_thread_state* %151, i32 %152, i64 %153, i32 %154, i32 %155, i8 zeroext %156, %struct.gru_tlb_fault_handle* %157, %struct.gru_control_block_extended* %158)
  %160 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %10, align 8
  %161 = call i32 @gru_flush_cache_cbe(%struct.gru_control_block_extended* %160)
  br label %162

162:                                              ; preds = %149, %145, %140
  %163 = load %struct.gru_instruction_bits*, %struct.gru_instruction_bits** %9, align 8
  %164 = bitcast %struct.gru_instruction_bits* %163 to %struct.gru_tlb_fault_handle*
  %165 = call i32 @gru_cb_set_istatus_active(%struct.gru_tlb_fault_handle* %164)
  %166 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %167 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %172 = load i64, i64* %18, align 8
  %173 = load i32, i32* @GAA_RAM, align 4
  %174 = load i64, i64* %19, align 8
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @GRU_PAGESIZE(i32 %177)
  %179 = call i32 @tfh_write_restart(%struct.gru_tlb_fault_handle* %171, i64 %172, i32 %173, i64 %174, i32 %175, i32 %176, i32 %178)
  %180 = load i32, i32* @grudev, align 4
  %181 = load i32, i32* %16, align 4
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %185 = load %struct.gru_state*, %struct.gru_state** %6, align 8
  %186 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %189 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %190 = load i64, i64* %19, align 8
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %12, align 4
  %195 = load i64, i64* %18, align 8
  %196 = call i32 (i32, i8*, ...) @gru_dbg(i32 %180, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i8* %184, i32 %187, %struct.gru_thread_state* %188, %struct.gru_tlb_fault_handle* %189, i64 %190, i32 %191, i32 %192, i32 %193, i32 %194, i64 %195)
  %197 = load i32, i32* @tlb_dropin, align 4
  %198 = call i32 @STAT(i32 %197)
  store i32 0, i32* %5, align 4
  br label %317

199:                                              ; preds = %90
  %200 = load i32, i32* @tlb_dropin_fail_no_asid, align 4
  %201 = call i32 @STAT(i32 %200)
  %202 = load i32, i32* @grudev, align 4
  %203 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %204 = load i64, i64* %19, align 8
  %205 = call i32 (i32, i8*, ...) @gru_dbg(i32 %202, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), %struct.gru_tlb_fault_handle* %203, i64 %204)
  %206 = load %struct.gru_instruction_bits*, %struct.gru_instruction_bits** %9, align 8
  %207 = icmp ne %struct.gru_instruction_bits* %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %199
  %209 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %210 = call i32 @tfh_user_polling_mode(%struct.gru_tlb_fault_handle* %209)
  br label %214

211:                                              ; preds = %199
  %212 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %213 = call i32 @gru_flush_cache(%struct.gru_tlb_fault_handle* %212)
  br label %214

214:                                              ; preds = %211, %208
  %215 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %10, align 8
  %216 = call i32 @gru_flush_cache_cbe(%struct.gru_control_block_extended* %215)
  %217 = load i32, i32* @EAGAIN, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %5, align 4
  br label %317

219:                                              ; preds = %136, %114
  %220 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %221 = call i32 @tfh_user_polling_mode(%struct.gru_tlb_fault_handle* %220)
  %222 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %10, align 8
  %223 = call i32 @gru_flush_cache_cbe(%struct.gru_control_block_extended* %222)
  %224 = load i32, i32* @tlb_dropin_fail_upm, align 4
  %225 = call i32 @STAT(i32 %224)
  %226 = load i32, i32* @grudev, align 4
  %227 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %228 = load i64, i64* %19, align 8
  %229 = call i32 (i32, i8*, ...) @gru_dbg(i32 %226, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), %struct.gru_tlb_fault_handle* %227, i64 %228)
  store i32 1, i32* %5, align 4
  br label %317

230:                                              ; preds = %70
  %231 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %232 = call i32 @gru_flush_cache(%struct.gru_tlb_fault_handle* %231)
  %233 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %10, align 8
  %234 = call i32 @gru_flush_cache_cbe(%struct.gru_control_block_extended* %233)
  %235 = load i32, i32* @tlb_dropin_fail_fmm, align 4
  %236 = call i32 @STAT(i32 %235)
  %237 = load i32, i32* @grudev, align 4
  %238 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %239 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %240 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = call i32 (i32, i8*, ...) @gru_dbg(i32 %237, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), %struct.gru_tlb_fault_handle* %238, i64 %241)
  store i32 0, i32* %5, align 4
  br label %317

243:                                              ; preds = %50
  %244 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %245 = call i32 @gru_flush_cache(%struct.gru_tlb_fault_handle* %244)
  %246 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %10, align 8
  %247 = call i32 @gru_flush_cache_cbe(%struct.gru_control_block_extended* %246)
  %248 = load %struct.gru_instruction_bits*, %struct.gru_instruction_bits** %9, align 8
  %249 = icmp ne %struct.gru_instruction_bits* %248, null
  br i1 %249, label %250, label %254

250:                                              ; preds = %243
  %251 = load %struct.gru_instruction_bits*, %struct.gru_instruction_bits** %9, align 8
  %252 = bitcast %struct.gru_instruction_bits* %251 to %struct.gru_tlb_fault_handle*
  %253 = call i32 @gru_flush_cache(%struct.gru_tlb_fault_handle* %252)
  br label %254

254:                                              ; preds = %250, %243
  %255 = load i32, i32* @tlb_dropin_fail_no_exception, align 4
  %256 = call i32 @STAT(i32 %255)
  %257 = load i32, i32* @grudev, align 4
  %258 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %259 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %260 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %263 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call i32 (i32, i8*, ...) @gru_dbg(i32 %257, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), %struct.gru_tlb_fault_handle* %258, i64 %261, i64 %264)
  store i32 0, i32* %5, align 4
  br label %317

266:                                              ; preds = %60
  %267 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %268 = call i32 @gru_flush_cache(%struct.gru_tlb_fault_handle* %267)
  %269 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %10, align 8
  %270 = call i32 @gru_flush_cache_cbe(%struct.gru_control_block_extended* %269)
  %271 = load %struct.gru_instruction_bits*, %struct.gru_instruction_bits** %9, align 8
  %272 = icmp ne %struct.gru_instruction_bits* %271, null
  br i1 %272, label %273, label %277

273:                                              ; preds = %266
  %274 = load %struct.gru_instruction_bits*, %struct.gru_instruction_bits** %9, align 8
  %275 = bitcast %struct.gru_instruction_bits* %274 to %struct.gru_tlb_fault_handle*
  %276 = call i32 @gru_flush_cache(%struct.gru_tlb_fault_handle* %275)
  br label %277

277:                                              ; preds = %273, %266
  %278 = load i32, i32* @tlb_dropin_fail_idle, align 4
  %279 = call i32 @STAT(i32 %278)
  %280 = load i32, i32* @grudev, align 4
  %281 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %282 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %283 = getelementptr inbounds %struct.gru_tlb_fault_handle, %struct.gru_tlb_fault_handle* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = call i32 (i32, i8*, ...) @gru_dbg(i32 %280, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), %struct.gru_tlb_fault_handle* %281, i64 %284)
  store i32 0, i32* %5, align 4
  br label %317

286:                                              ; preds = %109
  %287 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %288 = call i32 @tfh_exception(%struct.gru_tlb_fault_handle* %287)
  %289 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %10, align 8
  %290 = call i32 @gru_flush_cache_cbe(%struct.gru_control_block_extended* %289)
  %291 = load i32, i32* @tlb_dropin_fail_invalid, align 4
  %292 = call i32 @STAT(i32 %291)
  %293 = load i32, i32* @grudev, align 4
  %294 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %295 = load i64, i64* %19, align 8
  %296 = call i32 (i32, i8*, ...) @gru_dbg(i32 %293, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), %struct.gru_tlb_fault_handle* %294, i64 %295)
  %297 = load i32, i32* @EFAULT, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %5, align 4
  br label %317

299:                                              ; preds = %99
  %300 = load %struct.gru_instruction_bits*, %struct.gru_instruction_bits** %9, align 8
  %301 = icmp ne %struct.gru_instruction_bits* %300, null
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  %303 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %304 = call i32 @tfh_user_polling_mode(%struct.gru_tlb_fault_handle* %303)
  br label %308

305:                                              ; preds = %299
  %306 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %307 = call i32 @gru_flush_cache(%struct.gru_tlb_fault_handle* %306)
  br label %308

308:                                              ; preds = %305, %302
  %309 = load %struct.gru_control_block_extended*, %struct.gru_control_block_extended** %10, align 8
  %310 = call i32 @gru_flush_cache_cbe(%struct.gru_control_block_extended* %309)
  %311 = load i32, i32* @tlb_dropin_fail_range_active, align 4
  %312 = call i32 @STAT(i32 %311)
  %313 = load i32, i32* @grudev, align 4
  %314 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %8, align 8
  %315 = load i64, i64* %19, align 8
  %316 = call i32 (i32, i8*, ...) @gru_dbg(i32 %313, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), %struct.gru_tlb_fault_handle* %314, i64 %315)
  store i32 1, i32* %5, align 4
  br label %317

317:                                              ; preds = %308, %286, %277, %254, %230, %219, %214, %162
  %318 = load i32, i32* %5, align 4
  ret i32 %318
}

declare dso_local i64 @unlikely(i8 zeroext) #1

declare dso_local %struct.gru_control_block_extended* @gru_tfh_to_cbe(%struct.gru_tlb_fault_handle*) #1

declare dso_local i32 @prefetchw(%struct.gru_control_block_extended*) #1

declare dso_local i32 @gru_flush_cache(%struct.gru_tlb_fault_handle*) #1

declare dso_local i32 @sync_core(...) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @gru_vtop(%struct.gru_thread_state*, i64, i32, i32, i64*, i32*) #1

declare dso_local i32 @GRU_SIZEAVAIL(i32) #1

declare dso_local i32 @gru_update_cch(%struct.gru_thread_state*) #1

declare dso_local i32 @gru_preload_tlb(%struct.gru_state*, %struct.gru_thread_state*, i32, i64, i32, i32, i8 zeroext, %struct.gru_tlb_fault_handle*, %struct.gru_control_block_extended*) #1

declare dso_local i32 @gru_flush_cache_cbe(%struct.gru_control_block_extended*) #1

declare dso_local i32 @gru_cb_set_istatus_active(%struct.gru_tlb_fault_handle*) #1

declare dso_local i32 @tfh_write_restart(%struct.gru_tlb_fault_handle*, i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @GRU_PAGESIZE(i32) #1

declare dso_local i32 @gru_dbg(i32, i8*, ...) #1

declare dso_local i32 @tfh_user_polling_mode(%struct.gru_tlb_fault_handle*) #1

declare dso_local i32 @tfh_exception(%struct.gru_tlb_fault_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
