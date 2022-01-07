; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_scan_peb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_scan_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32 }
%struct.ubi_attach_info = type { i32, i32, i32, i32, i64, i32, i64, i64, i32, i32, i32, %struct.ubi_vid_io_buf*, %struct.ubi_ec_hdr* }
%struct.ubi_vid_io_buf = type { i32 }
%struct.ubi_ec_hdr = type { i64, i32, i32 }
%struct.ubi_vid_hdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"scan PEB %d\00", align 1
@UBI_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"'ubi_io_read_ec_hdr()' returned unknown code %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBI_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"this UBI version is %d, image version is %d\00", align 1
@UBI_MAX_ERASECOUNTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"erase counter overflow, max is %d\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"bad image sequence number %d in PEB %d, expected %d\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"'ubi_io_read_vid_hdr()' returned unknown code %d\00", align 1
@UBI_MAX_VOLUMES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [64 x i8] c"\22delete\22 compatible internal volume %d:%d found, will remove it\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"read-only compatible internal volume %d:%d found, switch to read-only mode\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"\22preserve\22 compatible internal volume %d:%d found\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"incompatible internal volume %d:%d found\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"valid VID header but corrupted EC header at PEB %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_attach_info*, i32, i32)* @scan_peb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_peb(%struct.ubi_device* %0, %struct.ubi_attach_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca %struct.ubi_attach_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubi_ec_hdr*, align 8
  %11 = alloca %struct.ubi_vid_io_buf*, align 8
  %12 = alloca %struct.ubi_vid_hdr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store %struct.ubi_attach_info* %1, %struct.ubi_attach_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %21 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %20, i32 0, i32 12
  %22 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %21, align 8
  store %struct.ubi_ec_hdr* %22, %struct.ubi_ec_hdr** %10, align 8
  %23 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %24 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %23, i32 0, i32 11
  %25 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %24, align 8
  store %struct.ubi_vid_io_buf* %25, %struct.ubi_vid_io_buf** %11, align 8
  %26 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %11, align 8
  %27 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %26)
  store %struct.ubi_vid_hdr* %27, %struct.ubi_vid_hdr** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @dbg_bld(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ubi_io_is_bad(%struct.ubi_device* %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %5, align 4
  br label %421

37:                                               ; preds = %4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %42 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  store i32 0, i32* %5, align 4
  br label %421

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %10, align 8
  %50 = call i32 @ubi_io_read_ec_hdr(%struct.ubi_device* %47, i32 %48, %struct.ubi_ec_hdr* %49, i32 0)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %5, align 4
  br label %421

55:                                               ; preds = %46
  %56 = load i32, i32* %14, align 4
  switch i32 %56, label %91 [
    i32 0, label %57
    i32 130, label %58
    i32 129, label %59
    i32 128, label %73
    i32 131, label %87
    i32 132, label %87
  ]

57:                                               ; preds = %55
  br label %97

58:                                               ; preds = %55
  store i32 1, i32* %15, align 4
  br label %97

59:                                               ; preds = %55
  %60 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %61 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @UBI_UNKNOWN, align 4
  %67 = load i32, i32* @UBI_UNKNOWN, align 4
  %68 = load i32, i32* @UBI_UNKNOWN, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %71 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %70, i32 0, i32 9
  %72 = call i32 @add_to_list(%struct.ubi_attach_info* %64, i32 %65, i32 %66, i32 %67, i64 %69, i32 0, i32* %71)
  store i32 %72, i32* %5, align 4
  br label %421

73:                                               ; preds = %55
  %74 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %75 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @UBI_UNKNOWN, align 4
  %81 = load i32, i32* @UBI_UNKNOWN, align 4
  %82 = load i32, i32* @UBI_UNKNOWN, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %85 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %84, i32 0, i32 9
  %86 = call i32 @add_to_list(%struct.ubi_attach_info* %78, i32 %79, i32 %80, i32 %81, i64 %83, i32 1, i32* %85)
  store i32 %86, i32* %5, align 4
  br label %421

87:                                               ; preds = %55, %55
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* @UBI_UNKNOWN, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %13, align 8
  store i32 1, i32* %15, align 4
  br label %97

91:                                               ; preds = %55
  %92 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %92, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %421

97:                                               ; preds = %87, %58, %57
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %169, label %100

100:                                              ; preds = %97
  %101 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %10, align 8
  %102 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @UBI_VERSION, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %108 = load i64, i64* @UBI_VERSION, align 8
  %109 = trunc i64 %108 to i32
  %110 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %10, align 8
  %111 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %107, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %5, align 4
  br label %421

117:                                              ; preds = %100
  %118 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %10, align 8
  %119 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @be64_to_cpu(i32 %120)
  store i64 %121, i64* %13, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* @UBI_MAX_ERASECOUNTER, align 8
  %124 = icmp sgt i64 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %117
  %126 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %127 = load i64, i64* @UBI_MAX_ERASECOUNTER, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %126, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %10, align 8
  %131 = call i32 @ubi_dump_ec_hdr(%struct.ubi_ec_hdr* %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %421

134:                                              ; preds = %117
  %135 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %10, align 8
  %136 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @be32_to_cpu(i32 %137)
  store i32 %138, i32* %18, align 4
  %139 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %140 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %134
  %144 = load i32, i32* %18, align 4
  %145 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %146 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %143, %134
  %148 = load i32, i32* %18, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %147
  %151 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %152 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %161 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %157, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %158, i32 %159, i32 %162)
  %164 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %10, align 8
  %165 = call i32 @ubi_dump_ec_hdr(%struct.ubi_ec_hdr* %164)
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %5, align 4
  br label %421

168:                                              ; preds = %150, %147
  br label %169

169:                                              ; preds = %168, %97
  %170 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %11, align 8
  %173 = call i32 @ubi_io_read_vid_hdr(%struct.ubi_device* %170, i32 %171, %struct.ubi_vid_io_buf* %172, i32 0)
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i32, i32* %14, align 4
  store i32 %177, i32* %5, align 4
  br label %421

178:                                              ; preds = %169
  %179 = load i32, i32* %14, align 4
  switch i32 %179, label %279 [
    i32 0, label %180
    i32 130, label %181
    i32 131, label %182
    i32 132, label %191
    i32 128, label %235
    i32 129, label %249
  ]

180:                                              ; preds = %178
  br label %285

181:                                              ; preds = %178
  store i32 1, i32* %15, align 4
  br label %285

182:                                              ; preds = %178
  %183 = load i32, i32* %17, align 4
  %184 = icmp eq i32 %183, 131
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %187 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %185, %182
  br label %191

191:                                              ; preds = %178, %190
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %196 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %195, i32 0, i32 3
  store i32 1, i32* %196, align 4
  br label %197

197:                                              ; preds = %194, %191
  %198 = load i32, i32* %17, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  store i32 0, i32* %14, align 4
  br label %206

201:                                              ; preds = %197
  %202 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %203 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %12, align 8
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @check_corruption(%struct.ubi_device* %202, %struct.ubi_vid_hdr* %203, i32 %204)
  store i32 %205, i32* %14, align 4
  br label %206

206:                                              ; preds = %201, %200
  %207 = load i32, i32* %14, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = load i32, i32* %14, align 4
  store i32 %210, i32* %5, align 4
  br label %421

211:                                              ; preds = %206
  %212 = load i32, i32* %14, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %223, label %214

214:                                              ; preds = %211
  %215 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @UBI_UNKNOWN, align 4
  %218 = load i32, i32* @UBI_UNKNOWN, align 4
  %219 = load i64, i64* %13, align 8
  %220 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %221 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %220, i32 0, i32 9
  %222 = call i32 @add_to_list(%struct.ubi_attach_info* %215, i32 %216, i32 %217, i32 %218, i64 %219, i32 1, i32* %221)
  store i32 %222, i32* %14, align 4
  br label %228

223:                                              ; preds = %211
  %224 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %225 = load i32, i32* %8, align 4
  %226 = load i64, i64* %13, align 8
  %227 = call i32 @add_corrupted(%struct.ubi_attach_info* %224, i32 %225, i64 %226)
  store i32 %227, i32* %14, align 4
  br label %228

228:                                              ; preds = %223, %214
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = load i32, i32* %14, align 4
  store i32 %233, i32* %5, align 4
  br label %421

234:                                              ; preds = %229
  br label %387

235:                                              ; preds = %178
  %236 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* @UBI_UNKNOWN, align 4
  %239 = load i32, i32* @UBI_UNKNOWN, align 4
  %240 = load i64, i64* %13, align 8
  %241 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %242 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %241, i32 0, i32 9
  %243 = call i32 @add_to_list(%struct.ubi_attach_info* %236, i32 %237, i32 %238, i32 %239, i64 %240, i32 1, i32* %242)
  store i32 %243, i32* %14, align 4
  %244 = load i32, i32* %14, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %235
  %247 = load i32, i32* %14, align 4
  store i32 %247, i32* %5, align 4
  br label %421

248:                                              ; preds = %235
  br label %387

249:                                              ; preds = %178
  %250 = load i32, i32* %17, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %249
  %253 = load i32, i32* %15, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %252, %249
  %256 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* @UBI_UNKNOWN, align 4
  %259 = load i32, i32* @UBI_UNKNOWN, align 4
  %260 = load i64, i64* %13, align 8
  %261 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %262 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %261, i32 0, i32 9
  %263 = call i32 @add_to_list(%struct.ubi_attach_info* %256, i32 %257, i32 %258, i32 %259, i64 %260, i32 1, i32* %262)
  store i32 %263, i32* %14, align 4
  br label %273

264:                                              ; preds = %252
  %265 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* @UBI_UNKNOWN, align 4
  %268 = load i32, i32* @UBI_UNKNOWN, align 4
  %269 = load i64, i64* %13, align 8
  %270 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %271 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %270, i32 0, i32 10
  %272 = call i32 @add_to_list(%struct.ubi_attach_info* %265, i32 %266, i32 %267, i32 %268, i64 %269, i32 0, i32* %271)
  store i32 %272, i32* %14, align 4
  br label %273

273:                                              ; preds = %264, %255
  %274 = load i32, i32* %14, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = load i32, i32* %14, align 4
  store i32 %277, i32* %5, align 4
  br label %421

278:                                              ; preds = %273
  br label %387

279:                                              ; preds = %178
  %280 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %281 = load i32, i32* %14, align 4
  %282 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %280, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %281)
  %283 = load i32, i32* @EINVAL, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %5, align 4
  br label %421

285:                                              ; preds = %181, %180
  %286 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %12, align 8
  %287 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @be32_to_cpu(i32 %288)
  store i32 %289, i32* %16, align 4
  %290 = load i32, i32* %16, align 4
  %291 = load i32, i32* @UBI_MAX_VOLUMES, align 4
  %292 = icmp sgt i32 %290, %291
  br i1 %292, label %293, label %356

293:                                              ; preds = %285
  %294 = load i32, i32* %16, align 4
  %295 = call i32 @vol_ignored(i32 %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %356, label %297

297:                                              ; preds = %293
  %298 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %12, align 8
  %299 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @be32_to_cpu(i32 %300)
  store i32 %301, i32* %19, align 4
  %302 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %12, align 8
  %303 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  switch i32 %304, label %355 [
    i32 136, label %305
    i32 133, label %323
    i32 135, label %330
    i32 134, label %348
  ]

305:                                              ; preds = %297
  %306 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %307 = load i32, i32* %16, align 4
  %308 = load i32, i32* %19, align 4
  %309 = call i32 @ubi_msg(%struct.ubi_device* %306, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i32 %307, i32 %308)
  %310 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* %16, align 4
  %313 = load i32, i32* %19, align 4
  %314 = load i64, i64* %13, align 8
  %315 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %316 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %315, i32 0, i32 9
  %317 = call i32 @add_to_list(%struct.ubi_attach_info* %310, i32 %311, i32 %312, i32 %313, i64 %314, i32 1, i32* %316)
  store i32 %317, i32* %14, align 4
  %318 = load i32, i32* %14, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %305
  %321 = load i32, i32* %14, align 4
  store i32 %321, i32* %5, align 4
  br label %421

322:                                              ; preds = %305
  store i32 0, i32* %5, align 4
  br label %421

323:                                              ; preds = %297
  %324 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %325 = load i32, i32* %16, align 4
  %326 = load i32, i32* %19, align 4
  %327 = call i32 @ubi_msg(%struct.ubi_device* %324, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0), i32 %325, i32 %326)
  %328 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %329 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %328, i32 0, i32 1
  store i32 1, i32* %329, align 4
  br label %355

330:                                              ; preds = %297
  %331 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %332 = load i32, i32* %16, align 4
  %333 = load i32, i32* %19, align 4
  %334 = call i32 @ubi_msg(%struct.ubi_device* %331, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %332, i32 %333)
  %335 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %336 = load i32, i32* %8, align 4
  %337 = load i32, i32* %16, align 4
  %338 = load i32, i32* %19, align 4
  %339 = load i64, i64* %13, align 8
  %340 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %341 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %340, i32 0, i32 8
  %342 = call i32 @add_to_list(%struct.ubi_attach_info* %335, i32 %336, i32 %337, i32 %338, i64 %339, i32 0, i32* %341)
  store i32 %342, i32* %14, align 4
  %343 = load i32, i32* %14, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %330
  %346 = load i32, i32* %14, align 4
  store i32 %346, i32* %5, align 4
  br label %421

347:                                              ; preds = %330
  store i32 0, i32* %5, align 4
  br label %421

348:                                              ; preds = %297
  %349 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %350 = load i32, i32* %16, align 4
  %351 = load i32, i32* %19, align 4
  %352 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %349, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %350, i32 %351)
  %353 = load i32, i32* @EINVAL, align 4
  %354 = sub nsw i32 0, %353
  store i32 %354, i32* %5, align 4
  br label %421

