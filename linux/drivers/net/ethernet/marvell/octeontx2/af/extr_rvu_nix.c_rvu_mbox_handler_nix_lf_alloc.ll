; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_lf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_rvu_mbox_handler_nix_lf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { %struct.rvu_block* }
%struct.rvu_block = type { i64 }
%struct.nix_lf_alloc_req = type { i32, i32, i32, i32, i64, i32, i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.nix_lf_alloc_rsp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rvu_pfvf = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, i8*, %struct.TYPE_4__*, i8*, %struct.TYPE_4__*, i8*, i32 }
%struct.TYPE_4__ = type { i64 }

@NIX_AF_ERR_PARAM = common dso_local global i32 0, align 4
@BLKTYPE_NIX = common dso_local global i32 0, align 4
@NIX_AF_ERR_AF_LF_INVALID = common dso_local global i32 0, align 4
@RVU_DEFAULT_PF_FUNC = common dso_local global i64 0, align 8
@BLKTYPE_NPA = common dso_local global i32 0, align 4
@NIX_AF_INVAL_NPA_PF_FUNC = common dso_local global i32 0, align 4
@BLKTYPE_SSO = common dso_local global i32 0, align 4
@NIX_AF_INVAL_SSO_PF_FUNC = common dso_local global i32 0, align 4
@MAX_RSS_INDIR_TBL_SIZE = common dso_local global i32 0, align 4
@NIX_AF_ERR_RSS_SIZE_INVALID = common dso_local global i32 0, align 4
@MAX_RSS_GROUPS = common dso_local global i32 0, align 4
@NIX_AF_ERR_RSS_GRPS_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to reset NIX%d LF%d\0A\00", align 1
@BLKADDR_NIX0 = common dso_local global i64 0, align 8
@NIX_AF_ERR_LF_RESET = common dso_local global i32 0, align 4
@NIX_AF_CONST3 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NIX_AF_CONST2 = common dso_local global i32 0, align 4
@NIX_INTF_TYPE_LBK = common dso_local global i32 0, align 4
@NIX_INTF_TYPE_CGX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NIX_AF_SQ_CONST = common dso_local global i32 0, align 4
@NIX_LSO_FORMAT_IDX_TSOV4 = common dso_local global i32 0, align 4
@NIX_LSO_FORMAT_IDX_TSOV6 = common dso_local global i32 0, align 4
@NIX_AF_CONST1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_mbox_handler_nix_lf_alloc(%struct.rvu* %0, %struct.nix_lf_alloc_req* %1, %struct.nix_lf_alloc_rsp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.nix_lf_alloc_req*, align 8
  %7 = alloca %struct.nix_lf_alloc_rsp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rvu_hwinfo*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.rvu_block*, align 8
  %17 = alloca %struct.rvu_pfvf*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.nix_lf_alloc_req* %1, %struct.nix_lf_alloc_req** %6, align 8
  store %struct.nix_lf_alloc_rsp* %2, %struct.nix_lf_alloc_rsp** %7, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.rvu*, %struct.rvu** %5, align 8
  %22 = getelementptr inbounds %struct.rvu, %struct.rvu* %21, i32 0, i32 1
  %23 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %22, align 8
  store %struct.rvu_hwinfo* %23, %struct.rvu_hwinfo** %14, align 8
  %24 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %25 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %15, align 8
  %28 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %29 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %34 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %39 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %32, %3
  %43 = load i32, i32* @NIX_AF_ERR_PARAM, align 4
  store i32 %43, i32* %4, align 4
  br label %621

44:                                               ; preds = %37
  %45 = load %struct.rvu*, %struct.rvu** %5, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %45, i8* %46)
  store %struct.rvu_pfvf* %47, %struct.rvu_pfvf** %17, align 8
  %48 = load %struct.rvu*, %struct.rvu** %5, align 8
  %49 = load i32, i32* @BLKTYPE_NIX, align 4
  %50 = load i8*, i8** %15, align 8
  %51 = call i32 @rvu_get_blkaddr(%struct.rvu* %48, i32 %49, i8* %50)
  store i32 %51, i32* %20, align 4
  %52 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %53 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* %20, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56, %44
  %60 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %60, i32* %4, align 4
  br label %621

