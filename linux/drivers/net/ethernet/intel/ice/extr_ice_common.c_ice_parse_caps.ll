; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_parse_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_parse_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.ice_hw_func_caps, %struct.ice_hw_dev_caps }
%struct.ice_hw_func_caps = type { i32, i64, i64, %struct.ice_hw_common_caps }
%struct.ice_hw_common_caps = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ice_hw_dev_caps = type { i64, i64, %struct.ice_hw_common_caps }
%struct.ice_aqc_list_caps_elem = type { i32, i32, i32, i32 }

@ice_aqc_opc_list_dev_caps = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dev cap\00", align 1
@ice_aqc_opc_list_func_caps = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"func cap\00", align 1
@ICE_DBG_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"wrong opcode\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: valid_functions (bitmap) = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s: sr_iov_1_1 = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%s: num_vfs_exposed = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"%s: num_allocd_vfs = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%s: vf_base_id = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%s: num_vsi_allocd_to_host = %d\0A\00", align 1
@ICE_MAX_VSI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"%s: guar_num_vsi (fw) = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"%s: guar_num_vsi = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"%s: dcb = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%s: active_tc_bitmap = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"%s: maxtc = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"%s: rss_table_size = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"%s: rss_table_entry_width = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"%s: num_rxq = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%s: rxq_first_id = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"%s: num_txq = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"%s: txq_first_id = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"%s: num_msix_vectors = %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"%s: msix_vector_first_id = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"%s: max_mtu = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"%s: unknown capability[%d]: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*, i8*, i64, i32)* @ice_parse_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_parse_caps(%struct.ice_hw* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_aqc_list_caps_elem*, align 8
  %10 = alloca %struct.ice_hw_func_caps*, align 8
  %11 = alloca %struct.ice_hw_dev_caps*, align 8
  %12 = alloca %struct.ice_hw_common_caps*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.ice_hw_func_caps* null, %struct.ice_hw_func_caps** %10, align 8
  store %struct.ice_hw_dev_caps* null, %struct.ice_hw_dev_caps** %11, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %317

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to %struct.ice_aqc_list_caps_elem*
  store %struct.ice_aqc_list_caps_elem* %24, %struct.ice_aqc_list_caps_elem** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ice_aqc_opc_list_dev_caps, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %30 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %29, i32 0, i32 1
  store %struct.ice_hw_dev_caps* %30, %struct.ice_hw_dev_caps** %11, align 8
  %31 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %11, align 8
  %32 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %31, i32 0, i32 2
  store %struct.ice_hw_common_caps* %32, %struct.ice_hw_common_caps** %12, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %47

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ice_aqc_opc_list_func_caps, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %39 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %38, i32 0, i32 0
  store %struct.ice_hw_func_caps* %39, %struct.ice_hw_func_caps** %10, align 8
  %40 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %10, align 8
  %41 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %40, i32 0, i32 3
  store %struct.ice_hw_common_caps* %41, %struct.ice_hw_common_caps** %12, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %44 = load i32, i32* @ICE_DBG_INIT, align 4
  %45 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %43, i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %317

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %28
  store i64 0, i64* %14, align 8
  br label %48

48:                                               ; preds = %312, %47
  %49 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %50 = icmp ne %struct.ice_hw_common_caps* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp slt i64 %52, %53
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %57, label %317

57:                                               ; preds = %55
  %58 = load %struct.ice_aqc_list_caps_elem*, %struct.ice_aqc_list_caps_elem** %9, align 8
  %59 = getelementptr inbounds %struct.ice_aqc_list_caps_elem, %struct.ice_aqc_list_caps_elem* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le32_to_cpu(i32 %60)
  store i64 %61, i64* %15, align 8
  %62 = load %struct.ice_aqc_list_caps_elem*, %struct.ice_aqc_list_caps_elem** %9, align 8
  %63 = getelementptr inbounds %struct.ice_aqc_list_caps_elem, %struct.ice_aqc_list_caps_elem* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @le32_to_cpu(i32 %64)
  store i64 %65, i64* %16, align 8
  %66 = load %struct.ice_aqc_list_caps_elem*, %struct.ice_aqc_list_caps_elem** %9, align 8
  %67 = getelementptr inbounds %struct.ice_aqc_list_caps_elem, %struct.ice_aqc_list_caps_elem* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le32_to_cpu(i32 %68)
  store i64 %69, i64* %17, align 8
  %70 = load %struct.ice_aqc_list_caps_elem*, %struct.ice_aqc_list_caps_elem** %9, align 8
  %71 = getelementptr inbounds %struct.ice_aqc_list_caps_elem, %struct.ice_aqc_list_caps_elem* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  switch i32 %74, label %304 [
    i32 130, label %75
    i32 132, label %86
    i32 129, label %99
    i32 128, label %139
    i32 137, label %176
    i32 134, label %209
    i32 133, label %230
    i32 131, label %251
    i32 135, label %272
    i32 136, label %293
  ]

