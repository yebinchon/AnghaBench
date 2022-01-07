; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_wx_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ipw_priv = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@LIBIPW_DEFAULT_RATES_MASK = common dso_local global i32 0, align 4
@LIBIPW_CCK_RATE_1MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_CCK_RATE_2MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_CCK_RATE_5MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_6MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_9MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_CCK_RATE_11MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_12MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_18MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_24MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_36MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_48MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_54MB_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"invalid rate specified, returning error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Setting rate mask to 0x%08X [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"sub-rates\00", align 1
@CFG_FIXED_RATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Mask set to current mask.\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"[re]association triggered due to rates change.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw_wx_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_wx_set_rate(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ipw_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ipw_priv* @libipw_priv(%struct.net_device* %14)
  store %struct.ipw_priv* %15, %struct.ipw_priv** %10, align 8
  %16 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %17 = bitcast %union.iwreq_data* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* @LIBIPW_DEFAULT_RATES_MASK, align 4
  store i32 %23, i32* %13, align 4
  br label %200

24:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  %25 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %26 = bitcast %union.iwreq_data* %25 to %struct.TYPE_3__*
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 1000000
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* @LIBIPW_CCK_RATE_1MB_MASK, align 4
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 1000000
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %200

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 2000000
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @LIBIPW_CCK_RATE_2MB_MASK, align 4
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 2000000
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %200

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 5500000
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* @LIBIPW_CCK_RATE_5MB_MASK, align 4
  %64 = load i32, i32* %13, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 5500000
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %200

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 6000000
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @LIBIPW_OFDM_RATE_6MB_MASK, align 4
  %78 = load i32, i32* %13, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 6000000
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %200

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 9000000
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* @LIBIPW_OFDM_RATE_9MB_MASK, align 4
  %92 = load i32, i32* %13, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32, i32* %11, align 4
  %96 = icmp eq i32 %95, 9000000
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %200

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 11000000
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* @LIBIPW_CCK_RATE_11MB_MASK, align 4
  %106 = load i32, i32* %13, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %109, 11000000
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %200

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 12000000
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* @LIBIPW_OFDM_RATE_12MB_MASK, align 4
  %120 = load i32, i32* %13, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %118, %115
  %123 = load i32, i32* %11, align 4
  %124 = icmp eq i32 %123, 12000000
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %200

126:                                              ; preds = %122
  %127 = load i32, i32* %11, align 4
  %128 = icmp eq i32 %127, 18000000
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %129, %126
  %133 = load i32, i32* @LIBIPW_OFDM_RATE_18MB_MASK, align 4
  %134 = load i32, i32* %13, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %132, %129
  %137 = load i32, i32* %11, align 4
  %138 = icmp eq i32 %137, 18000000
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %200

140:                                              ; preds = %136
  %141 = load i32, i32* %11, align 4
  %142 = icmp eq i32 %141, 24000000
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %143, %140
  %147 = load i32, i32* @LIBIPW_OFDM_RATE_24MB_MASK, align 4
  %148 = load i32, i32* %13, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %13, align 4
  br label %150

150:                                              ; preds = %146, %143
  %151 = load i32, i32* %11, align 4
  %152 = icmp eq i32 %151, 24000000
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %200

154:                                              ; preds = %150
  %155 = load i32, i32* %11, align 4
  %156 = icmp eq i32 %155, 36000000
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %12, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157, %154
  %161 = load i32, i32* @LIBIPW_OFDM_RATE_36MB_MASK, align 4
  %162 = load i32, i32* %13, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %13, align 4
  br label %164

164:                                              ; preds = %160, %157
  %165 = load i32, i32* %11, align 4
  %166 = icmp eq i32 %165, 36000000
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %200

168:                                              ; preds = %164
  %169 = load i32, i32* %11, align 4
  %170 = icmp eq i32 %169, 48000000
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %171, %168
  %175 = load i32, i32* @LIBIPW_OFDM_RATE_48MB_MASK, align 4
  %176 = load i32, i32* %13, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %174, %171
  %179 = load i32, i32* %11, align 4
  %180 = icmp eq i32 %179, 48000000
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %200

182:                                              ; preds = %178
  %183 = load i32, i32* %11, align 4
  %184 = icmp eq i32 %183, 54000000
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %185, %182
  %189 = load i32, i32* @LIBIPW_OFDM_RATE_54MB_MASK, align 4
  %190 = load i32, i32* %13, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %188, %185
  %193 = load i32, i32* %11, align 4
  %194 = icmp eq i32 %193, 54000000
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %200

196:                                              ; preds = %192
  %197 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %5, align 4
  br label %259

200:                                              ; preds = %195, %181, %167, %153, %139, %125, %111, %97, %83, %69, %55, %41, %22
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %206 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %201, i8* %205)
  %207 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %208 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %207, i32 0, i32 1
  %209 = call i32 @mutex_lock(i32* %208)
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* @LIBIPW_DEFAULT_RATES_MASK, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %200
  %214 = load i32, i32* @CFG_FIXED_RATE, align 4
  %215 = xor i32 %214, -1
  %216 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %217 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = and i32 %218, %215
  store i32 %219, i32* %217, align 8
  %220 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %221 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %222 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %221, i32 0, i32 3
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @ipw_set_fixed_rate(%struct.ipw_priv* %220, i32 %225)
  br label %233

227:                                              ; preds = %200
  %228 = load i32, i32* @CFG_FIXED_RATE, align 4
  %229 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %230 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %227, %213
  %234 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %235 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %13, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %233
  %240 = call i32 (i8*, ...) @IPW_DEBUG_WX(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %241 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %242 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %241, i32 0, i32 1
  %243 = call i32 @mutex_unlock(i32* %242)
  store i32 0, i32* %5, align 4
  br label %259

244:                                              ; preds = %233
  %245 = load i32, i32* %13, align 4
  %246 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %247 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = call i32 @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %249 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %250 = call i32 @ipw_disassociate(%struct.ipw_priv* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %244
  %253 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %254 = call i32 @ipw_associate(%struct.ipw_priv* %253)
  br label %255

255:                                              ; preds = %252, %244
  %256 = load %struct.ipw_priv*, %struct.ipw_priv** %10, align 8
  %257 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %256, i32 0, i32 1
  %258 = call i32 @mutex_unlock(i32* %257)
  store i32 0, i32* %5, align 4
  br label %259

259:                                              ; preds = %255, %239, %196
  %260 = load i32, i32* %5, align 4
  ret i32 %260
}

declare dso_local %struct.ipw_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipw_set_fixed_rate(%struct.ipw_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IPW_DEBUG_ASSOC(i8*) #1

declare dso_local i32 @ipw_disassociate(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_associate(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