61:                                               ; preds = %56
  %62 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %14, align 8
  %63 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %62, i32 0, i32 0
  %64 = load %struct.rvu_block*, %struct.rvu_block** %63, align 8
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %64, i64 %66
  store %struct.rvu_block* %67, %struct.rvu_block** %16, align 8
  %68 = load %struct.rvu*, %struct.rvu** %5, align 8
  %69 = load %struct.rvu_block*, %struct.rvu_block** %16, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = call i32 @rvu_get_lf(%struct.rvu* %68, %struct.rvu_block* %69, i8* %70, i32 0)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i32, i32* @NIX_AF_ERR_AF_LF_INVALID, align 4
  store i32 %75, i32* %4, align 4
  br label %621

76:                                               ; preds = %61
  %77 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %78 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %76
  %82 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %83 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* @RVU_DEFAULT_PF_FUNC, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i8*, i8** %15, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %92 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %81
  %94 = load %struct.rvu*, %struct.rvu** %5, align 8
  %95 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %96 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = load i32, i32* @BLKTYPE_NPA, align 4
  %100 = call i32 @is_pffunc_map_valid(%struct.rvu* %94, i64 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %93
  %103 = load i32, i32* @NIX_AF_INVAL_NPA_PF_FUNC, align 4
  store i32 %103, i32* %4, align 4
  br label %621

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %76
  %106 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %107 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %105
  %111 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %112 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @RVU_DEFAULT_PF_FUNC, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load i8*, i8** %15, align 8
  %118 = ptrtoint i8* %117 to i64
  %119 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %120 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %119, i32 0, i32 4
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %116, %110
  %122 = load %struct.rvu*, %struct.rvu** %5, align 8
  %123 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %124 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @BLKTYPE_SSO, align 4
  %127 = call i32 @is_pffunc_map_valid(%struct.rvu* %122, i64 %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %121
  %130 = load i32, i32* @NIX_AF_INVAL_SSO_PF_FUNC, align 4
  store i32 %130, i32* %4, align 4
  br label %621

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %105
  %133 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %134 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %132
  %138 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %139 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @MAX_RSS_INDIR_TBL_SIZE, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %137
  %144 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %145 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @is_power_of_2(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %143, %137
  %150 = load i32, i32* @NIX_AF_ERR_RSS_SIZE_INVALID, align 4
  store i32 %150, i32* %4, align 4
  br label %621

151:                                              ; preds = %143, %132
  %152 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %153 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %151
  %157 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %158 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %163 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @MAX_RSS_GROUPS, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %161, %156
  %168 = load i32, i32* @NIX_AF_ERR_RSS_GRPS_INVALID, align 4
  store i32 %168, i32* %4, align 4
  br label %621

169:                                              ; preds = %161, %151
  %170 = load %struct.rvu*, %struct.rvu** %5, align 8
  %171 = load %struct.rvu_block*, %struct.rvu_block** %16, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @rvu_lf_reset(%struct.rvu* %170, %struct.rvu_block* %171, i32 %172)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %169
  %177 = load %struct.rvu*, %struct.rvu** %5, align 8
  %178 = getelementptr inbounds %struct.rvu, %struct.rvu* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.rvu_block*, %struct.rvu_block** %16, align 8
  %181 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @BLKADDR_NIX0, align 8
  %184 = sub nsw i64 %182, %183
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @dev_err(i32 %179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %184, i32 %185)
  %187 = load i32, i32* @NIX_AF_ERR_LF_RESET, align 4
  store i32 %187, i32* %4, align 4
  br label %621

188:                                              ; preds = %169
  %189 = load %struct.rvu*, %struct.rvu** %5, align 8
  %190 = load i32, i32* %20, align 4
  %191 = load i32, i32* @NIX_AF_CONST3, align 4
  %192 = call i32 @rvu_read64(%struct.rvu* %189, i32 %190, i32 %191)
  store i32 %192, i32* %19, align 4
  %193 = load i32, i32* %19, align 4
  %194 = ashr i32 %193, 4
  %195 = and i32 %194, 15
  %196 = zext i32 %195 to i64
  %197 = shl i64 1, %196
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %10, align 4
  %199 = load %struct.rvu*, %struct.rvu** %5, align 8
  %200 = getelementptr inbounds %struct.rvu, %struct.rvu* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %203 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %202, i32 0, i32 11
  %204 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %205 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @qmem_alloc(i32 %201, %struct.TYPE_4__** %203, i32 %206, i32 %207)
  store i32 %208, i32* %12, align 4
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %188
  br label %543

212:                                              ; preds = %188
  %213 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %214 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @GFP_KERNEL, align 4
  %217 = call i8* @kcalloc(i32 %215, i32 8, i32 %216)
  %218 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %219 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %218, i32 0, i32 12
  store i8* %217, i8** %219, align 8
  %220 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %221 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %220, i32 0, i32 12
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %212
  br label %543

225:                                              ; preds = %212
  %226 = load %struct.rvu*, %struct.rvu** %5, align 8
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @NIX_AF_LFX_RQS_BASE(i32 %228)
  %230 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %231 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %230, i32 0, i32 11
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i32 @rvu_write64(%struct.rvu* %226, i32 %227, i32 %229, i32 %235)
  %237 = call i32 @BIT_ULL(i32 36)
  %238 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %239 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sub nsw i32 %240, 1
  %242 = or i32 %237, %241
  store i32 %242, i32* %18, align 4
  %243 = load %struct.rvu*, %struct.rvu** %5, align 8
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* %8, align 4
  %246 = call i32 @NIX_AF_LFX_RQS_CFG(i32 %245)
  %247 = load i32, i32* %18, align 4
  %248 = call i32 @rvu_write64(%struct.rvu* %243, i32 %244, i32 %246, i32 %247)
  %249 = load i32, i32* %19, align 4
  %250 = and i32 %249, 15
  %251 = zext i32 %250 to i64
  %252 = shl i64 1, %251
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %10, align 4
  %254 = load %struct.rvu*, %struct.rvu** %5, align 8
  %255 = getelementptr inbounds %struct.rvu, %struct.rvu* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %258 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %257, i32 0, i32 9
  %259 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %260 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @qmem_alloc(i32 %256, %struct.TYPE_4__** %258, i32 %261, i32 %262)
  store i32 %263, i32* %12, align 4
  %264 = load i32, i32* %12, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %225
  br label %543

267:                                              ; preds = %225
  %268 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %269 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @GFP_KERNEL, align 4
  %272 = call i8* @kcalloc(i32 %270, i32 8, i32 %271)
  %273 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %274 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %273, i32 0, i32 10
  store i8* %272, i8** %274, align 8
  %275 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %276 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %275, i32 0, i32 10
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %267
  br label %543

280:                                              ; preds = %267
  %281 = load %struct.rvu*, %struct.rvu** %5, align 8
  %282 = load i32, i32* %20, align 4
  %283 = load i32, i32* %8, align 4
  %284 = call i32 @NIX_AF_LFX_SQS_BASE(i32 %283)
  %285 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %286 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %285, i32 0, i32 9
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = trunc i64 %289 to i32
  %291 = call i32 @rvu_write64(%struct.rvu* %281, i32 %282, i32 %284, i32 %290)
  %292 = call i32 @BIT_ULL(i32 36)
  %293 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %294 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = sub nsw i32 %295, 1
  %297 = or i32 %292, %296
  store i32 %297, i32* %18, align 4
  %298 = load %struct.rvu*, %struct.rvu** %5, align 8
  %299 = load i32, i32* %20, align 4
  %300 = load i32, i32* %8, align 4
  %301 = call i32 @NIX_AF_LFX_SQS_CFG(i32 %300)
  %302 = load i32, i32* %18, align 4
  %303 = call i32 @rvu_write64(%struct.rvu* %298, i32 %299, i32 %301, i32 %302)
  %304 = load i32, i32* %19, align 4
  %305 = ashr i32 %304, 8
  %306 = and i32 %305, 15
  %307 = zext i32 %306 to i64
  %308 = shl i64 1, %307
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %10, align 4
  %310 = load %struct.rvu*, %struct.rvu** %5, align 8
  %311 = getelementptr inbounds %struct.rvu, %struct.rvu* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %314 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %313, i32 0, i32 7
  %315 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %316 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* %10, align 4
  %319 = call i32 @qmem_alloc(i32 %312, %struct.TYPE_4__** %314, i32 %317, i32 %318)
  store i32 %319, i32* %12, align 4
  %320 = load i32, i32* %12, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %280
  br label %543

323:                                              ; preds = %280
  %324 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %325 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @GFP_KERNEL, align 4
  %328 = call i8* @kcalloc(i32 %326, i32 8, i32 %327)
  %329 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %330 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %329, i32 0, i32 8
  store i8* %328, i8** %330, align 8
  %331 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %332 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %331, i32 0, i32 8
  %333 = load i8*, i8** %332, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %336, label %335

335:                                              ; preds = %323
  br label %543

336:                                              ; preds = %323
  %337 = load %struct.rvu*, %struct.rvu** %5, align 8
  %338 = load i32, i32* %20, align 4
  %339 = load i32, i32* %8, align 4
  %340 = call i32 @NIX_AF_LFX_CQS_BASE(i32 %339)
  %341 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %342 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %341, i32 0, i32 7
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = trunc i64 %345 to i32
  %347 = call i32 @rvu_write64(%struct.rvu* %337, i32 %338, i32 %340, i32 %346)
  %348 = call i32 @BIT_ULL(i32 36)
  %349 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %350 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = sub nsw i32 %351, 1
  %353 = or i32 %348, %352
  store i32 %353, i32* %18, align 4
  %354 = load %struct.rvu*, %struct.rvu** %5, align 8
  %355 = load i32, i32* %20, align 4
  %356 = load i32, i32* %8, align 4
  %357 = call i32 @NIX_AF_LFX_CQS_CFG(i32 %356)
  %358 = load i32, i32* %18, align 4
  %359 = call i32 @rvu_write64(%struct.rvu* %354, i32 %355, i32 %357, i32 %358)
  %360 = load i32, i32* %19, align 4
  %361 = ashr i32 %360, 12
  %362 = and i32 %361, 15
  %363 = zext i32 %362 to i64
  %364 = shl i64 1, %363
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %10, align 4
  %366 = load %struct.rvu*, %struct.rvu** %5, align 8
  %367 = load i32, i32* %20, align 4
  %368 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %369 = load i32, i32* %8, align 4
  %370 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %371 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %370, i32 0, i32 8
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %374 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %373, i32 0, i32 7
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* %10, align 4
  %377 = call i32 @nixlf_rss_ctx_init(%struct.rvu* %366, i32 %367, %struct.rvu_pfvf* %368, i32 %369, i32 %372, i32 %375, i32 %376)
  store i32 %377, i32* %12, align 4
  %378 = load i32, i32* %12, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %336
  br label %543

381:                                              ; preds = %336
  %382 = load %struct.rvu*, %struct.rvu** %5, align 8
  %383 = load i32, i32* %20, align 4
  %384 = load i32, i32* @NIX_AF_CONST2, align 4
  %385 = call i32 @rvu_read64(%struct.rvu* %382, i32 %383, i32 %384)
  store i32 %385, i32* %18, align 4
  %386 = load i32, i32* %18, align 4
  %387 = ashr i32 %386, 24
  %388 = and i32 %387, 4095
  store i32 %388, i32* %9, align 4
  %389 = load i32, i32* %19, align 4
  %390 = ashr i32 %389, 24
  %391 = and i32 %390, 15
  %392 = zext i32 %391 to i64
  %393 = shl i64 1, %392
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %10, align 4
  %395 = load %struct.rvu*, %struct.rvu** %5, align 8
  %396 = getelementptr inbounds %struct.rvu, %struct.rvu* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %399 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %398, i32 0, i32 6
  %400 = load i32, i32* %9, align 4
  %401 = load i32, i32* %10, align 4
  %402 = call i32 @qmem_alloc(i32 %397, %struct.TYPE_4__** %399, i32 %400, i32 %401)
  store i32 %402, i32* %12, align 4
  %403 = load i32, i32* %12, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %381
  br label %543

406:                                              ; preds = %381
  %407 = load %struct.rvu*, %struct.rvu** %5, align 8
  %408 = load i32, i32* %20, align 4
  %409 = load i32, i32* %8, align 4
  %410 = call i32 @NIX_AF_LFX_CINTS_BASE(i32 %409)
  %411 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %412 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %411, i32 0, i32 6
  %413 = load %struct.TYPE_4__*, %struct.TYPE_4__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = trunc i64 %415 to i32
  %417 = call i32 @rvu_write64(%struct.rvu* %407, i32 %408, i32 %410, i32 %416)
  %418 = load %struct.rvu*, %struct.rvu** %5, align 8
  %419 = load i32, i32* %20, align 4
  %420 = load i32, i32* %8, align 4
  %421 = call i32 @NIX_AF_LFX_CINTS_CFG(i32 %420)
  %422 = call i32 @BIT_ULL(i32 36)
  %423 = call i32 @rvu_write64(%struct.rvu* %418, i32 %419, i32 %421, i32 %422)
  %424 = load %struct.rvu*, %struct.rvu** %5, align 8
  %425 = load i32, i32* %20, align 4
  %426 = load i32, i32* @NIX_AF_CONST2, align 4
  %427 = call i32 @rvu_read64(%struct.rvu* %424, i32 %425, i32 %426)
  store i32 %427, i32* %18, align 4
  %428 = load i32, i32* %18, align 4
  %429 = ashr i32 %428, 12
  %430 = and i32 %429, 4095
  store i32 %430, i32* %9, align 4
  %431 = load i32, i32* %19, align 4
  %432 = ashr i32 %431, 20
  %433 = and i32 %432, 15
  %434 = zext i32 %433 to i64
  %435 = shl i64 1, %434
  %436 = trunc i64 %435 to i32
  store i32 %436, i32* %10, align 4
  %437 = load %struct.rvu*, %struct.rvu** %5, align 8
  %438 = getelementptr inbounds %struct.rvu, %struct.rvu* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %441 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %440, i32 0, i32 5
  %442 = load i32, i32* %9, align 4
  %443 = load i32, i32* %10, align 4
  %444 = call i32 @qmem_alloc(i32 %439, %struct.TYPE_4__** %441, i32 %442, i32 %443)
  store i32 %444, i32* %12, align 4
  %445 = load i32, i32* %12, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %406
  br label %543

448:                                              ; preds = %406
  %449 = load %struct.rvu*, %struct.rvu** %5, align 8
  %450 = load i32, i32* %20, align 4
  %451 = load i32, i32* %8, align 4
  %452 = call i32 @NIX_AF_LFX_QINTS_BASE(i32 %451)
  %453 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %454 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %453, i32 0, i32 5
  %455 = load %struct.TYPE_4__*, %struct.TYPE_4__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = trunc i64 %457 to i32
  %459 = call i32 @rvu_write64(%struct.rvu* %449, i32 %450, i32 %452, i32 %458)
  %460 = load %struct.rvu*, %struct.rvu** %5, align 8
  %461 = load i32, i32* %20, align 4
  %462 = load i32, i32* %8, align 4
  %463 = call i32 @NIX_AF_LFX_QINTS_CFG(i32 %462)
  %464 = call i32 @BIT_ULL(i32 36)
  %465 = call i32 @rvu_write64(%struct.rvu* %460, i32 %461, i32 %463, i32 %464)
  store i32 -2130671448, i32* %18, align 4
  %466 = load %struct.rvu*, %struct.rvu** %5, align 8
  %467 = load i32, i32* %20, align 4
  %468 = load i32, i32* %8, align 4
  %469 = call i32 @NIX_AF_LFX_TX_CFG(i32 %468)
  %470 = load i32, i32* %18, align 4
  %471 = call i32 @rvu_write64(%struct.rvu* %466, i32 %467, i32 %469, i32 %470)
  %472 = load %struct.rvu*, %struct.rvu** %5, align 8
  %473 = load i32, i32* %20, align 4
  %474 = load i32, i32* %8, align 4
  %475 = call i32 @NIX_AF_LFX_TX_CFG2(i32 %474)
  %476 = call i32 @BIT_ULL(i32 0)
  %477 = call i32 @rvu_write64(%struct.rvu* %472, i32 %473, i32 %475, i32 %476)
  %478 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %479 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %478, i32 0, i32 3
  %480 = load i32, i32* %479, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %486

482:                                              ; preds = %448
  %483 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %484 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 4
  store i32 %485, i32* %18, align 4
  br label %486

486:                                              ; preds = %482, %448
  %487 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %488 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %487, i32 0, i32 4
  %489 = load i64, i64* %488, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %499

491:                                              ; preds = %486
  %492 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %493 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %492, i32 0, i32 4
  %494 = load i64, i64* %493, align 8
  %495 = trunc i64 %494 to i32
  %496 = shl i32 %495, 16
  %497 = load i32, i32* %18, align 4
  %498 = or i32 %497, %496
  store i32 %498, i32* %18, align 4
  br label %499

499:                                              ; preds = %491, %486
  %500 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %501 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %500, i32 0, i32 6
  %502 = load i64, i64* %501, align 8
  %503 = trunc i64 %502 to i32
  %504 = shl i32 %503, 33
  %505 = load i32, i32* %18, align 4
  %506 = or i32 %505, %504
  store i32 %506, i32* %18, align 4
  %507 = load %struct.rvu*, %struct.rvu** %5, align 8
  %508 = load i32, i32* %20, align 4
  %509 = load i32, i32* %8, align 4
  %510 = call i32 @NIX_AF_LFX_CFG(i32 %509)
  %511 = load i32, i32* %18, align 4
  %512 = call i32 @rvu_write64(%struct.rvu* %507, i32 %508, i32 %510, i32 %511)
  %513 = load %struct.rvu*, %struct.rvu** %5, align 8
  %514 = load i32, i32* %20, align 4
  %515 = load i32, i32* %8, align 4
  %516 = call i32 @NIX_AF_LFX_RX_CFG(i32 %515)
  %517 = load %struct.nix_lf_alloc_req*, %struct.nix_lf_alloc_req** %6, align 8
  %518 = getelementptr inbounds %struct.nix_lf_alloc_req, %struct.nix_lf_alloc_req* %517, i32 0, i32 5
  %519 = load i32, i32* %518, align 8
  %520 = call i32 @rvu_write64(%struct.rvu* %513, i32 %514, i32 %516, i32 %519)
  %521 = load i8*, i8** %15, align 8
  %522 = call i64 @is_afvf(i8* %521)
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %526

524:                                              ; preds = %499
  %525 = load i32, i32* @NIX_INTF_TYPE_LBK, align 4
  br label %528

526:                                              ; preds = %499
  %527 = load i32, i32* @NIX_INTF_TYPE_CGX, align 4
  br label %528

528:                                              ; preds = %526, %524
  %529 = phi i32 [ %525, %524 ], [ %527, %526 ]
  store i32 %529, i32* %11, align 4
  %530 = load %struct.rvu*, %struct.rvu** %5, align 8
  %531 = load i8*, i8** %15, align 8
  %532 = load i32, i32* %11, align 4
  %533 = load i32, i32* %8, align 4
  %534 = call i32 @nix_interface_init(%struct.rvu* %530, i8* %531, i32 %532, i32 %533)
  store i32 %534, i32* %12, align 4
  %535 = load i32, i32* %12, align 4
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %538

537:                                              ; preds = %528
  br label %543

538:                                              ; preds = %528
  %539 = load %struct.rvu*, %struct.rvu** %5, align 8
  %540 = load i8*, i8** %15, align 8
  %541 = load i32, i32* %8, align 4
  %542 = call i32 @rvu_npc_disable_default_entries(%struct.rvu* %539, i8* %540, i32 %541)
  br label %549

543:                                              ; preds = %537, %447, %405, %380, %335, %322, %279, %266, %224, %211
  %544 = load %struct.rvu*, %struct.rvu** %5, align 8
  %545 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %546 = call i32 @nix_ctx_free(%struct.rvu* %544, %struct.rvu_pfvf* %545)
  %547 = load i32, i32* @ENOMEM, align 4
  %548 = sub nsw i32 0, %547
  store i32 %548, i32* %13, align 4
  br label %549

549:                                              ; preds = %543, %538
  %550 = load %struct.nix_lf_alloc_rsp*, %struct.nix_lf_alloc_rsp** %7, align 8
  %551 = getelementptr inbounds %struct.nix_lf_alloc_rsp, %struct.nix_lf_alloc_rsp* %550, i32 0, i32 11
  %552 = load i32, i32* %551, align 4
  %553 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %554 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %553, i32 0, i32 4
  %555 = load i32, i32* %554, align 8
  %556 = call i32 @ether_addr_copy(i32 %552, i32 %555)
  %557 = load %struct.rvu*, %struct.rvu** %5, align 8
  %558 = load i32, i32* %20, align 4
  %559 = load i32, i32* @NIX_AF_SQ_CONST, align 4
  %560 = call i32 @rvu_read64(%struct.rvu* %557, i32 %558, i32 %559)
  store i32 %560, i32* %18, align 4
  %561 = load i32, i32* %18, align 4
  %562 = ashr i32 %561, 34
  %563 = and i32 %562, 65535
  %564 = load %struct.nix_lf_alloc_rsp*, %struct.nix_lf_alloc_rsp** %7, align 8
  %565 = getelementptr inbounds %struct.nix_lf_alloc_rsp, %struct.nix_lf_alloc_rsp* %564, i32 0, i32 0
  store i32 %563, i32* %565, align 4
  %566 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %567 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %566, i32 0, i32 3
  %568 = load i32, i32* %567, align 4
  %569 = load %struct.nix_lf_alloc_rsp*, %struct.nix_lf_alloc_rsp** %7, align 8
  %570 = getelementptr inbounds %struct.nix_lf_alloc_rsp, %struct.nix_lf_alloc_rsp* %569, i32 0, i32 10
  store i32 %568, i32* %570, align 4
  %571 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %572 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %571, i32 0, i32 2
  %573 = load i32, i32* %572, align 8
  %574 = load %struct.nix_lf_alloc_rsp*, %struct.nix_lf_alloc_rsp** %7, align 8
  %575 = getelementptr inbounds %struct.nix_lf_alloc_rsp, %struct.nix_lf_alloc_rsp* %574, i32 0, i32 9
  store i32 %573, i32* %575, align 4
  %576 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %577 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 4
  %579 = load %struct.nix_lf_alloc_rsp*, %struct.nix_lf_alloc_rsp** %7, align 8
  %580 = getelementptr inbounds %struct.nix_lf_alloc_rsp, %struct.nix_lf_alloc_rsp* %579, i32 0, i32 8
  store i32 %578, i32* %580, align 4
  %581 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %17, align 8
  %582 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = load %struct.nix_lf_alloc_rsp*, %struct.nix_lf_alloc_rsp** %7, align 8
  %585 = getelementptr inbounds %struct.nix_lf_alloc_rsp, %struct.nix_lf_alloc_rsp* %584, i32 0, i32 7
  store i32 %583, i32* %585, align 4
  %586 = load i32, i32* @NIX_LSO_FORMAT_IDX_TSOV4, align 4
  %587 = load %struct.nix_lf_alloc_rsp*, %struct.nix_lf_alloc_rsp** %7, align 8
  %588 = getelementptr inbounds %struct.nix_lf_alloc_rsp, %struct.nix_lf_alloc_rsp* %587, i32 0, i32 6
  store i32 %586, i32* %588, align 4
  %589 = load i32, i32* @NIX_LSO_FORMAT_IDX_TSOV6, align 4
  %590 = load %struct.nix_lf_alloc_rsp*, %struct.nix_lf_alloc_rsp** %7, align 8
  %591 = getelementptr inbounds %struct.nix_lf_alloc_rsp, %struct.nix_lf_alloc_rsp* %590, i32 0, i32 5
  store i32 %589, i32* %591, align 4
  %592 = load %struct.rvu*, %struct.rvu** %5, align 8
  %593 = load i32, i32* %20, align 4
  %594 = load i32, i32* @NIX_AF_CONST1, align 4
  %595 = call i32 @rvu_read64(%struct.rvu* %592, i32 %593, i32 %594)
  store i32 %595, i32* %18, align 4
  %596 = load i32, i32* %18, align 4
  %597 = ashr i32 %596, 32
  %598 = and i32 %597, 255
  %599 = load %struct.nix_lf_alloc_rsp*, %struct.nix_lf_alloc_rsp** %7, align 8
  %600 = getelementptr inbounds %struct.nix_lf_alloc_rsp, %struct.nix_lf_alloc_rsp* %599, i32 0, i32 1
  store i32 %598, i32* %600, align 4
  %601 = load i32, i32* %18, align 4
  %602 = ashr i32 %601, 24
  %603 = and i32 %602, 255
  %604 = load %struct.nix_lf_alloc_rsp*, %struct.nix_lf_alloc_rsp** %7, align 8
  %605 = getelementptr inbounds %struct.nix_lf_alloc_rsp, %struct.nix_lf_alloc_rsp* %604, i32 0, i32 2
  store i32 %603, i32* %605, align 4
  %606 = load %struct.rvu*, %struct.rvu** %5, align 8
  %607 = load i32, i32* %20, align 4
  %608 = load i32, i32* @NIX_AF_CONST2, align 4
  %609 = call i32 @rvu_read64(%struct.rvu* %606, i32 %607, i32 %608)
  store i32 %609, i32* %18, align 4
  %610 = load i32, i32* %18, align 4
  %611 = ashr i32 %610, 12
  %612 = and i32 %611, 4095
  %613 = load %struct.nix_lf_alloc_rsp*, %struct.nix_lf_alloc_rsp** %7, align 8
  %614 = getelementptr inbounds %struct.nix_lf_alloc_rsp, %struct.nix_lf_alloc_rsp* %613, i32 0, i32 3
  store i32 %612, i32* %614, align 4
  %615 = load i32, i32* %18, align 4
  %616 = ashr i32 %615, 24
  %617 = and i32 %616, 4095
  %618 = load %struct.nix_lf_alloc_rsp*, %struct.nix_lf_alloc_rsp** %7, align 8
  %619 = getelementptr inbounds %struct.nix_lf_alloc_rsp, %struct.nix_lf_alloc_rsp* %618, i32 0, i32 4
  store i32 %617, i32* %619, align 4
  %620 = load i32, i32* %13, align 4
  store i32 %620, i32* %4, align 4
  br label %621

621:                                              ; preds = %549, %176, %167, %149, %129, %102, %74, %59, %42
  %622 = load i32, i32* %4, align 4
  ret i32 %622
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i8*) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i8*) #1

declare dso_local i32 @rvu_get_lf(%struct.rvu*, %struct.rvu_block*, i8*, i32) #1

declare dso_local i32 @is_pffunc_map_valid(%struct.rvu*, i64, i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @rvu_lf_reset(%struct.rvu*, %struct.rvu_block*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @qmem_alloc(i32, %struct.TYPE_4__**, i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @NIX_AF_LFX_RQS_BASE(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @NIX_AF_LFX_RQS_CFG(i32) #1

declare dso_local i32 @NIX_AF_LFX_SQS_BASE(i32) #1

declare dso_local i32 @NIX_AF_LFX_SQS_CFG(i32) #1

declare dso_local i32 @NIX_AF_LFX_CQS_BASE(i32) #1

declare dso_local i32 @NIX_AF_LFX_CQS_CFG(i32) #1

declare dso_local i32 @nixlf_rss_ctx_init(%struct.rvu*, i32, %struct.rvu_pfvf*, i32, i32, i32, i32) #1

declare dso_local i32 @NIX_AF_LFX_CINTS_BASE(i32) #1

declare dso_local i32 @NIX_AF_LFX_CINTS_CFG(i32) #1

declare dso_local i32 @NIX_AF_LFX_QINTS_BASE(i32) #1

declare dso_local i32 @NIX_AF_LFX_QINTS_CFG(i32) #1

declare dso_local i32 @NIX_AF_LFX_TX_CFG(i32) #1

declare dso_local i32 @NIX_AF_LFX_TX_CFG2(i32) #1

declare dso_local i32 @NIX_AF_LFX_CFG(i32) #1

declare dso_local i32 @NIX_AF_LFX_RX_CFG(i32) #1

declare dso_local i64 @is_afvf(i8*) #1

declare dso_local i32 @nix_interface_init(%struct.rvu*, i8*, i32, i32) #1

declare dso_local i32 @rvu_npc_disable_default_entries(%struct.rvu*, i8*, i32) #1

declare dso_local i32 @nix_ctx_free(%struct.rvu*, %struct.rvu_pfvf*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
