; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_reconstitute_veb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_reconstitute_veb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_veb = type { i64, i64, i32, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i64, i32, %struct.i40e_veb**, %struct.TYPE_2__*, %struct.i40e_vsi** }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_vsi = type { i64, i32, i32 }

@I40E_VSI_FLAG_VEB_OWNER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"missing owner VSI for veb_idx %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"rebuild of veb_idx %d owner VSI failed: %d\0A\00", align 1
@I40E_FLAG_VEB_MODE_ENABLED = common dso_local global i32 0, align 4
@BRIDGE_MODE_VEB = common dso_local global i32 0, align 4
@BRIDGE_MODE_VEPA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"rebuild of vsi_idx %d failed: %d\0A\00", align 1
@I40E_MAX_VEB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_veb*)* @i40e_reconstitute_veb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_reconstitute_veb(%struct.i40e_veb* %0) #0 {
  %2 = alloca %struct.i40e_veb*, align 8
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_vsi*, align 8
  store %struct.i40e_veb* %0, %struct.i40e_veb** %2, align 8
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %3, align 8
  %9 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %9, i32 0, i32 5
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  store %struct.i40e_pf* %11, %struct.i40e_pf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %69, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %20 = icmp ne %struct.i40e_vsi* %19, null
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i1 [ false, %12 ], [ %21, %18 ]
  br i1 %23, label %24, label %72

24:                                               ; preds = %22
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %26 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %25, i32 0, i32 5
  %27 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %27, i64 %29
  %31 = load %struct.i40e_vsi*, %struct.i40e_vsi** %30, align 8
  %32 = icmp ne %struct.i40e_vsi* %31, null
  br i1 %32, label %33, label %68

33:                                               ; preds = %24
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 5
  %36 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %36, i64 %38
  %40 = load %struct.i40e_vsi*, %struct.i40e_vsi** %39, align 8
  %41 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %44 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %33
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %49 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %48, i32 0, i32 5
  %50 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %50, i64 %52
  %54 = load %struct.i40e_vsi*, %struct.i40e_vsi** %53, align 8
  %55 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @I40E_VSI_FLAG_VEB_OWNER, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %47
  %61 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %62 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %61, i32 0, i32 5
  %63 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %63, i64 %65
  %67 = load %struct.i40e_vsi*, %struct.i40e_vsi** %66, align 8
  store %struct.i40e_vsi* %67, %struct.i40e_vsi** %3, align 8
  br label %72

68:                                               ; preds = %47, %33, %24
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %12

72:                                               ; preds = %60, %22
  %73 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %74 = icmp ne %struct.i40e_vsi* %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %72
  %76 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %77 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %76, i32 0, i32 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %81 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %283

87:                                               ; preds = %72
  %88 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %89 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %90 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %89, i32 0, i32 5
  %91 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %90, align 8
  %92 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %93 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %91, i64 %94
  %96 = load %struct.i40e_vsi*, %struct.i40e_vsi** %95, align 8
  %97 = icmp ne %struct.i40e_vsi* %88, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %87
  %99 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %100 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %99, i32 0, i32 5
  %101 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %100, align 8
  %102 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %103 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %101, i64 %104
  %106 = load %struct.i40e_vsi*, %struct.i40e_vsi** %105, align 8
  %107 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %110 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %98, %87
  %112 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %113 = call i32 @i40e_add_vsi(%struct.i40e_vsi* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %118 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %117, i32 0, i32 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %122 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %125)
  br label %283

