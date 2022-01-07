; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_init_hw_tbls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_init_hw_tbls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.ice_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.ice_es, %struct.ice_xlt2, %struct.ice_xlt1, %struct.ice_prof_tcam, %struct.ice_prof_redir }
%struct.ice_es = type { i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.ice_xlt2 = type { i64, i8*, %struct.TYPE_5__*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.ice_xlt1 = type { i64, i8*, i8*, i8*, i8* }
%struct.ice_prof_tcam = type { i64, i8*, i32, i32, i8* }
%struct.ice_prof_redir = type { i64, i8*, i8* }

@ICE_BLK_COUNT = common dso_local global i64 0, align 8
@blk_sizes = common dso_local global %struct.TYPE_6__* null, align 8
@ice_blk_sids = common dso_local global i8*** null, align 8
@ICE_SID_XLT1_OFF = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_MAX_PTGS = common dso_local global i64 0, align 8
@ICE_SID_XLT2_OFF = common dso_local global i64 0, align 8
@ICE_SID_PR_OFF = common dso_local global i64 0, align 8
@ICE_SID_PR_REDIR_OFF = common dso_local global i64 0, align 8
@ICE_SID_ES_OFF = common dso_local global i64 0, align 8
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_init_hw_tbls(%struct.ice_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ice_prof_redir*, align 8
  %6 = alloca %struct.ice_prof_tcam*, align 8
  %7 = alloca %struct.ice_xlt1*, align 8
  %8 = alloca %struct.ice_xlt2*, align 8
  %9 = alloca %struct.ice_es*, align 8
  %10 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %364, %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @ICE_BLK_COUNT, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %367

15:                                               ; preds = %11
  %16 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %17 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 6
  store %struct.ice_prof_redir* %21, %struct.ice_prof_redir** %5, align 8
  %22 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %23 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  store %struct.ice_prof_tcam* %27, %struct.ice_prof_tcam** %6, align 8
  %28 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  store %struct.ice_xlt1* %33, %struct.ice_xlt1** %7, align 8
  %34 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store %struct.ice_xlt2* %39, %struct.ice_xlt2** %8, align 8
  %40 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %41 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store %struct.ice_es* %45, %struct.ice_es** %9, align 8
  %46 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %15
  br label %364

55:                                               ; preds = %15
  %56 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @blk_sizes, align 8
  %63 = load i64, i64* %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %68 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 %66, i32* %72, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @blk_sizes, align 8
  %74 = load i64, i64* %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ice_es*, %struct.ice_es** %9, align 8
  %79 = getelementptr inbounds %struct.ice_es, %struct.ice_es* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = load i8***, i8**** @ice_blk_sids, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds i8**, i8*** %80, i64 %81
  %83 = load i8**, i8*** %82, align 8
  %84 = load i64, i64* @ICE_SID_XLT1_OFF, align 8
  %85 = getelementptr inbounds i8*, i8** %83, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.ice_xlt1*, %struct.ice_xlt1** %7, align 8
  %88 = getelementptr inbounds %struct.ice_xlt1, %struct.ice_xlt1* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @blk_sizes, align 8
  %90 = load i64, i64* %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ice_xlt1*, %struct.ice_xlt1** %7, align 8
  %95 = getelementptr inbounds %struct.ice_xlt1, %struct.ice_xlt1* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %97 = call i32 @ice_hw_to_dev(%struct.ice_hw* %96)
  %98 = load %struct.ice_xlt1*, %struct.ice_xlt1** %7, align 8
  %99 = getelementptr inbounds %struct.ice_xlt1, %struct.ice_xlt1* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i8* @devm_kcalloc(i32 %97, i64 %100, i32 1, i32 %101)
  %103 = load %struct.ice_xlt1*, %struct.ice_xlt1** %7, align 8
  %104 = getelementptr inbounds %struct.ice_xlt1, %struct.ice_xlt1* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load %struct.ice_xlt1*, %struct.ice_xlt1** %7, align 8
  %106 = getelementptr inbounds %struct.ice_xlt1, %struct.ice_xlt1* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %55
  br label %368

110:                                              ; preds = %55
  %111 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %112 = call i32 @ice_hw_to_dev(%struct.ice_hw* %111)
  %113 = load i64, i64* @ICE_MAX_PTGS, align 8
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i8* @devm_kcalloc(i32 %112, i64 %113, i32 1, i32 %114)
  %116 = load %struct.ice_xlt1*, %struct.ice_xlt1** %7, align 8
  %117 = getelementptr inbounds %struct.ice_xlt1, %struct.ice_xlt1* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load %struct.ice_xlt1*, %struct.ice_xlt1** %7, align 8
  %119 = getelementptr inbounds %struct.ice_xlt1, %struct.ice_xlt1* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %110
  br label %368

123:                                              ; preds = %110
  %124 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %125 = call i32 @ice_hw_to_dev(%struct.ice_hw* %124)
  %126 = load %struct.ice_xlt1*, %struct.ice_xlt1** %7, align 8
  %127 = getelementptr inbounds %struct.ice_xlt1, %struct.ice_xlt1* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i8* @devm_kcalloc(i32 %125, i64 %128, i32 1, i32 %129)
  %131 = load %struct.ice_xlt1*, %struct.ice_xlt1** %7, align 8
  %132 = getelementptr inbounds %struct.ice_xlt1, %struct.ice_xlt1* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load %struct.ice_xlt1*, %struct.ice_xlt1** %7, align 8
  %134 = getelementptr inbounds %struct.ice_xlt1, %struct.ice_xlt1* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %123
  br label %368

138:                                              ; preds = %123
  %139 = load i8***, i8**** @ice_blk_sids, align 8
  %140 = load i64, i64* %4, align 8
  %141 = getelementptr inbounds i8**, i8*** %139, i64 %140
  %142 = load i8**, i8*** %141, align 8
  %143 = load i64, i64* @ICE_SID_XLT2_OFF, align 8
  %144 = getelementptr inbounds i8*, i8** %142, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.ice_xlt2*, %struct.ice_xlt2** %8, align 8
  %147 = getelementptr inbounds %struct.ice_xlt2, %struct.ice_xlt2* %146, i32 0, i32 4
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @blk_sizes, align 8
  %149 = load i64, i64* %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ice_xlt2*, %struct.ice_xlt2** %8, align 8
  %154 = getelementptr inbounds %struct.ice_xlt2, %struct.ice_xlt2* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %156 = call i32 @ice_hw_to_dev(%struct.ice_hw* %155)
  %157 = load %struct.ice_xlt2*, %struct.ice_xlt2** %8, align 8
  %158 = getelementptr inbounds %struct.ice_xlt2, %struct.ice_xlt2* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = call i8* @devm_kcalloc(i32 %156, i64 %159, i32 1, i32 %160)
  %162 = load %struct.ice_xlt2*, %struct.ice_xlt2** %8, align 8
  %163 = getelementptr inbounds %struct.ice_xlt2, %struct.ice_xlt2* %162, i32 0, i32 3
  store i8* %161, i8** %163, align 8
  %164 = load %struct.ice_xlt2*, %struct.ice_xlt2** %8, align 8
  %165 = getelementptr inbounds %struct.ice_xlt2, %struct.ice_xlt2* %164, i32 0, i32 3
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %138
  br label %368

169:                                              ; preds = %138
  %170 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %171 = call i32 @ice_hw_to_dev(%struct.ice_hw* %170)
  %172 = load %struct.ice_xlt2*, %struct.ice_xlt2** %8, align 8
  %173 = getelementptr inbounds %struct.ice_xlt2, %struct.ice_xlt2* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* @GFP_KERNEL, align 4
  %176 = call i8* @devm_kcalloc(i32 %171, i64 %174, i32 4, i32 %175)
  %177 = bitcast i8* %176 to %struct.TYPE_5__*
  %178 = load %struct.ice_xlt2*, %struct.ice_xlt2** %8, align 8
  %179 = getelementptr inbounds %struct.ice_xlt2, %struct.ice_xlt2* %178, i32 0, i32 2
  store %struct.TYPE_5__* %177, %struct.TYPE_5__** %179, align 8
  %180 = load %struct.ice_xlt2*, %struct.ice_xlt2** %8, align 8
  %181 = getelementptr inbounds %struct.ice_xlt2, %struct.ice_xlt2* %180, i32 0, i32 2
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = icmp ne %struct.TYPE_5__* %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %169
  br label %368

185:                                              ; preds = %169
  store i64 0, i64* %10, align 8
  br label %186

186:                                              ; preds = %200, %185
  %187 = load i64, i64* %10, align 8
  %188 = load %struct.ice_xlt2*, %struct.ice_xlt2** %8, align 8
  %189 = getelementptr inbounds %struct.ice_xlt2, %struct.ice_xlt2* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ult i64 %187, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %186
  %193 = load %struct.ice_xlt2*, %struct.ice_xlt2** %8, align 8
  %194 = getelementptr inbounds %struct.ice_xlt2, %struct.ice_xlt2* %193, i32 0, i32 2
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = load i64, i64* %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = call i32 @INIT_LIST_HEAD(i32* %198)
  br label %200

200:                                              ; preds = %192
  %201 = load i64, i64* %10, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %10, align 8
  br label %186

203:                                              ; preds = %186
  %204 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %205 = call i32 @ice_hw_to_dev(%struct.ice_hw* %204)
  %206 = load %struct.ice_xlt2*, %struct.ice_xlt2** %8, align 8
  %207 = getelementptr inbounds %struct.ice_xlt2, %struct.ice_xlt2* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* @GFP_KERNEL, align 4
  %210 = call i8* @devm_kcalloc(i32 %205, i64 %208, i32 1, i32 %209)
  %211 = load %struct.ice_xlt2*, %struct.ice_xlt2** %8, align 8
  %212 = getelementptr inbounds %struct.ice_xlt2, %struct.ice_xlt2* %211, i32 0, i32 1
  store i8* %210, i8** %212, align 8
  %213 = load %struct.ice_xlt2*, %struct.ice_xlt2** %8, align 8
  %214 = getelementptr inbounds %struct.ice_xlt2, %struct.ice_xlt2* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %218, label %217

217:                                              ; preds = %203
  br label %368

218:                                              ; preds = %203
  %219 = load i8***, i8**** @ice_blk_sids, align 8
  %220 = load i64, i64* %4, align 8
  %221 = getelementptr inbounds i8**, i8*** %219, i64 %220
  %222 = load i8**, i8*** %221, align 8
  %223 = load i64, i64* @ICE_SID_PR_OFF, align 8
  %224 = getelementptr inbounds i8*, i8** %222, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.ice_prof_tcam*, %struct.ice_prof_tcam** %6, align 8
  %227 = getelementptr inbounds %struct.ice_prof_tcam, %struct.ice_prof_tcam* %226, i32 0, i32 4
  store i8* %225, i8** %227, align 8
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** @blk_sizes, align 8
  %229 = load i64, i64* %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.ice_prof_tcam*, %struct.ice_prof_tcam** %6, align 8
  %234 = getelementptr inbounds %struct.ice_prof_tcam, %struct.ice_prof_tcam* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** @blk_sizes, align 8
  %236 = load i64, i64* %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.ice_prof_tcam*, %struct.ice_prof_tcam** %6, align 8
  %241 = getelementptr inbounds %struct.ice_prof_tcam, %struct.ice_prof_tcam* %240, i32 0, i32 3
  store i32 %239, i32* %241, align 4
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** @blk_sizes, align 8
  %243 = load i64, i64* %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.ice_prof_tcam*, %struct.ice_prof_tcam** %6, align 8
  %248 = getelementptr inbounds %struct.ice_prof_tcam, %struct.ice_prof_tcam* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 8
  %249 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %250 = call i32 @ice_hw_to_dev(%struct.ice_hw* %249)
  %251 = load %struct.ice_prof_tcam*, %struct.ice_prof_tcam** %6, align 8
  %252 = getelementptr inbounds %struct.ice_prof_tcam, %struct.ice_prof_tcam* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i32, i32* @GFP_KERNEL, align 4
  %255 = call i8* @devm_kcalloc(i32 %250, i64 %253, i32 1, i32 %254)
  %256 = load %struct.ice_prof_tcam*, %struct.ice_prof_tcam** %6, align 8
  %257 = getelementptr inbounds %struct.ice_prof_tcam, %struct.ice_prof_tcam* %256, i32 0, i32 1
  store i8* %255, i8** %257, align 8
  %258 = load %struct.ice_prof_tcam*, %struct.ice_prof_tcam** %6, align 8
  %259 = getelementptr inbounds %struct.ice_prof_tcam, %struct.ice_prof_tcam* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %263, label %262

262:                                              ; preds = %218
  br label %368

263:                                              ; preds = %218
  %264 = load i8***, i8**** @ice_blk_sids, align 8
  %265 = load i64, i64* %4, align 8
  %266 = getelementptr inbounds i8**, i8*** %264, i64 %265
  %267 = load i8**, i8*** %266, align 8
  %268 = load i64, i64* @ICE_SID_PR_REDIR_OFF, align 8
  %269 = getelementptr inbounds i8*, i8** %267, i64 %268
  %270 = load i8*, i8** %269, align 8
  %271 = load %struct.ice_prof_redir*, %struct.ice_prof_redir** %5, align 8
  %272 = getelementptr inbounds %struct.ice_prof_redir, %struct.ice_prof_redir* %271, i32 0, i32 2
  store i8* %270, i8** %272, align 8
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** @blk_sizes, align 8
  %274 = load i64, i64* %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.ice_prof_redir*, %struct.ice_prof_redir** %5, align 8
  %279 = getelementptr inbounds %struct.ice_prof_redir, %struct.ice_prof_redir* %278, i32 0, i32 0
  store i64 %277, i64* %279, align 8
  %280 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %281 = call i32 @ice_hw_to_dev(%struct.ice_hw* %280)
  %282 = load %struct.ice_prof_redir*, %struct.ice_prof_redir** %5, align 8
  %283 = getelementptr inbounds %struct.ice_prof_redir, %struct.ice_prof_redir* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i32, i32* @GFP_KERNEL, align 4
  %286 = call i8* @devm_kcalloc(i32 %281, i64 %284, i32 1, i32 %285)
  %287 = load %struct.ice_prof_redir*, %struct.ice_prof_redir** %5, align 8
  %288 = getelementptr inbounds %struct.ice_prof_redir, %struct.ice_prof_redir* %287, i32 0, i32 1
  store i8* %286, i8** %288, align 8
  %289 = load %struct.ice_prof_redir*, %struct.ice_prof_redir** %5, align 8
  %290 = getelementptr inbounds %struct.ice_prof_redir, %struct.ice_prof_redir* %289, i32 0, i32 1
  %291 = load i8*, i8** %290, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %294, label %293

293:                                              ; preds = %263
  br label %368

294:                                              ; preds = %263
  %295 = load i8***, i8**** @ice_blk_sids, align 8
  %296 = load i64, i64* %4, align 8
  %297 = getelementptr inbounds i8**, i8*** %295, i64 %296
  %298 = load i8**, i8*** %297, align 8
  %299 = load i64, i64* @ICE_SID_ES_OFF, align 8
  %300 = getelementptr inbounds i8*, i8** %298, i64 %299
  %301 = load i8*, i8** %300, align 8
  %302 = load %struct.ice_es*, %struct.ice_es** %9, align 8
  %303 = getelementptr inbounds %struct.ice_es, %struct.ice_es* %302, i32 0, i32 5
  store i8* %301, i8** %303, align 8
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** @blk_sizes, align 8
  %305 = load i64, i64* %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.ice_es*, %struct.ice_es** %9, align 8
  %310 = getelementptr inbounds %struct.ice_es, %struct.ice_es* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 8
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** @blk_sizes, align 8
  %312 = load i64, i64* %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.ice_es*, %struct.ice_es** %9, align 8
  %317 = getelementptr inbounds %struct.ice_es, %struct.ice_es* %316, i32 0, i32 1
  store i32 %315, i32* %317, align 4
  %318 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %319 = call i32 @ice_hw_to_dev(%struct.ice_hw* %318)
  %320 = load %struct.ice_es*, %struct.ice_es** %9, align 8
  %321 = getelementptr inbounds %struct.ice_es, %struct.ice_es* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.ice_es*, %struct.ice_es** %9, align 8
  %324 = getelementptr inbounds %struct.ice_es, %struct.ice_es* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = mul nsw i32 %322, %325
  %327 = sext i32 %326 to i64
  %328 = load i32, i32* @GFP_KERNEL, align 4
  %329 = call i8* @devm_kcalloc(i32 %319, i64 %327, i32 1, i32 %328)
  %330 = load %struct.ice_es*, %struct.ice_es** %9, align 8
  %331 = getelementptr inbounds %struct.ice_es, %struct.ice_es* %330, i32 0, i32 4
  store i8* %329, i8** %331, align 8
  %332 = load %struct.ice_es*, %struct.ice_es** %9, align 8
  %333 = getelementptr inbounds %struct.ice_es, %struct.ice_es* %332, i32 0, i32 4
  %334 = load i8*, i8** %333, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %337, label %336

336:                                              ; preds = %294
  br label %368

337:                                              ; preds = %294
  %338 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %339 = call i32 @ice_hw_to_dev(%struct.ice_hw* %338)
  %340 = load %struct.ice_es*, %struct.ice_es** %9, align 8
  %341 = getelementptr inbounds %struct.ice_es, %struct.ice_es* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = sext i32 %342 to i64
  %344 = load i32, i32* @GFP_KERNEL, align 4
  %345 = call i8* @devm_kcalloc(i32 %339, i64 %343, i32 1, i32 %344)
  %346 = load %struct.ice_es*, %struct.ice_es** %9, align 8
  %347 = getelementptr inbounds %struct.ice_es, %struct.ice_es* %346, i32 0, i32 2
  store i8* %345, i8** %347, align 8
  %348 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %349 = call i32 @ice_hw_to_dev(%struct.ice_hw* %348)
  %350 = load %struct.ice_es*, %struct.ice_es** %9, align 8
  %351 = getelementptr inbounds %struct.ice_es, %struct.ice_es* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = sext i32 %352 to i64
  %354 = load i32, i32* @GFP_KERNEL, align 4
  %355 = call i8* @devm_kcalloc(i32 %349, i64 %353, i32 1, i32 %354)
  %356 = load %struct.ice_es*, %struct.ice_es** %9, align 8
  %357 = getelementptr inbounds %struct.ice_es, %struct.ice_es* %356, i32 0, i32 3
  store i8* %355, i8** %357, align 8
  %358 = load %struct.ice_es*, %struct.ice_es** %9, align 8
  %359 = getelementptr inbounds %struct.ice_es, %struct.ice_es* %358, i32 0, i32 2
  %360 = load i8*, i8** %359, align 8
  %361 = icmp ne i8* %360, null
  br i1 %361, label %363, label %362

362:                                              ; preds = %337
  br label %368

363:                                              ; preds = %337
  br label %364

364:                                              ; preds = %363, %54
  %365 = load i64, i64* %4, align 8
  %366 = add i64 %365, 1
  store i64 %366, i64* %4, align 8
  br label %11

367:                                              ; preds = %11
  store i32 0, i32* %2, align 4
  br label %372

368:                                              ; preds = %362, %336, %293, %262, %217, %184, %168, %137, %122, %109
  %369 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %370 = call i32 @ice_free_hw_tbls(%struct.ice_hw* %369)
  %371 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %371, i32* %2, align 4
  br label %372

372:                                              ; preds = %368, %367
  %373 = load i32, i32* %2, align 4
  ret i32 %373
}

declare dso_local i8* @devm_kcalloc(i32, i64, i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ice_free_hw_tbls(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
