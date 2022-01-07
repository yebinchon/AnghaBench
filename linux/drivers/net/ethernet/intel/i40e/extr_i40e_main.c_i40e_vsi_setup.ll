; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i64, i32, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_pf = type { i64, i32, i64, i32, i32, i32, %struct.TYPE_8__*, i32, %struct.i40e_vsi**, %struct.i40e_veb** }
%struct.TYPE_8__ = type { i32 }
%struct.i40e_veb = type { i64, i32, i32 }

@I40E_MAX_VEB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"no such uplink_seid %d\0A\00", align 1
@I40E_VSI_FLAG_VEB_OWNER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"New VSI creation error, uplink seid of LAN VSI expected.\0A\00", align 1
@I40E_FLAG_VEB_MODE_ENABLED = common dso_local global i32 0, align 4
@BRIDGE_MODE_VEPA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"couldn't add VEB\0A\00", align 1
@I40E_NO_VEB = common dso_local global i32 0, align 4
@I40E_VSI_SRIOV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"failed to get tracking for %d queues for VSI %d err=%d\0A\00", align 1
@I40E_HW_RSS_AQ_CAPABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i40e_vsi* @i40e_vsi_setup(%struct.i40e_pf* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_vsi*, align 8
  %11 = alloca %struct.i40e_veb*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %10, align 8
  store %struct.i40e_veb* null, %struct.i40e_veb** %11, align 8
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %50, %4
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* @I40E_MAX_VEB, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %22 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %21, i32 0, i32 9
  %23 = load %struct.i40e_veb**, %struct.i40e_veb*** %22, align 8
  %24 = load i32, i32* %14, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %23, i64 %25
  %27 = load %struct.i40e_veb*, %struct.i40e_veb** %26, align 8
  %28 = icmp ne %struct.i40e_veb* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %20
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 9
  %32 = load %struct.i40e_veb**, %struct.i40e_veb*** %31, align 8
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %32, i64 %34
  %36 = load %struct.i40e_veb*, %struct.i40e_veb** %35, align 8
  %37 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %43 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %42, i32 0, i32 9
  %44 = load %struct.i40e_veb**, %struct.i40e_veb*** %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %44, i64 %46
  %48 = load %struct.i40e_veb*, %struct.i40e_veb** %47, align 8
  store %struct.i40e_veb* %48, %struct.i40e_veb** %11, align 8
  br label %53

49:                                               ; preds = %29, %20
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %16

53:                                               ; preds = %41, %16
  %54 = load %struct.i40e_veb*, %struct.i40e_veb** %11, align 8
  %55 = icmp ne %struct.i40e_veb* %54, null
  br i1 %55, label %264, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %59 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %264

62:                                               ; preds = %56
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %99, %62
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %66 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %63
  %70 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %71 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %70, i32 0, i32 8
  %72 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %72, i64 %74
  %76 = load %struct.i40e_vsi*, %struct.i40e_vsi** %75, align 8
  %77 = icmp ne %struct.i40e_vsi* %76, null
  br i1 %77, label %78, label %98

78:                                               ; preds = %69
  %79 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %80 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %79, i32 0, i32 8
  %81 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %81, i64 %83
  %85 = load %struct.i40e_vsi*, %struct.i40e_vsi** %84, align 8
  %86 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %78
  %91 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %92 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %91, i32 0, i32 8
  %93 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %93, i64 %95
  %97 = load %struct.i40e_vsi*, %struct.i40e_vsi** %96, align 8
  store %struct.i40e_vsi* %97, %struct.i40e_vsi** %10, align 8
  br label %102

98:                                               ; preds = %78, %69
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %63

102:                                              ; preds = %90, %63
  %103 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %104 = icmp ne %struct.i40e_vsi* %103, null
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %107 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %106, i32 0, i32 6
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %8, align 8
  %111 = call i32 (i32*, i8*, ...) @dev_info(i32* %109, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %110)
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %5, align 8
  br label %453

112:                                              ; preds = %102
  %113 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %114 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %117 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %112
  %121 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %122 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %123 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %126 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %129 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %128, i32 0, i32 12
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call %struct.i40e_veb* @i40e_veb_setup(%struct.i40e_pf* %121, i32 0, i64 %124, i64 %127, i32 %131)
  store %struct.i40e_veb* %132, %struct.i40e_veb** %11, align 8
  br label %154

133:                                              ; preds = %112
  %134 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %135 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @I40E_VSI_FLAG_VEB_OWNER, align 4
  %138 = and i32 %136, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %133
  %141 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %142 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %143 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %146 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %149 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %148, i32 0, i32 12
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call %struct.i40e_veb* @i40e_veb_setup(%struct.i40e_pf* %141, i32 0, i64 %144, i64 %147, i32 %151)
  store %struct.i40e_veb* %152, %struct.i40e_veb** %11, align 8
  br label %153

153:                                              ; preds = %140, %133
  br label %154

154:                                              ; preds = %153, %120
  %155 = load %struct.i40e_veb*, %struct.i40e_veb** %11, align 8
  %156 = icmp ne %struct.i40e_veb* %155, null
  br i1 %156, label %157, label %200

157:                                              ; preds = %154
  %158 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %159 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %162 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %161, i32 0, i32 8
  %163 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %162, align 8
  %164 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %165 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %163, i64 %166
  %168 = load %struct.i40e_vsi*, %struct.i40e_vsi** %167, align 8
  %169 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %160, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %157
  %173 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %174 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %173, i32 0, i32 11
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = call i32 (i32*, i8*, ...) @dev_info(i32* %178, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %5, align 8
  br label %453

180:                                              ; preds = %157
  %181 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %182 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @I40E_FLAG_VEB_MODE_ENABLED, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %197, label %187

187:                                              ; preds = %180
  %188 = load i32, i32* @BRIDGE_MODE_VEPA, align 4
  %189 = load %struct.i40e_veb*, %struct.i40e_veb** %11, align 8
  %190 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @I40E_FLAG_VEB_MODE_ENABLED, align 4
  %192 = xor i32 %191, -1
  %193 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %194 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %187, %180
  %198 = load %struct.i40e_veb*, %struct.i40e_veb** %11, align 8
  %199 = call i32 @i40e_config_bridge_mode(%struct.i40e_veb* %198)
  br label %200

200:                                              ; preds = %197, %154
  store i32 0, i32* %14, align 4
  br label %201

201:                                              ; preds = %243, %200
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* @I40E_MAX_VEB, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = load %struct.i40e_veb*, %struct.i40e_veb** %11, align 8
  %207 = icmp ne %struct.i40e_veb* %206, null
  %208 = xor i1 %207, true
  br label %209

209:                                              ; preds = %205, %201
  %210 = phi i1 [ false, %201 ], [ %208, %205 ]
  br i1 %210, label %211, label %246

211:                                              ; preds = %209
  %212 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %213 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %212, i32 0, i32 9
  %214 = load %struct.i40e_veb**, %struct.i40e_veb*** %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %214, i64 %216
  %218 = load %struct.i40e_veb*, %struct.i40e_veb** %217, align 8
  %219 = icmp ne %struct.i40e_veb* %218, null
  br i1 %219, label %220, label %242

220:                                              ; preds = %211
  %221 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %222 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %221, i32 0, i32 9
  %223 = load %struct.i40e_veb**, %struct.i40e_veb*** %222, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %223, i64 %225
  %227 = load %struct.i40e_veb*, %struct.i40e_veb** %226, align 8
  %228 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %231 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %229, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %220
  %235 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %236 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %235, i32 0, i32 9
  %237 = load %struct.i40e_veb**, %struct.i40e_veb*** %236, align 8
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %237, i64 %239
  %241 = load %struct.i40e_veb*, %struct.i40e_veb** %240, align 8
  store %struct.i40e_veb* %241, %struct.i40e_veb** %11, align 8
  br label %242

242:                                              ; preds = %234, %220, %211
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %14, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %14, align 4
  br label %201

246:                                              ; preds = %209
  %247 = load %struct.i40e_veb*, %struct.i40e_veb** %11, align 8
  %248 = icmp ne %struct.i40e_veb* %247, null
  br i1 %248, label %255, label %249

249:                                              ; preds = %246
  %250 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %251 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %250, i32 0, i32 6
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = call i32 (i32*, i8*, ...) @dev_info(i32* %253, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %5, align 8
  br label %453

255:                                              ; preds = %246
  %256 = load i32, i32* @I40E_VSI_FLAG_VEB_OWNER, align 4
  %257 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %258 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  %261 = load %struct.i40e_veb*, %struct.i40e_veb** %11, align 8
  %262 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  store i64 %263, i64* %8, align 8
  br label %264

264:                                              ; preds = %255, %56, %53
  %265 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %266 = load i64, i64* %7, align 8
  %267 = call i32 @i40e_vsi_mem_alloc(%struct.i40e_pf* %265, i64 %266)
  store i32 %267, i32* %15, align 4
  %268 = load i32, i32* %15, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %264
  br label %452

271:                                              ; preds = %264
  %272 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %273 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %272, i32 0, i32 8
  %274 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %273, align 8
  %275 = load i32, i32* %15, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %274, i64 %276
  %278 = load %struct.i40e_vsi*, %struct.i40e_vsi** %277, align 8
  store %struct.i40e_vsi* %278, %struct.i40e_vsi** %10, align 8
  %279 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %280 = icmp ne %struct.i40e_vsi* %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %271
  br label %452

282:                                              ; preds = %271
  %283 = load i64, i64* %7, align 8
  %284 = trunc i64 %283 to i32
  %285 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %286 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %285, i32 0, i32 3
  store i32 %284, i32* %286, align 4
  %287 = load %struct.i40e_veb*, %struct.i40e_veb** %11, align 8
  %288 = icmp ne %struct.i40e_veb* %287, null
  br i1 %288, label %289, label %293

289:                                              ; preds = %282
  %290 = load %struct.i40e_veb*, %struct.i40e_veb** %11, align 8
  %291 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  br label %295

293:                                              ; preds = %282
  %294 = load i32, i32* @I40E_NO_VEB, align 4
  br label %295

295:                                              ; preds = %293, %289
  %296 = phi i32 [ %292, %289 ], [ %294, %293 ]
  %297 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %298 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %297, i32 0, i32 10
  store i32 %296, i32* %298, align 8
  %299 = load i64, i64* %7, align 8
  %300 = icmp eq i64 %299, 129
  br i1 %300, label %301, label %306

301:                                              ; preds = %295
  %302 = load i32, i32* %15, align 4
  %303 = sext i32 %302 to i64
  %304 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %305 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %304, i32 0, i32 2
  store i64 %303, i64* %305, align 8
  br label %315

306:                                              ; preds = %295
  %307 = load i64, i64* %7, align 8
  %308 = load i64, i64* @I40E_VSI_SRIOV, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %314

310:                                              ; preds = %306
  %311 = load i32, i32* %9, align 4
  %312 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %313 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %312, i32 0, i32 9
  store i32 %311, i32* %313, align 4
  br label %314

314:                                              ; preds = %310, %306
  br label %315

315:                                              ; preds = %314, %301
  %316 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %317 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %320 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %319)
  %321 = icmp ne i64 %320, 0
  %322 = zext i1 %321 to i64
  %323 = select i1 %321, i32 2, i32 1
  %324 = mul nsw i32 %318, %323
  %325 = sext i32 %324 to i64
  store i64 %325, i64* %12, align 8
  %326 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %327 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %328 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %327, i32 0, i32 7
  %329 = load i32, i32* %328, align 8
  %330 = load i64, i64* %12, align 8
  %331 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %332 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %331, i32 0, i32 8
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @i40e_get_lump(%struct.i40e_pf* %326, i32 %329, i64 %330, i32 %333)
  store i32 %334, i32* %13, align 4
  %335 = load i32, i32* %13, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %348

337:                                              ; preds = %315
  %338 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %339 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %338, i32 0, i32 6
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 0
  %342 = load i64, i64* %12, align 8
  %343 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %344 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i32, i32* %13, align 4
  %347 = call i32 (i32*, i8*, ...) @dev_info(i32* %341, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %342, i64 %345, i32 %346)
  br label %449

348:                                              ; preds = %315
  %349 = load i32, i32* %13, align 4
  %350 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %351 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %350, i32 0, i32 5
  store i32 %349, i32* %351, align 4
  %352 = load i64, i64* %8, align 8
  %353 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %354 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %353, i32 0, i32 1
  store i64 %352, i64* %354, align 8
  %355 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %356 = call i32 @i40e_add_vsi(%struct.i40e_vsi* %355)
  store i32 %356, i32* %13, align 4
  %357 = load i32, i32* %13, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %348
  br label %449

360:                                              ; preds = %348
  %361 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %362 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 4
  switch i32 %363, label %402 [
    i32 129, label %364
    i32 128, label %364
    i32 130, label %385
  ]

364:                                              ; preds = %360, %360
  %365 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %366 = call i32 @i40e_config_netdev(%struct.i40e_vsi* %365)
  store i32 %366, i32* %13, align 4
  %367 = load i32, i32* %13, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %364
  br label %442

370:                                              ; preds = %364
  %371 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %372 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %371, i32 0, i32 7
  %373 = load i32*, i32** %372, align 8
  %374 = call i32 @register_netdev(i32* %373)
  store i32 %374, i32* %13, align 4
  %375 = load i32, i32* %13, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %370
  br label %442

378:                                              ; preds = %370
  %379 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %380 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %379, i32 0, i32 6
  store i32 1, i32* %380, align 8
  %381 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %382 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %381, i32 0, i32 7
  %383 = load i32*, i32** %382, align 8
  %384 = call i32 @netif_carrier_off(i32* %383)
  br label %385

385:                                              ; preds = %360, %378
  %386 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %387 = call i32 @i40e_vsi_setup_vectors(%struct.i40e_vsi* %386)
  store i32 %387, i32* %13, align 4
  %388 = load i32, i32* %13, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %385
  br label %423

391:                                              ; preds = %385
  %392 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %393 = call i32 @i40e_alloc_rings(%struct.i40e_vsi* %392)
  store i32 %393, i32* %13, align 4
  %394 = load i32, i32* %13, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %391
  br label %420

397:                                              ; preds = %391
  %398 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %399 = call i32 @i40e_vsi_map_rings_to_vectors(%struct.i40e_vsi* %398)
  %400 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %401 = call i32 @i40e_vsi_reset_stats(%struct.i40e_vsi* %400)
  br label %403

402:                                              ; preds = %360
  br label %403

403:                                              ; preds = %402, %397
  %404 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %405 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @I40E_HW_RSS_AQ_CAPABLE, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %418

410:                                              ; preds = %403
  %411 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %412 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 4
  %414 = icmp eq i32 %413, 128
  br i1 %414, label %415, label %418

415:                                              ; preds = %410
  %416 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %417 = call i32 @i40e_vsi_config_rss(%struct.i40e_vsi* %416)
  store i32 %417, i32* %13, align 4
  br label %418

418:                                              ; preds = %415, %410, %403
  %419 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  store %struct.i40e_vsi* %419, %struct.i40e_vsi** %5, align 8
  br label %453

420:                                              ; preds = %396
  %421 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %422 = call i32 @i40e_vsi_free_q_vectors(%struct.i40e_vsi* %421)
  br label %423

423:                                              ; preds = %420, %390
  %424 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %425 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %424, i32 0, i32 6
  %426 = load i32, i32* %425, align 8
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %441

428:                                              ; preds = %423
  %429 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %430 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %429, i32 0, i32 6
  store i32 0, i32* %430, align 8
  %431 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %432 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %431, i32 0, i32 7
  %433 = load i32*, i32** %432, align 8
  %434 = call i32 @unregister_netdev(i32* %433)
  %435 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %436 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %435, i32 0, i32 7
  %437 = load i32*, i32** %436, align 8
  %438 = call i32 @free_netdev(i32* %437)
  %439 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %440 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %439, i32 0, i32 7
  store i32* null, i32** %440, align 8
  br label %441

441:                                              ; preds = %428, %423
  br label %442

442:                                              ; preds = %441, %377, %369
  %443 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %444 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %443, i32 0, i32 5
  %445 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %446 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = call i32 @i40e_aq_delete_element(i32* %444, i64 %447, i32* null)
  br label %449

449:                                              ; preds = %442, %359, %337
  %450 = load %struct.i40e_vsi*, %struct.i40e_vsi** %10, align 8
  %451 = call i32 @i40e_vsi_clear(%struct.i40e_vsi* %450)
  br label %452

452:                                              ; preds = %449, %281, %270
  store %struct.i40e_vsi* null, %struct.i40e_vsi** %5, align 8
  br label %453

453:                                              ; preds = %452, %418, %249, %172, %105
  %454 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  ret %struct.i40e_vsi* %454
}

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local %struct.i40e_veb* @i40e_veb_setup(%struct.i40e_pf*, i32, i64, i64, i32) #1

declare dso_local i32 @i40e_config_bridge_mode(%struct.i40e_veb*) #1

declare dso_local i32 @i40e_vsi_mem_alloc(%struct.i40e_pf*, i64) #1

declare dso_local i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_get_lump(%struct.i40e_pf*, i32, i64, i32) #1

declare dso_local i32 @i40e_add_vsi(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_config_netdev(%struct.i40e_vsi*) #1

declare dso_local i32 @register_netdev(i32*) #1

declare dso_local i32 @netif_carrier_off(i32*) #1

declare dso_local i32 @i40e_vsi_setup_vectors(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_alloc_rings(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_map_rings_to_vectors(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_reset_stats(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_config_rss(%struct.i40e_vsi*) #1

declare dso_local i32 @i40e_vsi_free_q_vectors(%struct.i40e_vsi*) #1

declare dso_local i32 @unregister_netdev(i32*) #1

declare dso_local i32 @free_netdev(i32*) #1

declare dso_local i32 @i40e_aq_delete_element(i32*, i64, i32*) #1

declare dso_local i32 @i40e_vsi_clear(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