127:                                              ; preds = %111
  %128 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %129 = call i32 @i40e_vsi_reset_stats(%struct.i40e_vsi* %128)
  %130 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %131 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %132 = call i32 @i40e_add_veb(%struct.i40e_veb* %130, %struct.i40e_vsi* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %283

136:                                              ; preds = %127
  %137 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %138 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @I40E_FLAG_VEB_MODE_ENABLED, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load i32, i32* @BRIDGE_MODE_VEB, align 4
  %145 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %146 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  br label %151

147:                                              ; preds = %136
  %148 = load i32, i32* @BRIDGE_MODE_VEPA, align 4
  %149 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %150 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %147, %143
  %152 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %153 = call i32 @i40e_config_bridge_mode(%struct.i40e_veb* %152)
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %223, %151
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %157 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %226

160:                                              ; preds = %154
  %161 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %162 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %161, i32 0, i32 5
  %163 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %163, i64 %165
  %167 = load %struct.i40e_vsi*, %struct.i40e_vsi** %166, align 8
  %168 = icmp ne %struct.i40e_vsi* %167, null
  br i1 %168, label %169, label %179

169:                                              ; preds = %160
  %170 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %171 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %170, i32 0, i32 5
  %172 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %172, i64 %174
  %176 = load %struct.i40e_vsi*, %struct.i40e_vsi** %175, align 8
  %177 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %178 = icmp eq %struct.i40e_vsi* %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %169, %160
  br label %223

180:                                              ; preds = %169
  %181 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %182 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %181, i32 0, i32 5
  %183 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %183, i64 %185
  %187 = load %struct.i40e_vsi*, %struct.i40e_vsi** %186, align 8
  %188 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %191 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %189, %192
  br i1 %193, label %194, label %222

194:                                              ; preds = %180
  %195 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %196 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %195, i32 0, i32 5
  %197 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %197, i64 %199
  %201 = load %struct.i40e_vsi*, %struct.i40e_vsi** %200, align 8
  store %struct.i40e_vsi* %201, %struct.i40e_vsi** %8, align 8
  %202 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %203 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %206 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  %207 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %208 = call i32 @i40e_add_vsi(%struct.i40e_vsi* %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %194
  %212 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %213 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %212, i32 0, i32 4
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %7, align 4
  %218 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %215, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %216, i32 %217)
  br label %283

219:                                              ; preds = %194
  %220 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %221 = call i32 @i40e_vsi_reset_stats(%struct.i40e_vsi* %220)
  br label %222

222:                                              ; preds = %219, %180
  br label %223

223:                                              ; preds = %222, %179
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %5, align 4
  br label %154

226:                                              ; preds = %154
  store i32 0, i32* %6, align 4
  br label %227

227:                                              ; preds = %279, %226
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* @I40E_MAX_VEB, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %282

231:                                              ; preds = %227
  %232 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %233 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %232, i32 0, i32 3
  %234 = load %struct.i40e_veb**, %struct.i40e_veb*** %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %234, i64 %236
  %238 = load %struct.i40e_veb*, %struct.i40e_veb** %237, align 8
  %239 = icmp ne %struct.i40e_veb* %238, null
  br i1 %239, label %240, label %278

240:                                              ; preds = %231
  %241 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %242 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %241, i32 0, i32 3
  %243 = load %struct.i40e_veb**, %struct.i40e_veb*** %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %243, i64 %245
  %247 = load %struct.i40e_veb*, %struct.i40e_veb** %246, align 8
  %248 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %251 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %249, %252
  br i1 %253, label %254, label %278

254:                                              ; preds = %240
  %255 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %256 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %259 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %258, i32 0, i32 3
  %260 = load %struct.i40e_veb**, %struct.i40e_veb*** %259, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %260, i64 %262
  %264 = load %struct.i40e_veb*, %struct.i40e_veb** %263, align 8
  %265 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %264, i32 0, i32 3
  store i32 %257, i32* %265, align 4
  %266 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %267 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %266, i32 0, i32 3
  %268 = load %struct.i40e_veb**, %struct.i40e_veb*** %267, align 8
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %268, i64 %270
  %272 = load %struct.i40e_veb*, %struct.i40e_veb** %271, align 8
  %273 = call i32 @i40e_reconstitute_veb(%struct.i40e_veb* %272)
  store i32 %273, i32* %7, align 4
  %274 = load i32, i32* %7, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %254
  br label %282

277:                                              ; preds = %254
  br label %278

278:                                              ; preds = %277, %240, %231
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %6, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %6, align 4
  br label %227

282:                                              ; preds = %276, %227
  br label %283

283:                                              ; preds = %282, %211, %135, %116, %75
  %284 = load i32, i32* %7, align 4
  ret i32 %284
}

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @i40e_add_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_reset_stats(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_add_veb(%struct.i40e_veb*, %struct.i40e_vsi*) #1

declare dso_local i32 @i40e_config_bridge_mode(%struct.i40e_veb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
