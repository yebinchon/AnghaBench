; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_aewb.c_h3a_aewb_validate_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isph3a_aewb.c_h3a_aewb_validate_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispstat = type { i32 }
%struct.omap3isp_h3a_aewb_config = type { i64, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64 }

@OMAP3ISP_AEWB_MAX_SATURATION_LIM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OMAP3ISP_AEWB_MIN_WIN_H = common dso_local global i32 0, align 4
@OMAP3ISP_AEWB_MAX_WIN_H = common dso_local global i32 0, align 4
@OMAP3ISP_AEWB_MIN_WIN_W = common dso_local global i32 0, align 4
@OMAP3ISP_AEWB_MAX_WIN_W = common dso_local global i32 0, align 4
@OMAP3ISP_AEWB_MIN_WINVC = common dso_local global i64 0, align 8
@OMAP3ISP_AEWB_MAX_WINVC = common dso_local global i64 0, align 8
@OMAP3ISP_AEWB_MIN_WINHC = common dso_local global i64 0, align 8
@OMAP3ISP_AEWB_MAX_WINHC = common dso_local global i64 0, align 8
@OMAP3ISP_AEWB_MAX_WINSTART = common dso_local global i64 0, align 8
@OMAP3ISP_AEWB_MIN_SUB_INC = common dso_local global i32 0, align 4
@OMAP3ISP_AEWB_MAX_SUB_INC = common dso_local global i32 0, align 4
@OMAP3ISP_AEWB_MAX_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ispstat*, i8*)* @h3a_aewb_validate_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h3a_aewb_validate_params(%struct.ispstat* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ispstat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap3isp_h3a_aewb_config*, align 8
  %7 = alloca i64, align 8
  store %struct.ispstat* %0, %struct.ispstat** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.omap3isp_h3a_aewb_config*
  store %struct.omap3isp_h3a_aewb_config* %9, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %10 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %11 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OMAP3ISP_AEWB_MAX_SATURATION_LIM, align 8
  %14 = icmp sgt i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %251

21:                                               ; preds = %2
  %22 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %23 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @OMAP3ISP_AEWB_MIN_WIN_H, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %29 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @OMAP3ISP_AEWB_MAX_WIN_H, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %35 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %33, %27, %21
  %40 = phi i1 [ true, %27 ], [ true, %21 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %251

47:                                               ; preds = %39
  %48 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %49 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @OMAP3ISP_AEWB_MIN_WIN_W, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %55 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @OMAP3ISP_AEWB_MAX_WIN_W, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %61 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %59, %53, %47
  %66 = phi i1 [ true, %53 ], [ true, %47 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %251

73:                                               ; preds = %65
  %74 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %75 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @OMAP3ISP_AEWB_MIN_WINVC, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %81 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @OMAP3ISP_AEWB_MAX_WINVC, align 8
  %84 = icmp sgt i64 %82, %83
  br label %85

85:                                               ; preds = %79, %73
  %86 = phi i1 [ true, %73 ], [ %84, %79 ]
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %251

93:                                               ; preds = %85
  %94 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %95 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @OMAP3ISP_AEWB_MIN_WINHC, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %101 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @OMAP3ISP_AEWB_MAX_WINHC, align 8
  %104 = icmp sgt i64 %102, %103
  br label %105

105:                                              ; preds = %99, %93
  %106 = phi i1 [ true, %93 ], [ %104, %99 ]
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %251

113:                                              ; preds = %105
  %114 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %115 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @OMAP3ISP_AEWB_MAX_WINSTART, align 8
  %118 = icmp sgt i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %251

125:                                              ; preds = %113
  %126 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %127 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @OMAP3ISP_AEWB_MAX_WINSTART, align 8
  %130 = icmp sgt i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %251

137:                                              ; preds = %125
  %138 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %139 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @OMAP3ISP_AEWB_MAX_WINSTART, align 8
  %142 = icmp sgt i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %251

149:                                              ; preds = %137
  %150 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %151 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @OMAP3ISP_AEWB_MIN_WIN_H, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %167, label %155

155:                                              ; preds = %149
  %156 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %157 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @OMAP3ISP_AEWB_MAX_WIN_H, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %163 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, 1
  %166 = icmp ne i32 %165, 0
  br label %167

167:                                              ; preds = %161, %155, %149
  %168 = phi i1 [ true, %155 ], [ true, %149 ], [ %166, %161 ]
  %169 = zext i1 %168 to i32
  %170 = call i64 @unlikely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %251

175:                                              ; preds = %167
  %176 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %177 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @OMAP3ISP_AEWB_MIN_SUB_INC, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %193, label %181

181:                                              ; preds = %175
  %182 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %183 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %182, i32 0, i32 9
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @OMAP3ISP_AEWB_MAX_SUB_INC, align 4
  %186 = icmp sgt i32 %184, %185
  br i1 %186, label %193, label %187

187:                                              ; preds = %181
  %188 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %189 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %188, i32 0, i32 9
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 1
  %192 = icmp ne i32 %191, 0
  br label %193

193:                                              ; preds = %187, %181, %175
  %194 = phi i1 [ true, %181 ], [ true, %175 ], [ %192, %187 ]
  %195 = zext i1 %194 to i32
  %196 = call i64 @unlikely(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %3, align 4
  br label %251

201:                                              ; preds = %193
  %202 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %203 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %202, i32 0, i32 10
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @OMAP3ISP_AEWB_MIN_SUB_INC, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %219, label %207

207:                                              ; preds = %201
  %208 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %209 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %208, i32 0, i32 10
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @OMAP3ISP_AEWB_MAX_SUB_INC, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %219, label %213

213:                                              ; preds = %207
  %214 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %215 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %214, i32 0, i32 10
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, 1
  %218 = icmp ne i32 %217, 0
  br label %219

219:                                              ; preds = %213, %207, %201
  %220 = phi i1 [ true, %207 ], [ true, %201 ], [ %218, %213 ]
  %221 = zext i1 %220 to i32
  %222 = call i64 @unlikely(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %3, align 4
  br label %251

227:                                              ; preds = %219
  %228 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %229 = call i64 @h3a_aewb_get_buf_size(%struct.omap3isp_h3a_aewb_config* %228)
  store i64 %229, i64* %7, align 8
  %230 = load i64, i64* %7, align 8
  %231 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %232 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %231, i32 0, i32 11
  %233 = load i64, i64* %232, align 8
  %234 = icmp sgt i64 %230, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %227
  %236 = load i64, i64* %7, align 8
  %237 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %238 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %237, i32 0, i32 11
  store i64 %236, i64* %238, align 8
  br label %250

239:                                              ; preds = %227
  %240 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %241 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %240, i32 0, i32 11
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @OMAP3ISP_AEWB_MAX_BUF_SIZE, align 8
  %244 = icmp sgt i64 %242, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = load i64, i64* @OMAP3ISP_AEWB_MAX_BUF_SIZE, align 8
  %247 = load %struct.omap3isp_h3a_aewb_config*, %struct.omap3isp_h3a_aewb_config** %6, align 8
  %248 = getelementptr inbounds %struct.omap3isp_h3a_aewb_config, %struct.omap3isp_h3a_aewb_config* %247, i32 0, i32 11
  store i64 %246, i64* %248, align 8
  br label %249

249:                                              ; preds = %245, %239
  br label %250

250:                                              ; preds = %249, %235
  store i32 0, i32* %3, align 4
  br label %251

251:                                              ; preds = %250, %224, %198, %172, %146, %134, %122, %110, %90, %70, %44, %18
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @h3a_aewb_get_buf_size(%struct.omap3isp_h3a_aewb_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
