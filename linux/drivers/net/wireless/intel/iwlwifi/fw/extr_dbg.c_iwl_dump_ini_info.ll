; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_dump_ini_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_fw_ini_trigger = type { i32, i32, i32 }
%struct.list_head = type { i32 }
%struct.iwl_fw_ini_dump_entry = type { i32, i32, i64 }
%struct.iwl_fw_error_dump_data = type { i64, i8*, i8* }
%struct.iwl_fw_ini_dump_info = type { i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IWL_INI_DUMP_INFO_TYPE = common dso_local global i32 0, align 4
@IWL_INI_DUMP_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.iwl_fw_ini_trigger*, %struct.list_head*)* @iwl_dump_ini_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_dump_ini_info(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_ini_trigger* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_fw_runtime*, align 8
  %6 = alloca %struct.iwl_fw_ini_trigger*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.iwl_fw_ini_dump_entry*, align 8
  %9 = alloca %struct.iwl_fw_error_dump_data*, align 8
  %10 = alloca %struct.iwl_fw_ini_dump_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %5, align 8
  store %struct.iwl_fw_ini_trigger* %1, %struct.iwl_fw_ini_trigger** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %13 = load %struct.iwl_fw_ini_trigger*, %struct.iwl_fw_ini_trigger** %6, align 8
  %14 = getelementptr inbounds %struct.iwl_fw_ini_trigger, %struct.iwl_fw_ini_trigger* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 216, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 16, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.iwl_fw_ini_dump_entry* @kmalloc(i32 %27, i32 %28)
  store %struct.iwl_fw_ini_dump_entry* %29, %struct.iwl_fw_ini_dump_entry** %8, align 8
  %30 = load %struct.iwl_fw_ini_dump_entry*, %struct.iwl_fw_ini_dump_entry** %8, align 8
  %31 = icmp ne %struct.iwl_fw_ini_dump_entry* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %243

33:                                               ; preds = %3
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.iwl_fw_ini_dump_entry*, %struct.iwl_fw_ini_dump_entry** %8, align 8
  %36 = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, %struct.iwl_fw_ini_dump_entry* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.iwl_fw_ini_dump_entry*, %struct.iwl_fw_ini_dump_entry** %8, align 8
  %38 = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, %struct.iwl_fw_ini_dump_entry* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = bitcast i8* %40 to %struct.iwl_fw_error_dump_data*
  store %struct.iwl_fw_error_dump_data* %41, %struct.iwl_fw_error_dump_data** %9, align 8
  %42 = load i32, i32* @IWL_INI_DUMP_INFO_TYPE, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %9, align 8
  %45 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 192, %47
  %49 = trunc i64 %48 to i32
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %9, align 8
  %52 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.iwl_fw_error_dump_data*, %struct.iwl_fw_error_dump_data** %9, align 8
  %54 = getelementptr inbounds %struct.iwl_fw_error_dump_data, %struct.iwl_fw_error_dump_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = bitcast i8* %56 to %struct.iwl_fw_ini_dump_info*
  store %struct.iwl_fw_ini_dump_info* %57, %struct.iwl_fw_ini_dump_info** %10, align 8
  %58 = load i32, i32* @IWL_INI_DUMP_VER, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %61 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %60, i32 0, i32 24
  store i8* %59, i8** %61, align 8
  %62 = load %struct.iwl_fw_ini_trigger*, %struct.iwl_fw_ini_trigger** %6, align 8
  %63 = getelementptr inbounds %struct.iwl_fw_ini_trigger, %struct.iwl_fw_ini_trigger* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %66 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %65, i32 0, i32 23
  store i32 %64, i32* %66, align 8
  %67 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %68 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %75 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %74, i32 0, i32 22
  store i8* %73, i8** %75, align 8
  %76 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %77 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %83 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %82, i32 0, i32 21
  store i8* %81, i8** %83, align 8
  %84 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %85 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %91 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %90, i32 0, i32 20
  store i8* %89, i8** %91, align 8
  %92 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %93 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @CSR_HW_REV_STEP(i32 %96)
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %100 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %99, i32 0, i32 19
  store i8* %98, i8** %100, align 8
  %101 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %102 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %101, i32 0, i32 2
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @CSR_HW_REV_TYPE(i32 %105)
  %107 = call i8* @cpu_to_le32(i32 %106)
  %108 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %109 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %108, i32 0, i32 18
  store i8* %107, i8** %109, align 8
  %110 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %111 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %110, i32 0, i32 2
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @CSR_HW_RFID_FLAVOR(i32 %114)
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %118 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %117, i32 0, i32 17
  store i8* %116, i8** %118, align 8
  %119 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %120 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %119, i32 0, i32 2
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @CSR_HW_RFID_DASH(i32 %123)
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %127 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %126, i32 0, i32 16
  store i8* %125, i8** %127, align 8
  %128 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %129 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %128, i32 0, i32 2
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @CSR_HW_RFID_STEP(i32 %132)
  %134 = call i8* @cpu_to_le32(i32 %133)
  %135 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %136 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %135, i32 0, i32 15
  store i8* %134, i8** %136, align 8
  %137 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %138 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %137, i32 0, i32 2
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @CSR_HW_RFID_TYPE(i32 %141)
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %145 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %144, i32 0, i32 14
  store i8* %143, i8** %145, align 8
  %146 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %147 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @cpu_to_le32(i32 %150)
  %152 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %153 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %152, i32 0, i32 13
  store i8* %151, i8** %153, align 8
  %154 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %155 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @cpu_to_le32(i32 %158)
  %160 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %161 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %160, i32 0, i32 12
  store i8* %159, i8** %161, align 8
  %162 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %163 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @cpu_to_le32(i32 %166)
  %168 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %169 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %168, i32 0, i32 11
  store i8* %167, i8** %169, align 8
  %170 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %171 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @cpu_to_le32(i32 %174)
  %176 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %177 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %176, i32 0, i32 10
  store i8* %175, i8** %177, align 8
  %178 = call i8* @cpu_to_le32(i32 4)
  %179 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %180 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %179, i32 0, i32 9
  store i8* %178, i8** %180, align 8
  %181 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %182 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %185 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %184, i32 0, i32 1
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @memcpy(i32 %183, i32 %188, i32 4)
  %190 = call i8* @cpu_to_le32(i32 4)
  %191 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %192 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %191, i32 0, i32 7
  store i8* %190, i8** %192, align 8
  %193 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %194 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %197 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @memcpy(i32 %195, i32 %199, i32 4)
  %201 = call i8* @cpu_to_le32(i32 4)
  %202 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %203 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %202, i32 0, i32 5
  store i8* %201, i8** %203, align 8
  %204 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %205 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %208 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @memcpy(i32 %206, i32 %210, i32 4)
  %212 = call i8* @cpu_to_le32(i32 4)
  %213 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %214 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  %215 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %216 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %219 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @memcpy(i32 %217, i32 %221, i32 4)
  %223 = load %struct.iwl_fw_ini_trigger*, %struct.iwl_fw_ini_trigger** %6, align 8
  %224 = getelementptr inbounds %struct.iwl_fw_ini_trigger, %struct.iwl_fw_ini_trigger* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %227 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  %228 = load %struct.iwl_fw_ini_dump_info*, %struct.iwl_fw_ini_dump_info** %10, align 8
  %229 = getelementptr inbounds %struct.iwl_fw_ini_dump_info, %struct.iwl_fw_ini_dump_info* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.iwl_fw_ini_trigger*, %struct.iwl_fw_ini_trigger** %6, align 8
  %232 = getelementptr inbounds %struct.iwl_fw_ini_trigger, %struct.iwl_fw_ini_trigger* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %11, align 4
  %235 = call i32 @memcpy(i32 %230, i32 %233, i32 %234)
  %236 = load %struct.iwl_fw_ini_dump_entry*, %struct.iwl_fw_ini_dump_entry** %8, align 8
  %237 = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, %struct.iwl_fw_ini_dump_entry* %236, i32 0, i32 1
  %238 = load %struct.list_head*, %struct.list_head** %7, align 8
  %239 = call i32 @list_add(i32* %237, %struct.list_head* %238)
  %240 = load %struct.iwl_fw_ini_dump_entry*, %struct.iwl_fw_ini_dump_entry** %8, align 8
  %241 = getelementptr inbounds %struct.iwl_fw_ini_dump_entry, %struct.iwl_fw_ini_dump_entry* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %33, %32
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.iwl_fw_ini_dump_entry* @kmalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @CSR_HW_REV_STEP(i32) #1

declare dso_local i32 @CSR_HW_REV_TYPE(i32) #1

declare dso_local i32 @CSR_HW_RFID_FLAVOR(i32) #1

declare dso_local i32 @CSR_HW_RFID_DASH(i32) #1

declare dso_local i32 @CSR_HW_RFID_STEP(i32) #1

declare dso_local i32 @CSR_HW_RFID_TYPE(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