75:                                               ; preds = %57
  %76 = load i64, i64* %17, align 8
  %77 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %78 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %77, i32 0, i32 13
  store i64 %76, i64* %78, align 8
  %79 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %80 = load i32, i32* @ICE_DBG_INIT, align 4
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %83 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %82, i32 0, i32 13
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %79, i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %81, i64 %84)
  br label %311

86:                                               ; preds = %57
  %87 = load i64, i64* %17, align 8
  %88 = icmp eq i64 %87, 1
  %89 = zext i1 %88 to i32
  %90 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %91 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %93 = load i32, i32* @ICE_DBG_INIT, align 4
  %94 = load i8*, i8** %13, align 8
  %95 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %96 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %92, i32 %93, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %94, i32 %97)
  br label %311

99:                                               ; preds = %57
  %100 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %11, align 8
  %101 = icmp ne %struct.ice_hw_dev_caps* %100, null
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i64, i64* %17, align 8
  %104 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %11, align 8
  %105 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %107 = load i32, i32* @ICE_DBG_INIT, align 4
  %108 = load i8*, i8** %13, align 8
  %109 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %11, align 8
  %110 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %106, i32 %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %108, i64 %111)
  br label %138

113:                                              ; preds = %99
  %114 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %10, align 8
  %115 = icmp ne %struct.ice_hw_func_caps* %114, null
  br i1 %115, label %116, label %137

116:                                              ; preds = %113
  %117 = load i64, i64* %17, align 8
  %118 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %10, align 8
  %119 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %10, align 8
  %122 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %124 = load i32, i32* @ICE_DBG_INIT, align 4
  %125 = load i8*, i8** %13, align 8
  %126 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %10, align 8
  %127 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %123, i32 %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %125, i64 %128)
  %130 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %131 = load i32, i32* @ICE_DBG_INIT, align 4
  %132 = load i8*, i8** %13, align 8
  %133 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %10, align 8
  %134 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %130, i32 %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %132, i64 %135)
  br label %137

137:                                              ; preds = %116, %113
  br label %138

138:                                              ; preds = %137, %102
  br label %311

139:                                              ; preds = %57
  %140 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %11, align 8
  %141 = icmp ne %struct.ice_hw_dev_caps* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load i64, i64* %17, align 8
  %144 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %11, align 8
  %145 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %147 = load i32, i32* @ICE_DBG_INIT, align 4
  %148 = load i8*, i8** %13, align 8
  %149 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %11, align 8
  %150 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %146, i32 %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %148, i64 %151)
  br label %175

153:                                              ; preds = %139
  %154 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %10, align 8
  %155 = icmp ne %struct.ice_hw_func_caps* %154, null
  br i1 %155, label %156, label %174

156:                                              ; preds = %153
  %157 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %158 = load i32, i32* @ICE_MAX_VSI, align 4
  %159 = call i32 @ice_get_num_per_func(%struct.ice_hw* %157, i32 %158)
  %160 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %10, align 8
  %161 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %163 = load i32, i32* @ICE_DBG_INIT, align 4
  %164 = load i8*, i8** %13, align 8
  %165 = load i64, i64* %17, align 8
  %166 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %162, i32 %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %164, i64 %165)
  %167 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %168 = load i32, i32* @ICE_DBG_INIT, align 4
  %169 = load i8*, i8** %13, align 8
  %170 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %10, align 8
  %171 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %167, i32 %168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %169, i32 %172)
  br label %174

174:                                              ; preds = %156, %153
  br label %175

175:                                              ; preds = %174, %142
  br label %311

176:                                              ; preds = %57
  %177 = load i64, i64* %17, align 8
  %178 = icmp eq i64 %177, 1
  %179 = zext i1 %178 to i32
  %180 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %181 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load i64, i64* %15, align 8
  %183 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %184 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %183, i32 0, i32 12
  store i64 %182, i64* %184, align 8
  %185 = load i64, i64* %16, align 8
  %186 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %187 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %186, i32 0, i32 11
  store i64 %185, i64* %187, align 8
  %188 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %189 = load i32, i32* @ICE_DBG_INIT, align 4
  %190 = load i8*, i8** %13, align 8
  %191 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %192 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %188, i32 %189, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %190, i32 %193)
  %195 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %196 = load i32, i32* @ICE_DBG_INIT, align 4
  %197 = load i8*, i8** %13, align 8
  %198 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %199 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %198, i32 0, i32 12
  %200 = load i64, i64* %199, align 8
  %201 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %195, i32 %196, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %197, i64 %200)
  %202 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %203 = load i32, i32* @ICE_DBG_INIT, align 4
  %204 = load i8*, i8** %13, align 8
  %205 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %206 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %205, i32 0, i32 11
  %207 = load i64, i64* %206, align 8
  %208 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %202, i32 %203, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* %204, i64 %207)
  br label %311

