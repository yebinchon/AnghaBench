; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_validate_vid_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_validate_vid_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_vid_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"bad copy_flag\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"negative values\00", align 1
@UBI_MAX_VOLUMES = common dso_local global i32 0, align 4
@UBI_INTERNAL_VOL_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"bad vol_id\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"bad compat\00", align 1
@UBI_COMPAT_DELETE = common dso_local global i32 0, align 4
@UBI_COMPAT_RO = common dso_local global i32 0, align 4
@UBI_COMPAT_PRESERVE = common dso_local global i32 0, align 4
@UBI_COMPAT_REJECT = common dso_local global i32 0, align 4
@UBI_VID_DYNAMIC = common dso_local global i32 0, align 4
@UBI_VID_STATIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"bad vol_type\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"bad data_pad\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"bad data_size\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"zero used_ebs\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"zero data_size\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"bad data_size at last LEB\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"too high lnum\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"non-zero data CRC\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"non-zero data_size\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"zero data_size of copy\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"bad used_ebs\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"bad VID header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_vid_hdr*)* @validate_vid_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_vid_hdr(%struct.ubi_device* %0, %struct.ubi_vid_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_vid_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_vid_hdr* %1, %struct.ubi_vid_hdr** %5, align 8
  %16 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %20 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %27 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be32_to_cpu(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %34 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %46 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be32_to_cpu(i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %2
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %61 = call i32 @ubi_err(%struct.ubi_device* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %231

62:                                               ; preds = %56, %2
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74, %71, %68, %65, %62
  %78 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %79 = call i32 @ubi_err(%struct.ubi_device* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %231

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @UBI_MAX_VOLUMES, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @UBI_INTERNAL_VOL_START, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %90 = call i32 @ubi_err(%struct.ubi_device* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %231

91:                                               ; preds = %84, %80
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @UBI_INTERNAL_VOL_START, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %100 = call i32 @ubi_err(%struct.ubi_device* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %231

101:                                              ; preds = %95, %91
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @UBI_INTERNAL_VOL_START, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @UBI_COMPAT_DELETE, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @UBI_COMPAT_RO, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @UBI_COMPAT_PRESERVE, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @UBI_COMPAT_REJECT, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %123 = call i32 @ubi_err(%struct.ubi_device* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %231

124:                                              ; preds = %117, %113, %109, %105, %101
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @UBI_VID_DYNAMIC, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @UBI_VID_STATIC, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %134 = call i32 @ubi_err(%struct.ubi_device* %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %231

135:                                              ; preds = %128, %124
  %136 = load i32, i32* %13, align 4
  %137 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %138 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sdiv i32 %139, 2
  %141 = icmp sge i32 %136, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %144 = call i32 @ubi_err(%struct.ubi_device* %143, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %231

145:                                              ; preds = %135
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %148 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %146, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %153 = call i32 @ubi_err(%struct.ubi_device* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %231

154:                                              ; preds = %145
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @UBI_VID_STATIC, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %200

158:                                              ; preds = %154
  %159 = load i32, i32* %12, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %163 = call i32 @ubi_err(%struct.ubi_device* %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %231

164:                                              ; preds = %158
  %165 = load i32, i32* %11, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %169 = call i32 @ubi_err(%struct.ubi_device* %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %231

170:                                              ; preds = %164
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %12, align 4
  %173 = sub nsw i32 %172, 1
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %181 = call i32 @ubi_err(%struct.ubi_device* %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %231

182:                                              ; preds = %175
  br label %199

183:                                              ; preds = %170
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %12, align 4
  %186 = sub nsw i32 %185, 1
  %187 = icmp eq i32 %184, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %183
  %189 = load i32, i32* %11, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %193 = call i32 @ubi_err(%struct.ubi_device* %192, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %231

194:                                              ; preds = %188
  br label %198

195:                                              ; preds = %183
  %196 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %197 = call i32 @ubi_err(%struct.ubi_device* %196, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %231

198:                                              ; preds = %194
  br label %199

199:                                              ; preds = %198, %182
  br label %230

200:                                              ; preds = %154
  %201 = load i32, i32* %7, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %216

203:                                              ; preds = %200
  %204 = load i32, i32* %14, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %208 = call i32 @ubi_err(%struct.ubi_device* %207, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %231

209:                                              ; preds = %203
  %210 = load i32, i32* %11, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %214 = call i32 @ubi_err(%struct.ubi_device* %213, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  br label %231

215:                                              ; preds = %209
  br label %223

216:                                              ; preds = %200
  %217 = load i32, i32* %11, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %221 = call i32 @ubi_err(%struct.ubi_device* %220, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %231

222:                                              ; preds = %216
  br label %223

223:                                              ; preds = %222, %215
  %224 = load i32, i32* %12, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %228 = call i32 @ubi_err(%struct.ubi_device* %227, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %231

229:                                              ; preds = %223
  br label %230

230:                                              ; preds = %229, %199
  store i32 0, i32* %3, align 4
  br label %237

231:                                              ; preds = %226, %219, %212, %206, %195, %191, %179, %167, %161, %151, %142, %132, %121, %98, %88, %77, %59
  %232 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %233 = call i32 @ubi_err(%struct.ubi_device* %232, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %234 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %5, align 8
  %235 = call i32 @ubi_dump_vid_hdr(%struct.ubi_vid_hdr* %234)
  %236 = call i32 (...) @dump_stack()
  store i32 1, i32* %3, align 4
  br label %237

237:                                              ; preds = %231, %230
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*) #1

declare dso_local i32 @ubi_dump_vid_hdr(%struct.ubi_vid_hdr*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
