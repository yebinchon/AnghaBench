; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_check_rsrc_availability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_check_rsrc_availability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.TYPE_3__*, %struct.rvu_hwinfo* }
%struct.TYPE_3__ = type { i32 }
%struct.rvu_hwinfo = type { %struct.rvu_block* }
%struct.rvu_block = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rsrc_attach = type { i32, i32, i32, i32, i64, i64 }
%struct.rvu_pfvf = type { i32 }

@BLKTYPE_NPA = common dso_local global i32 0, align 4
@BLKADDR_NPA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Func 0x%x: Invalid req, already has NPA\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BLKTYPE_NIX = common dso_local global i32 0, align 4
@BLKADDR_NIX0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Func 0x%x: Invalid req, already has NIX\0A\00", align 1
@BLKADDR_SSO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Func 0x%x: Invalid SSO req, %d > max %d\0A\00", align 1
@BLKADDR_SSOW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Func 0x%x: Invalid SSOW req, %d > max %d\0A\00", align 1
@BLKADDR_TIM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Func 0x%x: Invalid TIMLF req, %d > max %d\0A\00", align 1
@BLKADDR_CPT0 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"Func 0x%x: Invalid CPTLF req, %d > max %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Request for %s failed\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, %struct.rsrc_attach*, i32)* @rvu_check_rsrc_availability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_check_rsrc_availability(%struct.rvu* %0, %struct.rsrc_attach* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.rsrc_attach*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rvu_pfvf*, align 8
  %9 = alloca %struct.rvu_hwinfo*, align 8
  %10 = alloca %struct.rvu_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.rsrc_attach* %1, %struct.rsrc_attach** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.rvu*, %struct.rvu** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %13, i32 %14)
  store %struct.rvu_pfvf* %15, %struct.rvu_pfvf** %8, align 8
  %16 = load %struct.rvu*, %struct.rvu** %5, align 8
  %17 = getelementptr inbounds %struct.rvu, %struct.rvu* %16, i32 0, i32 2
  %18 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %17, align 8
  store %struct.rvu_hwinfo* %18, %struct.rvu_hwinfo** %9, align 8
  %19 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %20 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %3
  %24 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %25 = load i32, i32* @BLKTYPE_NPA, align 4
  %26 = call i32 @rvu_get_rsrc_mapcount(%struct.rvu_pfvf* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %9, align 8
  %30 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %29, i32 0, i32 0
  %31 = load %struct.rvu_block*, %struct.rvu_block** %30, align 8
  %32 = load i64, i64* @BLKADDR_NPA, align 8
  %33 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %31, i64 %32
  store %struct.rvu_block* %33, %struct.rvu_block** %10, align 8
  %34 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %35 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %34, i32 0, i32 1
  %36 = call i32 @rvu_rsrc_free_count(%struct.TYPE_4__* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  br label %331

40:                                               ; preds = %28
  br label %56

41:                                               ; preds = %23, %3
  %42 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %43 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.rvu*, %struct.rvu** %5, align 8
  %48 = getelementptr inbounds %struct.rvu, %struct.rvu* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %341

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %40
  %57 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %58 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %63 = load i32, i32* @BLKTYPE_NIX, align 4
  %64 = call i32 @rvu_get_rsrc_mapcount(%struct.rvu_pfvf* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %61
  %67 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %9, align 8
  %68 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %67, i32 0, i32 0
  %69 = load %struct.rvu_block*, %struct.rvu_block** %68, align 8
  %70 = load i64, i64* @BLKADDR_NIX0, align 8
  %71 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %69, i64 %70
  store %struct.rvu_block* %71, %struct.rvu_block** %10, align 8
  %72 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %73 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %72, i32 0, i32 1
  %74 = call i32 @rvu_rsrc_free_count(%struct.TYPE_4__* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %66
  br label %331

78:                                               ; preds = %66
  br label %94

79:                                               ; preds = %61, %56
  %80 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %81 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.rvu*, %struct.rvu** %5, align 8
  %86 = getelementptr inbounds %struct.rvu, %struct.rvu* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %7, align 4
  %90 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %341

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %78
  %95 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %96 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %153

99:                                               ; preds = %94
  %100 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %9, align 8
  %101 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %100, i32 0, i32 0
  %102 = load %struct.rvu_block*, %struct.rvu_block** %101, align 8
  %103 = load i64, i64* @BLKADDR_SSO, align 8
  %104 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %102, i64 %103
  store %struct.rvu_block* %104, %struct.rvu_block** %10, align 8
  %105 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %106 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %109 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %107, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %99
  %114 = load %struct.rvu*, %struct.rvu** %5, align 8
  %115 = getelementptr inbounds %struct.rvu, %struct.rvu* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %120 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %123 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %121, i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %341

129:                                              ; preds = %99
  %130 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %131 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %132 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @rvu_get_rsrc_mapcount(%struct.rvu_pfvf* %130, i32 %133)
  store i32 %134, i32* %12, align 4
  %135 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %136 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %135, i32 0, i32 1
  %137 = call i32 @rvu_rsrc_free_count(%struct.TYPE_4__* %136)
  store i32 %137, i32* %11, align 4
  %138 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %139 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %129
  %144 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %145 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i32, i32* %11, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %331

152:                                              ; preds = %143, %129
  br label %153

153:                                              ; preds = %152, %94
  %154 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %155 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %212

158:                                              ; preds = %153
  %159 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %9, align 8
  %160 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %159, i32 0, i32 0
  %161 = load %struct.rvu_block*, %struct.rvu_block** %160, align 8
  %162 = load i64, i64* @BLKADDR_SSOW, align 8
  %163 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %161, i64 %162
  store %struct.rvu_block* %163, %struct.rvu_block** %10, align 8
  %164 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %165 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %168 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp sgt i32 %166, %170
  br i1 %171, label %172, label %188

172:                                              ; preds = %158
  %173 = load %struct.rvu*, %struct.rvu** %5, align 8
  %174 = getelementptr inbounds %struct.rvu, %struct.rvu* %173, i32 0, i32 1
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %179 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %182 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %176, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %177, i32 %180, i32 %184)
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %4, align 4
  br label %341

188:                                              ; preds = %158
  %189 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %190 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %191 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @rvu_get_rsrc_mapcount(%struct.rvu_pfvf* %189, i32 %192)
  store i32 %193, i32* %12, align 4
  %194 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %195 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %194, i32 0, i32 1
  %196 = call i32 @rvu_rsrc_free_count(%struct.TYPE_4__* %195)
  store i32 %196, i32* %11, align 4
  %197 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %198 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %12, align 4
  %201 = icmp sgt i32 %199, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %188
  %203 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %204 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %12, align 4
  %207 = sub nsw i32 %205, %206
  %208 = load i32, i32* %11, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %331

211:                                              ; preds = %202, %188
  br label %212

212:                                              ; preds = %211, %153
  %213 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %214 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %271

217:                                              ; preds = %212
  %218 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %9, align 8
  %219 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %218, i32 0, i32 0
  %220 = load %struct.rvu_block*, %struct.rvu_block** %219, align 8
  %221 = load i64, i64* @BLKADDR_TIM, align 8
  %222 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %220, i64 %221
  store %struct.rvu_block* %222, %struct.rvu_block** %10, align 8
  %223 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %224 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %227 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %225, %229
  br i1 %230, label %231, label %247

231:                                              ; preds = %217
  %232 = load %struct.rvu*, %struct.rvu** %5, align 8
  %233 = getelementptr inbounds %struct.rvu, %struct.rvu* %232, i32 0, i32 1
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = load i32, i32* %7, align 4
  %237 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %238 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %241 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %235, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %236, i32 %239, i32 %243)
  %245 = load i32, i32* @EINVAL, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %4, align 4
  br label %341

247:                                              ; preds = %217
  %248 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %249 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %250 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @rvu_get_rsrc_mapcount(%struct.rvu_pfvf* %248, i32 %251)
  store i32 %252, i32* %12, align 4
  %253 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %254 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %253, i32 0, i32 1
  %255 = call i32 @rvu_rsrc_free_count(%struct.TYPE_4__* %254)
  store i32 %255, i32* %11, align 4
  %256 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %257 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %12, align 4
  %260 = icmp sgt i32 %258, %259
  br i1 %260, label %261, label %270

261:                                              ; preds = %247
  %262 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %263 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %12, align 4
  %266 = sub nsw i32 %264, %265
  %267 = load i32, i32* %11, align 4
  %268 = icmp sgt i32 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %261
  br label %331

270:                                              ; preds = %261, %247
  br label %271

271:                                              ; preds = %270, %212
  %272 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %273 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %330

276:                                              ; preds = %271
  %277 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %9, align 8
  %278 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %277, i32 0, i32 0
  %279 = load %struct.rvu_block*, %struct.rvu_block** %278, align 8
  %280 = load i64, i64* @BLKADDR_CPT0, align 8
  %281 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %279, i64 %280
  store %struct.rvu_block* %281, %struct.rvu_block** %10, align 8
  %282 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %283 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %286 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = icmp sgt i32 %284, %288
  br i1 %289, label %290, label %306

290:                                              ; preds = %276
  %291 = load %struct.rvu*, %struct.rvu** %5, align 8
  %292 = getelementptr inbounds %struct.rvu, %struct.rvu* %291, i32 0, i32 1
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  %295 = load i32, i32* %7, align 4
  %296 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %297 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %300 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %294, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %295, i32 %298, i32 %302)
  %304 = load i32, i32* @EINVAL, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %4, align 4
  br label %341

306:                                              ; preds = %276
  %307 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %308 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %309 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @rvu_get_rsrc_mapcount(%struct.rvu_pfvf* %307, i32 %310)
  store i32 %311, i32* %12, align 4
  %312 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %313 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %312, i32 0, i32 1
  %314 = call i32 @rvu_rsrc_free_count(%struct.TYPE_4__* %313)
  store i32 %314, i32* %11, align 4
  %315 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %316 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %12, align 4
  %319 = icmp sgt i32 %317, %318
  br i1 %319, label %320, label %329

320:                                              ; preds = %306
  %321 = load %struct.rsrc_attach*, %struct.rsrc_attach** %6, align 8
  %322 = getelementptr inbounds %struct.rsrc_attach, %struct.rsrc_attach* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %12, align 4
  %325 = sub nsw i32 %323, %324
  %326 = load i32, i32* %11, align 4
  %327 = icmp sgt i32 %325, %326
  br i1 %327, label %328, label %329

328:                                              ; preds = %320
  br label %331

329:                                              ; preds = %320, %306
  br label %330

330:                                              ; preds = %329, %271
  store i32 0, i32* %4, align 4
  br label %341

331:                                              ; preds = %328, %269, %210, %151, %77, %39
  %332 = load %struct.rvu*, %struct.rvu** %5, align 8
  %333 = getelementptr inbounds %struct.rvu, %struct.rvu* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.rvu_block*, %struct.rvu_block** %10, align 8
  %336 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @dev_info(i32 %334, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %337)
  %339 = load i32, i32* @ENOSPC, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %4, align 4
  br label %341

341:                                              ; preds = %331, %330, %290, %231, %172, %113, %84, %46
  %342 = load i32, i32* %4, align 4
  ret i32 %342
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_rsrc_mapcount(%struct.rvu_pfvf*, i32) #1

declare dso_local i32 @rvu_rsrc_free_count(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