209:                                              ; preds = %57
  %210 = load i64, i64* %17, align 8
  %211 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %212 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %211, i32 0, i32 10
  store i64 %210, i64* %212, align 8
  %213 = load i64, i64* %15, align 8
  %214 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %215 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %214, i32 0, i32 9
  store i64 %213, i64* %215, align 8
  %216 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %217 = load i32, i32* @ICE_DBG_INIT, align 4
  %218 = load i8*, i8** %13, align 8
  %219 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %220 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %219, i32 0, i32 10
  %221 = load i64, i64* %220, align 8
  %222 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %216, i32 %217, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %218, i64 %221)
  %223 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %224 = load i32, i32* @ICE_DBG_INIT, align 4
  %225 = load i8*, i8** %13, align 8
  %226 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %227 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %226, i32 0, i32 9
  %228 = load i64, i64* %227, align 8
  %229 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %223, i32 %224, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* %225, i64 %228)
  br label %311

230:                                              ; preds = %57
  %231 = load i64, i64* %17, align 8
  %232 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %233 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %232, i32 0, i32 8
  store i64 %231, i64* %233, align 8
  %234 = load i64, i64* %16, align 8
  %235 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %236 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %235, i32 0, i32 7
  store i64 %234, i64* %236, align 8
  %237 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %238 = load i32, i32* @ICE_DBG_INIT, align 4
  %239 = load i8*, i8** %13, align 8
  %240 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %241 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %240, i32 0, i32 8
  %242 = load i64, i64* %241, align 8
  %243 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %237, i32 %238, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* %239, i64 %242)
  %244 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %245 = load i32, i32* @ICE_DBG_INIT, align 4
  %246 = load i8*, i8** %13, align 8
  %247 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %248 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %247, i32 0, i32 7
  %249 = load i64, i64* %248, align 8
  %250 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %244, i32 %245, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* %246, i64 %249)
  br label %311

251:                                              ; preds = %57
  %252 = load i64, i64* %17, align 8
  %253 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %254 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %253, i32 0, i32 6
  store i64 %252, i64* %254, align 8
  %255 = load i64, i64* %16, align 8
  %256 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %257 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %256, i32 0, i32 5
  store i64 %255, i64* %257, align 8
  %258 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %259 = load i32, i32* @ICE_DBG_INIT, align 4
  %260 = load i8*, i8** %13, align 8
  %261 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %262 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %261, i32 0, i32 6
  %263 = load i64, i64* %262, align 8
  %264 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %258, i32 %259, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* %260, i64 %263)
  %265 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %266 = load i32, i32* @ICE_DBG_INIT, align 4
  %267 = load i8*, i8** %13, align 8
  %268 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %269 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %268, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  %271 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %265, i32 %266, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* %267, i64 %270)
  br label %311

272:                                              ; preds = %57
  %273 = load i64, i64* %17, align 8
  %274 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %275 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %274, i32 0, i32 4
  store i64 %273, i64* %275, align 8
  %276 = load i64, i64* %16, align 8
  %277 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %278 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %277, i32 0, i32 3
  store i64 %276, i64* %278, align 8
  %279 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %280 = load i32, i32* @ICE_DBG_INIT, align 4
  %281 = load i8*, i8** %13, align 8
  %282 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %283 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %279, i32 %280, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* %281, i64 %284)
  %286 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %287 = load i32, i32* @ICE_DBG_INIT, align 4
  %288 = load i8*, i8** %13, align 8
  %289 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %290 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %289, i32 0, i32 3
  %291 = load i64, i64* %290, align 8
  %292 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %286, i32 %287, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i8* %288, i64 %291)
  br label %311

293:                                              ; preds = %57
  %294 = load i64, i64* %17, align 8
  %295 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %296 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %295, i32 0, i32 2
  store i64 %294, i64* %296, align 8
  %297 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %298 = load i32, i32* @ICE_DBG_INIT, align 4
  %299 = load i8*, i8** %13, align 8
  %300 = load %struct.ice_hw_common_caps*, %struct.ice_hw_common_caps** %12, align 8
  %301 = getelementptr inbounds %struct.ice_hw_common_caps, %struct.ice_hw_common_caps* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %297, i32 %298, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i8* %299, i64 %302)
  br label %311

304:                                              ; preds = %57
  %305 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %306 = load i32, i32* @ICE_DBG_INIT, align 4
  %307 = load i8*, i8** %13, align 8
  %308 = load i64, i64* %14, align 8
  %309 = load i32, i32* %18, align 4
  %310 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %305, i32 %306, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i8* %307, i64 %308, i32 %309)
  br label %311

311:                                              ; preds = %304, %293, %272, %251, %230, %209, %176, %175, %138, %86, %75
  br label %312

312:                                              ; preds = %311
  %313 = load i64, i64* %14, align 8
  %314 = add nsw i64 %313, 1
  store i64 %314, i64* %14, align 8
  %315 = load %struct.ice_aqc_list_caps_elem*, %struct.ice_aqc_list_caps_elem** %9, align 8
  %316 = getelementptr inbounds %struct.ice_aqc_list_caps_elem, %struct.ice_aqc_list_caps_elem* %315, i32 1
  store %struct.ice_aqc_list_caps_elem* %316, %struct.ice_aqc_list_caps_elem** %9, align 8
  br label %48

317:                                              ; preds = %21, %42, %55
  ret void
}

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ice_get_num_per_func(%struct.ice_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
