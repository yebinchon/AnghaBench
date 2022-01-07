; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_config_iwarp_qvlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_config_iwarp_qvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, %struct.TYPE_8__*, %struct.i40e_pf* }
%struct.TYPE_8__ = type { i64, %struct.virtchnl_iwarp_qv_info* }
%struct.virtchnl_iwarp_qv_info = type { i64, i64, i64, i64 }
%struct.i40e_pf = type { %struct.i40e_hw, %struct.TYPE_6__* }
%struct.i40e_hw = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.virtchnl_iwarp_qvlist_info = type { i64, %struct.virtchnl_iwarp_qv_info* }

@.str = private unnamed_addr constant [59 x i8] c"Incorrect number of iwarp vectors %u. Maximum %u allowed.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK = common dso_local global i64 0, align 8
@I40E_VPINT_LNKLSTN_FIRSTQ_INDX_SHIFT = common dso_local global i64 0, align 8
@I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_MASK = common dso_local global i64 0, align 8
@I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_SHIFT = common dso_local global i64 0, align 8
@I40E_QUEUE_INVALID_IDX = common dso_local global i64 0, align 8
@I40E_VPINT_CEQCTL_CAUSE_ENA_MASK = common dso_local global i64 0, align 8
@I40E_VPINT_CEQCTL_MSIX_INDX_SHIFT = common dso_local global i64 0, align 8
@I40E_VPINT_CEQCTL_ITR_INDX_SHIFT = common dso_local global i64 0, align 8
@I40E_VPINT_CEQCTL_NEXTQ_TYPE_SHIFT = common dso_local global i64 0, align 8
@I40E_VPINT_CEQCTL_NEXTQ_INDX_SHIFT = common dso_local global i64 0, align 8
@I40E_QUEUE_TYPE_PE_CEQ = common dso_local global i64 0, align 8
@I40E_VPINT_AEQCTL_CAUSE_ENA_MASK = common dso_local global i64 0, align 8
@I40E_VPINT_AEQCTL_MSIX_INDX_SHIFT = common dso_local global i64 0, align 8
@I40E_VPINT_AEQCTL_ITR_INDX_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, %struct.virtchnl_iwarp_qvlist_info*)* @i40e_config_iwarp_qvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_config_iwarp_qvlist(%struct.i40e_vf* %0, %struct.virtchnl_iwarp_qvlist_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vf*, align 8
  %5 = alloca %struct.virtchnl_iwarp_qvlist_info*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca %struct.virtchnl_iwarp_qv_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %4, align 8
  store %struct.virtchnl_iwarp_qvlist_info* %1, %struct.virtchnl_iwarp_qvlist_info** %5, align 8
  %17 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %18 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %17, i32 0, i32 2
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  store %struct.i40e_pf* %19, %struct.i40e_pf** %6, align 8
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 0
  store %struct.i40e_hw* %21, %struct.i40e_hw** %7, align 8
  store i32 0, i32* %16, align 4
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %23 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %15, align 8
  %27 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %5, align 8
  %28 = getelementptr inbounds %struct.virtchnl_iwarp_qvlist_info, %struct.virtchnl_iwarp_qvlist_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %34 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %5, align 8
  %38 = getelementptr inbounds %struct.virtchnl_iwarp_qvlist_info, %struct.virtchnl_iwarp_qvlist_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %15, align 8
  %41 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %16, align 4
  br label %244

44:                                               ; preds = %2
  %45 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %46 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = call i32 @kfree(%struct.TYPE_8__* %47)
  %49 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %50 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %8, align 8
  %53 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %5, align 8
  %54 = getelementptr inbounds %struct.virtchnl_iwarp_qvlist_info, %struct.virtchnl_iwarp_qvlist_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, 1
  %57 = call i32 @struct_size(%struct.TYPE_8__* %51, %struct.virtchnl_iwarp_qv_info* %52, i64 %56)
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.TYPE_8__* @kzalloc(i32 %57, i32 %58)
  %60 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %61 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %60, i32 0, i32 1
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %61, align 8
  %62 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %63 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = icmp ne %struct.TYPE_8__* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %44
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %16, align 4
  br label %244

69:                                               ; preds = %44
  %70 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %5, align 8
  %71 = getelementptr inbounds %struct.virtchnl_iwarp_qvlist_info, %struct.virtchnl_iwarp_qvlist_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %74 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i64 %72, i64* %76, align 8
  %77 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %78 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %15, align 8
  store i64 0, i64* %10, align 8
  br label %82

82:                                               ; preds = %233, %69
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %5, align 8
  %85 = getelementptr inbounds %struct.virtchnl_iwarp_qvlist_info, %struct.virtchnl_iwarp_qvlist_info* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ult i64 %83, %86
  br i1 %87, label %88, label %236

88:                                               ; preds = %82
  %89 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %5, align 8
  %90 = getelementptr inbounds %struct.virtchnl_iwarp_qvlist_info, %struct.virtchnl_iwarp_qvlist_info* %89, i32 0, i32 1
  %91 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %91, i64 %92
  store %struct.virtchnl_iwarp_qv_info* %93, %struct.virtchnl_iwarp_qv_info** %8, align 8
  %94 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %8, align 8
  %95 = icmp ne %struct.virtchnl_iwarp_qv_info* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  br label %233

97:                                               ; preds = %88
  %98 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %99 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %8, align 8
  %100 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @i40e_vc_isvalid_vector_id(%struct.i40e_vf* %98, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %16, align 4
  br label %237

107:                                              ; preds = %97
  %108 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %8, align 8
  %109 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %9, align 8
  %111 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %112 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %115, i64 %116
  %118 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %8, align 8
  %119 = bitcast %struct.virtchnl_iwarp_qv_info* %117 to i8*
  %120 = bitcast %struct.virtchnl_iwarp_qv_info* %118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 32, i1 false)
  %121 = load i64, i64* %15, align 8
  %122 = sub i64 %121, 1
  %123 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %124 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = mul i64 %122, %125
  %127 = load i64, i64* %9, align 8
  %128 = sub i64 %127, 1
  %129 = add i64 %126, %128
  store i64 %129, i64* %11, align 8
  %130 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @I40E_VPINT_LNKLSTN(i64 %131)
  %133 = call i64 @rd32(%struct.i40e_hw* %130, i32 %132)
  store i64 %133, i64* %12, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* @I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK, align 8
  %136 = and i64 %134, %135
  %137 = load i64, i64* @I40E_VPINT_LNKLSTN_FIRSTQ_INDX_SHIFT, align 8
  %138 = lshr i64 %136, %137
  store i64 %138, i64* %13, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* @I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_MASK, align 8
  %141 = and i64 %139, %140
  %142 = load i64, i64* @I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_SHIFT, align 8
  %143 = lshr i64 %141, %142
  store i64 %143, i64* %14, align 8
  %144 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %8, align 8
  %145 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @I40E_QUEUE_INVALID_IDX, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %207

149:                                              ; preds = %107
  %150 = load i64, i64* %15, align 8
  %151 = sub i64 %150, 1
  %152 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %153 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = mul i64 %151, %154
  %156 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %8, align 8
  %157 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %155, %158
  store i64 %159, i64* %11, align 8
  %160 = load i64, i64* @I40E_VPINT_CEQCTL_CAUSE_ENA_MASK, align 8
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* @I40E_VPINT_CEQCTL_MSIX_INDX_SHIFT, align 8
  %163 = shl i64 %161, %162
  %164 = or i64 %160, %163
  %165 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %8, align 8
  %166 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @I40E_VPINT_CEQCTL_ITR_INDX_SHIFT, align 8
  %169 = shl i64 %167, %168
  %170 = or i64 %164, %169
  %171 = load i64, i64* %14, align 8
  %172 = load i64, i64* @I40E_VPINT_CEQCTL_NEXTQ_TYPE_SHIFT, align 8
  %173 = shl i64 %171, %172
  %174 = or i64 %170, %173
  %175 = load i64, i64* %13, align 8
  %176 = load i64, i64* @I40E_VPINT_CEQCTL_NEXTQ_INDX_SHIFT, align 8
  %177 = shl i64 %175, %176
  %178 = or i64 %174, %177
  store i64 %178, i64* %12, align 8
  %179 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %180 = load i64, i64* %11, align 8
  %181 = call i32 @I40E_VPINT_CEQCTL(i64 %180)
  %182 = load i64, i64* %12, align 8
  %183 = call i32 @wr32(%struct.i40e_hw* %179, i32 %181, i64 %182)
  %184 = load i64, i64* %15, align 8
  %185 = sub i64 %184, 1
  %186 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %187 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = mul i64 %185, %188
  %190 = load i64, i64* %9, align 8
  %191 = sub i64 %190, 1
  %192 = add i64 %189, %191
  store i64 %192, i64* %11, align 8
  %193 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %8, align 8
  %194 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK, align 8
  %197 = and i64 %195, %196
  %198 = load i64, i64* @I40E_QUEUE_TYPE_PE_CEQ, align 8
  %199 = load i64, i64* @I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_SHIFT, align 8
  %200 = shl i64 %198, %199
  %201 = or i64 %197, %200
  store i64 %201, i64* %12, align 8
  %202 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %203 = load i64, i64* %11, align 8
  %204 = call i32 @I40E_VPINT_LNKLSTN(i64 %203)
  %205 = load i64, i64* %12, align 8
  %206 = call i32 @wr32(%struct.i40e_hw* %202, i32 %204, i64 %205)
  br label %207

207:                                              ; preds = %149, %107
  %208 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %8, align 8
  %209 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @I40E_QUEUE_INVALID_IDX, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %232

213:                                              ; preds = %207
  %214 = load i64, i64* @I40E_VPINT_AEQCTL_CAUSE_ENA_MASK, align 8
  %215 = load i64, i64* %9, align 8
  %216 = load i64, i64* @I40E_VPINT_AEQCTL_MSIX_INDX_SHIFT, align 8
  %217 = shl i64 %215, %216
  %218 = or i64 %214, %217
  %219 = load %struct.virtchnl_iwarp_qv_info*, %struct.virtchnl_iwarp_qv_info** %8, align 8
  %220 = getelementptr inbounds %struct.virtchnl_iwarp_qv_info, %struct.virtchnl_iwarp_qv_info* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @I40E_VPINT_AEQCTL_ITR_INDX_SHIFT, align 8
  %223 = shl i64 %221, %222
  %224 = or i64 %218, %223
  store i64 %224, i64* %12, align 8
  %225 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %226 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %227 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @I40E_VPINT_AEQCTL(i64 %228)
  %230 = load i64, i64* %12, align 8
  %231 = call i32 @wr32(%struct.i40e_hw* %225, i32 %229, i64 %230)
  br label %232

232:                                              ; preds = %213, %207
  br label %233

233:                                              ; preds = %232, %96
  %234 = load i64, i64* %10, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %10, align 8
  br label %82

236:                                              ; preds = %82
  store i32 0, i32* %3, align 4
  br label %246

237:                                              ; preds = %104
  %238 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %239 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %238, i32 0, i32 1
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = call i32 @kfree(%struct.TYPE_8__* %240)
  %242 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %243 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %242, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %243, align 8
  br label %244

244:                                              ; preds = %237, %66, %32
  %245 = load i32, i32* %16, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %244, %236
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.TYPE_8__*, %struct.virtchnl_iwarp_qv_info*, i64) #1

declare dso_local i32 @i40e_vc_isvalid_vector_id(%struct.i40e_vf*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_VPINT_LNKLSTN(i64) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i64) #1

declare dso_local i32 @I40E_VPINT_CEQCTL(i64) #1

declare dso_local i32 @I40E_VPINT_AEQCTL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