355:                                              ; preds = %297, %323
  br label %356

356:                                              ; preds = %355, %293, %285
  %357 = load i32, i32* %17, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %356
  %360 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %361 = load i32, i32* %8, align 4
  %362 = call i32 @ubi_warn(%struct.ubi_device* %360, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i32 %361)
  br label %363

363:                                              ; preds = %359, %356
  %364 = load i32, i32* %16, align 4
  %365 = call i64 @ubi_is_fm_vol(i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %363
  %368 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %369 = load i32, i32* %8, align 4
  %370 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %12, align 8
  %371 = load i64, i64* %13, align 8
  %372 = call i32 @add_fastmap(%struct.ubi_attach_info* %368, i32 %369, %struct.ubi_vid_hdr* %370, i64 %371)
  store i32 %372, i32* %14, align 4
  br label %381

373:                                              ; preds = %363
  %374 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %375 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %376 = load i32, i32* %8, align 4
  %377 = load i64, i64* %13, align 8
  %378 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %12, align 8
  %379 = load i32, i32* %15, align 4
  %380 = call i32 @ubi_add_to_av(%struct.ubi_device* %374, %struct.ubi_attach_info* %375, i32 %376, i64 %377, %struct.ubi_vid_hdr* %378, i32 %379)
  store i32 %380, i32* %14, align 4
  br label %381

381:                                              ; preds = %373, %367
  %382 = load i32, i32* %14, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %381
  %385 = load i32, i32* %14, align 4
  store i32 %385, i32* %5, align 4
  br label %421

386:                                              ; preds = %381
  br label %387

387:                                              ; preds = %386, %278, %248, %234
  %388 = load i32, i32* %17, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %420, label %390

390:                                              ; preds = %387
  %391 = load i64, i64* %13, align 8
  %392 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %393 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %392, i32 0, i32 4
  %394 = load i64, i64* %393, align 8
  %395 = add nsw i64 %394, %391
  store i64 %395, i64* %393, align 8
  %396 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %397 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %396, i32 0, i32 5
  %398 = load i32, i32* %397, align 8
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %397, align 8
  %400 = load i64, i64* %13, align 8
  %401 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %402 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %401, i32 0, i32 6
  %403 = load i64, i64* %402, align 8
  %404 = icmp sgt i64 %400, %403
  br i1 %404, label %405, label %409

405:                                              ; preds = %390
  %406 = load i64, i64* %13, align 8
  %407 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %408 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %407, i32 0, i32 6
  store i64 %406, i64* %408, align 8
  br label %409

409:                                              ; preds = %405, %390
  %410 = load i64, i64* %13, align 8
  %411 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %412 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %411, i32 0, i32 7
  %413 = load i64, i64* %412, align 8
  %414 = icmp slt i64 %410, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %409
  %416 = load i64, i64* %13, align 8
  %417 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %418 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %417, i32 0, i32 7
  store i64 %416, i64* %418, align 8
  br label %419

419:                                              ; preds = %415, %409
  br label %420

420:                                              ; preds = %419, %387
  store i32 0, i32* %5, align 4
  br label %421

421:                                              ; preds = %420, %384, %348, %347, %345, %322, %320, %279, %276, %246, %232, %209, %176, %156, %125, %106, %91, %73, %59, %53, %40, %35
  %422 = load i32, i32* %5, align 4
  ret i32 %422
}

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @dbg_bld(i8*, i32) #1

declare dso_local i32 @ubi_io_is_bad(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_io_read_ec_hdr(%struct.ubi_device*, i32, %struct.ubi_ec_hdr*, i32) #1

declare dso_local i32 @add_to_list(%struct.ubi_attach_info*, i32, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, ...) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @ubi_dump_ec_hdr(%struct.ubi_ec_hdr*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ubi_io_read_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_io_buf*, i32) #1

declare dso_local i32 @check_corruption(%struct.ubi_device*, %struct.ubi_vid_hdr*, i32) #1

declare dso_local i32 @add_corrupted(%struct.ubi_attach_info*, i32, i64) #1

declare dso_local i32 @vol_ignored(i32) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32, i32) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i32) #1

declare dso_local i64 @ubi_is_fm_vol(i32) #1

declare dso_local i32 @add_fastmap(%struct.ubi_attach_info*, i32, %struct.ubi_vid_hdr*, i64) #1

declare dso_local i32 @ubi_add_to_av(%struct.ubi_device*, %struct.ubi_attach_info*, i32, i64, %struct.ubi_vid_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
