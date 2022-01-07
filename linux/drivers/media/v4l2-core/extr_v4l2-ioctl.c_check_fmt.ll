; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_check_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_check_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.video_device = type { i64, i64, %struct.v4l2_ioctl_ops* }
%struct.v4l2_ioctl_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VFL_TYPE_GRABBER = common dso_local global i64 0, align 8
@VFL_TYPE_VBI = common dso_local global i64 0, align 8
@VFL_TYPE_SDR = common dso_local global i64 0, align 8
@VFL_TYPE_TOUCH = common dso_local global i64 0, align 8
@VFL_DIR_TX = common dso_local global i64 0, align 8
@VFL_DIR_RX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @check_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fmt(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.v4l2_ioctl_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = call %struct.video_device* @video_devdata(%struct.file* %14)
  store %struct.video_device* %15, %struct.video_device** %6, align 8
  %16 = load %struct.video_device*, %struct.video_device** %6, align 8
  %17 = getelementptr inbounds %struct.video_device, %struct.video_device* %16, i32 0, i32 2
  %18 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %17, align 8
  store %struct.v4l2_ioctl_ops* %18, %struct.v4l2_ioctl_ops** %7, align 8
  %19 = load %struct.video_device*, %struct.video_device** %6, align 8
  %20 = getelementptr inbounds %struct.video_device, %struct.video_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VFL_TYPE_GRABBER, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load %struct.video_device*, %struct.video_device** %6, align 8
  %26 = getelementptr inbounds %struct.video_device, %struct.video_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VFL_TYPE_VBI, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load %struct.video_device*, %struct.video_device** %6, align 8
  %32 = getelementptr inbounds %struct.video_device, %struct.video_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VFL_TYPE_SDR, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load %struct.video_device*, %struct.video_device** %6, align 8
  %38 = getelementptr inbounds %struct.video_device, %struct.video_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VFL_TYPE_TOUCH, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load %struct.video_device*, %struct.video_device** %6, align 8
  %44 = getelementptr inbounds %struct.video_device, %struct.video_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VFL_DIR_TX, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load %struct.video_device*, %struct.video_device** %6, align 8
  %50 = getelementptr inbounds %struct.video_device, %struct.video_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @VFL_DIR_RX, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %56 = icmp eq %struct.v4l2_ioctl_ops* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %2
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %261

60:                                               ; preds = %2
  %61 = load i32, i32* %5, align 4
  switch i32 %61, label %257 [
    i32 133, label %62
    i32 132, label %83
    i32 128, label %96
    i32 131, label %109
    i32 130, label %127
    i32 129, label %140
    i32 135, label %153
    i32 134, label %166
    i32 137, label %179
    i32 136, label %192
    i32 139, label %205
    i32 138, label %218
    i32 141, label %231
    i32 140, label %244
  ]

62:                                               ; preds = %60
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %72, i32 0, i32 13
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %71
  store i32 0, i32* %3, align 4
  br label %261

82:                                               ; preds = %76, %68, %65
  br label %258

83:                                               ; preds = %60
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %90, i32 0, i32 12
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %261

95:                                               ; preds = %89, %86, %83
  br label %258

96:                                               ; preds = %60
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %261

108:                                              ; preds = %102, %99, %96
  br label %258

109:                                              ; preds = %60
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %117 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %122 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120, %115
  store i32 0, i32* %3, align 4
  br label %261

126:                                              ; preds = %120, %112, %109
  br label %258

127:                                              ; preds = %60
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %135 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %261

139:                                              ; preds = %133, %130, %127
  br label %258

140:                                              ; preds = %60
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %148 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %261

152:                                              ; preds = %146, %143, %140
  br label %258

153:                                              ; preds = %60
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %161 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %261

165:                                              ; preds = %159, %156, %153
  br label %258

166:                                              ; preds = %60
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %166
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %174 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i32 0, i32* %3, align 4
  br label %261

178:                                              ; preds = %172, %169, %166
  br label %258

179:                                              ; preds = %60
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %179
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %187 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  store i32 0, i32* %3, align 4
  br label %261

191:                                              ; preds = %185, %182, %179
  br label %258

192:                                              ; preds = %60
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load i32, i32* %13, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %200 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  store i32 0, i32* %3, align 4
  br label %261

204:                                              ; preds = %198, %195, %192
  br label %258

205:                                              ; preds = %60
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %205
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %213 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store i32 0, i32* %3, align 4
  br label %261

217:                                              ; preds = %211, %208, %205
  br label %258

218:                                              ; preds = %60
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %218
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %226 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  store i32 0, i32* %3, align 4
  br label %261

230:                                              ; preds = %224, %221, %218
  br label %258

231:                                              ; preds = %60
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %231
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  %238 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %239 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  store i32 0, i32* %3, align 4
  br label %261

243:                                              ; preds = %237, %234, %231
  br label %258

244:                                              ; preds = %60
  %245 = load i32, i32* %8, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %244
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %7, align 8
  %252 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  store i32 0, i32* %3, align 4
  br label %261

256:                                              ; preds = %250, %247, %244
  br label %258

257:                                              ; preds = %60
  br label %258

258:                                              ; preds = %257, %256, %243, %230, %217, %204, %191, %178, %165, %152, %139, %126, %108, %95, %82
  %259 = load i32, i32* @EINVAL, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %3, align 4
  br label %261

261:                                              ; preds = %258, %255, %242, %229, %216, %203, %190, %177, %164, %151, %138, %125, %107, %94, %81, %57
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
