; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_lan_hmc.c_i40e_init_lan_hmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_lan_hmc.c_i40e_init_lan_hmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64, %struct.i40e_hmc_obj_info*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__, %struct.i40e_hmc_sd_entry*, i64 }
%struct.i40e_hmc_sd_entry = type { i32 }
%struct.i40e_hmc_obj_info = type { i64, i32, i32, i8* }
%struct.TYPE_6__ = type { i64 }

@I40E_HMC_INFO_SIGNATURE = common dso_local global i32 0, align 4
@I40E_HMC_LAN_MAX = common dso_local global i32 0, align 4
@I40E_HMC_LAN_FULL = common dso_local global i64 0, align 8
@I40E_HMC_LAN_TX = common dso_local global i64 0, align 8
@I40E_GLHMC_LANQMAX = common dso_local global i32 0, align 4
@I40E_GLHMC_LANTXOBJSZ = common dso_local global i32 0, align 4
@I40E_ERR_INVALID_HMC_OBJ_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [88 x i8] c"i40e_init_lan_hmc: Tx context: asks for 0x%x but max allowed is 0x%x, returns error %d\0A\00", align 1
@I40E_HMC_LAN_RX = common dso_local global i64 0, align 8
@I40E_GLHMC_LANRXOBJSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"i40e_init_lan_hmc: Rx context: asks for 0x%x but max allowed is 0x%x, returns error %d\0A\00", align 1
@I40E_HMC_FCOE_CTX = common dso_local global i64 0, align 8
@I40E_GLHMC_FCOEMAX = common dso_local global i32 0, align 4
@I40E_GLHMC_FCOEDDPOBJSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"i40e_init_lan_hmc: FCoE context: asks for 0x%x but max allowed is 0x%x, returns error %d\0A\00", align 1
@I40E_HMC_FCOE_FILT = common dso_local global i64 0, align 8
@I40E_GLHMC_FCOEFMAX = common dso_local global i32 0, align 4
@I40E_GLHMC_FCOEFOBJSZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [89 x i8] c"i40e_init_lan_hmc: FCoE filter: asks for 0x%x but max allowed is 0x%x, returns error %d\0A\00", align 1
@I40E_HMC_DIRECT_BP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_init_lan_hmc(%struct.i40e_hw* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.i40e_hmc_obj_info*, align 8
  %12 = alloca %struct.i40e_hmc_obj_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %13, align 8
  %16 = load i32, i32* @I40E_HMC_INFO_SIGNATURE, align 4
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %18 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  store i32 %16, i32* %19, align 4
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %24 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 8
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %28 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32, i32* @I40E_HMC_LAN_MAX, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 24, %31
  %33 = trunc i64 %32 to i32
  %34 = call i64 @i40e_allocate_virt_mem(%struct.i40e_hw* %26, %struct.TYPE_6__* %29, i32 %33)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  br label %442

38:                                               ; preds = %5
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %40 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.i40e_hmc_obj_info*
  %45 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %46 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store %struct.i40e_hmc_obj_info* %44, %struct.i40e_hmc_obj_info** %47, align 8
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %49 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %50, align 8
  %52 = load i64, i64* @I40E_HMC_LAN_FULL, align 8
  %53 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %51, i64 %52
  store %struct.i40e_hmc_obj_info* %53, %struct.i40e_hmc_obj_info** %12, align 8
  %54 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %55 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %57 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %56, i32 0, i32 1
  store i32 0, i32* %57, align 8
  %58 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %59 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %58, i32 0, i32 3
  store i8* null, i8** %59, align 8
  %60 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %61 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %60, i32 0, i32 2
  store i32 0, i32* %61, align 4
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %63 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %64, align 8
  %66 = load i64, i64* @I40E_HMC_LAN_TX, align 8
  %67 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %65, i64 %66
  store %struct.i40e_hmc_obj_info* %67, %struct.i40e_hmc_obj_info** %11, align 8
  %68 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %69 = load i32, i32* @I40E_GLHMC_LANQMAX, align 4
  %70 = call i64 @rd32(%struct.i40e_hw* %68, i32 %69)
  %71 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %72 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %7, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %76 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %78 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %77, i32 0, i32 3
  store i8* null, i8** %78, align 8
  %79 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %80 = load i32, i32* @I40E_GLHMC_LANTXOBJSZ, align 4
  %81 = call i64 @rd32(%struct.i40e_hw* %79, i32 %80)
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %15, align 8
  %83 = call i8* @BIT_ULL(i64 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %86 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %89 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %38
  %93 = load i64, i64* @I40E_ERR_INVALID_HMC_OBJ_COUNT, align 8
  store i64 %93, i64* %13, align 8
  %94 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %97 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @hw_dbg(%struct.i40e_hw* %94, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %95, i64 %98, i64 %99)
  br label %442

101:                                              ; preds = %38
  %102 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %103 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %106 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %110 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %113 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %117 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %118, align 8
  %120 = load i64, i64* @I40E_HMC_LAN_RX, align 8
  %121 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %119, i64 %120
  store %struct.i40e_hmc_obj_info* %121, %struct.i40e_hmc_obj_info** %11, align 8
  %122 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %123 = load i32, i32* @I40E_GLHMC_LANQMAX, align 4
  %124 = call i64 @rd32(%struct.i40e_hw* %122, i32 %123)
  %125 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %126 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i64, i64* %8, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %130 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %132 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %133, align 8
  %135 = load i64, i64* @I40E_HMC_LAN_TX, align 8
  %136 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %134, i64 %135
  %137 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %140 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %141, align 8
  %143 = load i64, i64* @I40E_HMC_LAN_TX, align 8
  %144 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %142, i64 %143
  %145 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %148 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %149, align 8
  %151 = load i64, i64* @I40E_HMC_LAN_TX, align 8
  %152 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %150, i64 %151
  %153 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %146, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr i8, i8* %138, i64 %156
  %158 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %159 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  %160 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %161 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %160, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = call i8* @i40e_align_l2obj_base(i8* %162)
  %164 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %165 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %164, i32 0, i32 3
  store i8* %163, i8** %165, align 8
  %166 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %167 = load i32, i32* @I40E_GLHMC_LANRXOBJSZ, align 4
  %168 = call i64 @rd32(%struct.i40e_hw* %166, i32 %167)
  store i64 %168, i64* %15, align 8
  %169 = load i64, i64* %15, align 8
  %170 = call i8* @BIT_ULL(i64 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %173 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  %174 = load i64, i64* %8, align 8
  %175 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %176 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp sgt i64 %174, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %101
  %180 = load i64, i64* @I40E_ERR_INVALID_HMC_OBJ_COUNT, align 8
  store i64 %180, i64* %13, align 8
  %181 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %182 = load i64, i64* %8, align 8
  %183 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %184 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %13, align 8
  %187 = call i32 @hw_dbg(%struct.i40e_hw* %181, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i64 %182, i64 %185, i64 %186)
  br label %442

188:                                              ; preds = %101
  %189 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %190 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %193 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, %191
  store i64 %195, i64* %193, align 8
  %196 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %197 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %200 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %204 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  %206 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %205, align 8
  %207 = load i64, i64* @I40E_HMC_FCOE_CTX, align 8
  %208 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %206, i64 %207
  store %struct.i40e_hmc_obj_info* %208, %struct.i40e_hmc_obj_info** %11, align 8
  %209 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %210 = load i32, i32* @I40E_GLHMC_FCOEMAX, align 4
  %211 = call i64 @rd32(%struct.i40e_hw* %209, i32 %210)
  %212 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %213 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %212, i32 0, i32 0
  store i64 %211, i64* %213, align 8
  %214 = load i64, i64* %9, align 8
  %215 = trunc i64 %214 to i32
  %216 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %217 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 8
  %218 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %219 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 2
  %221 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %220, align 8
  %222 = load i64, i64* @I40E_HMC_LAN_RX, align 8
  %223 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %221, i64 %222
  %224 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %223, i32 0, i32 3
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %227 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 2
  %229 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %228, align 8
  %230 = load i64, i64* @I40E_HMC_LAN_RX, align 8
  %231 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %229, i64 %230
  %232 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %235 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 2
  %237 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %236, align 8
  %238 = load i64, i64* @I40E_HMC_LAN_RX, align 8
  %239 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %237, i64 %238
  %240 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = mul nsw i32 %233, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr i8, i8* %225, i64 %243
  %245 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %246 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %245, i32 0, i32 3
  store i8* %244, i8** %246, align 8
  %247 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %248 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %247, i32 0, i32 3
  %249 = load i8*, i8** %248, align 8
  %250 = call i8* @i40e_align_l2obj_base(i8* %249)
  %251 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %252 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %251, i32 0, i32 3
  store i8* %250, i8** %252, align 8
  %253 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %254 = load i32, i32* @I40E_GLHMC_FCOEDDPOBJSZ, align 4
  %255 = call i64 @rd32(%struct.i40e_hw* %253, i32 %254)
  store i64 %255, i64* %15, align 8
  %256 = load i64, i64* %15, align 8
  %257 = call i8* @BIT_ULL(i64 %256)
  %258 = ptrtoint i8* %257 to i32
  %259 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %260 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 4
  %261 = load i64, i64* %9, align 8
  %262 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %263 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp sgt i64 %261, %264
  br i1 %265, label %266, label %275

266:                                              ; preds = %188
  %267 = load i64, i64* @I40E_ERR_INVALID_HMC_OBJ_COUNT, align 8
  store i64 %267, i64* %13, align 8
  %268 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %269 = load i64, i64* %9, align 8
  %270 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %271 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* %13, align 8
  %274 = call i32 @hw_dbg(%struct.i40e_hw* %268, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i64 %269, i64 %272, i64 %273)
  br label %442

275:                                              ; preds = %188
  %276 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %277 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %280 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = add nsw i64 %281, %278
  store i64 %282, i64* %280, align 8
  %283 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %284 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %287 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, %285
  store i32 %289, i32* %287, align 8
  %290 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %291 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 2
  %293 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %292, align 8
  %294 = load i64, i64* @I40E_HMC_FCOE_FILT, align 8
  %295 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %293, i64 %294
  store %struct.i40e_hmc_obj_info* %295, %struct.i40e_hmc_obj_info** %11, align 8
  %296 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %297 = load i32, i32* @I40E_GLHMC_FCOEFMAX, align 4
  %298 = call i64 @rd32(%struct.i40e_hw* %296, i32 %297)
  %299 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %300 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %299, i32 0, i32 0
  store i64 %298, i64* %300, align 8
  %301 = load i64, i64* %10, align 8
  %302 = trunc i64 %301 to i32
  %303 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %304 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %303, i32 0, i32 1
  store i32 %302, i32* %304, align 8
  %305 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %306 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 2
  %308 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %307, align 8
  %309 = load i64, i64* @I40E_HMC_FCOE_CTX, align 8
  %310 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %308, i64 %309
  %311 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %310, i32 0, i32 3
  %312 = load i8*, i8** %311, align 8
  %313 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %314 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 2
  %316 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %315, align 8
  %317 = load i64, i64* @I40E_HMC_FCOE_CTX, align 8
  %318 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %316, i64 %317
  %319 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %322 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 2
  %324 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %323, align 8
  %325 = load i64, i64* @I40E_HMC_FCOE_CTX, align 8
  %326 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %324, i64 %325
  %327 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = mul nsw i32 %320, %328
  %330 = sext i32 %329 to i64
  %331 = getelementptr i8, i8* %312, i64 %330
  %332 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %333 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %332, i32 0, i32 3
  store i8* %331, i8** %333, align 8
  %334 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %335 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %334, i32 0, i32 3
  %336 = load i8*, i8** %335, align 8
  %337 = call i8* @i40e_align_l2obj_base(i8* %336)
  %338 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %339 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %338, i32 0, i32 3
  store i8* %337, i8** %339, align 8
  %340 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %341 = load i32, i32* @I40E_GLHMC_FCOEFOBJSZ, align 4
  %342 = call i64 @rd32(%struct.i40e_hw* %340, i32 %341)
  store i64 %342, i64* %15, align 8
  %343 = load i64, i64* %15, align 8
  %344 = call i8* @BIT_ULL(i64 %343)
  %345 = ptrtoint i8* %344 to i32
  %346 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %347 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %346, i32 0, i32 2
  store i32 %345, i32* %347, align 4
  %348 = load i64, i64* %10, align 8
  %349 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %350 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = icmp sgt i64 %348, %351
  br i1 %352, label %353, label %362

353:                                              ; preds = %275
  %354 = load i64, i64* @I40E_ERR_INVALID_HMC_OBJ_COUNT, align 8
  store i64 %354, i64* %13, align 8
  %355 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %356 = load i64, i64* %10, align 8
  %357 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %358 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* %13, align 8
  %361 = call i32 @hw_dbg(%struct.i40e_hw* %355, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i64 %356, i64 %359, i64 %360)
  br label %442

362:                                              ; preds = %275
  %363 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %364 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %367 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %368, %365
  store i64 %369, i64* %367, align 8
  %370 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %11, align 8
  %371 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %374 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = add nsw i32 %375, %372
  store i32 %376, i32* %374, align 8
  %377 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %378 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 1
  store i64 0, i64* %379, align 8
  %380 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %381 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 3
  store i64 0, i64* %383, align 8
  %384 = load i64, i64* %7, align 8
  %385 = load i64, i64* %8, align 8
  %386 = load i64, i64* %9, align 8
  %387 = load i64, i64* %10, align 8
  %388 = call i32 @i40e_calculate_l2fpm_size(i64 %384, i64 %385, i64 %386, i64 %387)
  store i32 %388, i32* %14, align 4
  %389 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %390 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 2
  %393 = load %struct.i40e_hmc_sd_entry*, %struct.i40e_hmc_sd_entry** %392, align 8
  %394 = icmp eq %struct.i40e_hmc_sd_entry* null, %393
  br i1 %394, label %395, label %438

395:                                              ; preds = %362
  %396 = load i32, i32* %14, align 4
  %397 = load i32, i32* @I40E_HMC_DIRECT_BP_SIZE, align 4
  %398 = add nsw i32 %396, %397
  %399 = sub nsw i32 %398, 1
  %400 = sext i32 %399 to i64
  %401 = load i32, i32* @I40E_HMC_DIRECT_BP_SIZE, align 4
  %402 = sext i32 %401 to i64
  %403 = sdiv i64 %400, %402
  %404 = trunc i64 %403 to i32
  %405 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %406 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 0
  store i32 %404, i32* %408, align 8
  %409 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %410 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %411 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 1
  %414 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %415 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = sext i32 %418 to i64
  %420 = mul i64 4, %419
  %421 = trunc i64 %420 to i32
  %422 = call i64 @i40e_allocate_virt_mem(%struct.i40e_hw* %409, %struct.TYPE_6__* %413, i32 %421)
  store i64 %422, i64* %13, align 8
  %423 = load i64, i64* %13, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %395
  br label %442

426:                                              ; preds = %395
  %427 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %428 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = inttoptr i64 %432 to %struct.i40e_hmc_sd_entry*
  %434 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %435 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 2
  store %struct.i40e_hmc_sd_entry* %433, %struct.i40e_hmc_sd_entry** %437, align 8
  br label %438

438:                                              ; preds = %426, %362
  %439 = load i32, i32* %14, align 4
  %440 = load %struct.i40e_hmc_obj_info*, %struct.i40e_hmc_obj_info** %12, align 8
  %441 = getelementptr inbounds %struct.i40e_hmc_obj_info, %struct.i40e_hmc_obj_info* %440, i32 0, i32 2
  store i32 %439, i32* %441, align 4
  br label %442

442:                                              ; preds = %438, %425, %353, %266, %179, %92, %37
  %443 = load i64, i64* %13, align 8
  ret i64 %443
}

declare dso_local i64 @i40e_allocate_virt_mem(%struct.i40e_hw*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i8* @BIT_ULL(i64) #1

declare dso_local i32 @hw_dbg(%struct.i40e_hw*, i8*, i64, i64, i64) #1

declare dso_local i8* @i40e_align_l2obj_base(i8*) #1

declare dso_local i32 @i40e_calculate_l2fpm_size(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
