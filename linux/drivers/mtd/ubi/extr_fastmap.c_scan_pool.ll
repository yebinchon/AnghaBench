; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_scan_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_scan_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32 }
%struct.ubi_attach_info = type { i32 }
%struct.list_head = type { i32 }
%struct.ubi_vid_io_buf = type { i32 }
%struct.ubi_vid_hdr = type { i32, i32, i32 }
%struct.ubi_ec_hdr = type { i32, i32 }
%struct.ubi_ainf_peb = type { i64, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"scanning fastmap pool: size = %i\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"bad PEB in fastmap pool!\00", align 1
@UBI_BAD_FASTMAP = common dso_local global i32 0, align 4
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"unable to read EC header! PEB:%i err:%i\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"bad image seq: 0x%x, expected: 0x%x\00", align 1
@UBI_IO_FF = common dso_local global i32 0, align 4
@UBI_IO_FF_BITFLIPS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Adding PEB to free: %i\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Found non empty PEB:%i in pool\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"fastmap pool PEBs contains damaged PEBs!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_attach_info*, i32*, i32, i64*, %struct.list_head*)* @scan_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_pool(%struct.ubi_device* %0, %struct.ubi_attach_info* %1, i32* %2, i32 %3, i64* %4, %struct.list_head* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_device*, align 8
  %9 = alloca %struct.ubi_attach_info*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca %struct.ubi_vid_io_buf*, align 8
  %15 = alloca %struct.ubi_vid_hdr*, align 8
  %16 = alloca %struct.ubi_ec_hdr*, align 8
  %17 = alloca %struct.ubi_ainf_peb*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %8, align 8
  store %struct.ubi_attach_info* %1, %struct.ubi_attach_info** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store %struct.list_head* %5, %struct.list_head** %13, align 8
  store i32 0, i32* %21, align 4
  %25 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %26 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.ubi_ec_hdr* @kzalloc(i32 %27, i32 %28)
  store %struct.ubi_ec_hdr* %29, %struct.ubi_ec_hdr** %16, align 8
  %30 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %16, align 8
  %31 = icmp ne %struct.ubi_ec_hdr* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %261

35:                                               ; preds = %6
  %36 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device* %36, i32 %37)
  store %struct.ubi_vid_io_buf* %38, %struct.ubi_vid_io_buf** %14, align 8
  %39 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %14, align 8
  %40 = icmp ne %struct.ubi_vid_io_buf* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %16, align 8
  %43 = call i32 @kfree(%struct.ubi_ec_hdr* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %261

46:                                               ; preds = %35
  %47 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %14, align 8
  %48 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %47)
  store %struct.ubi_vid_hdr* %48, %struct.ubi_vid_hdr** %15, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @dbg_bld(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 0, i32* %18, align 4
  br label %51

51:                                               ; preds = %251, %46
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %254

55:                                               ; preds = %51
  store i32 0, i32* %22, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @be32_to_cpu(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %19, align 4
  %63 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %64 = load i32, i32* %19, align 4
  %65 = call i64 @ubi_io_is_bad(%struct.ubi_device* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %69 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @UBI_BAD_FASTMAP, align 4
  store i32 %70, i32* %21, align 4
  br label %255

71:                                               ; preds = %55
  %72 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %73 = load i32, i32* %19, align 4
  %74 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %16, align 8
  %75 = call i32 @ubi_io_read_ec_hdr(%struct.ubi_device* %72, i32 %73, %struct.ubi_ec_hdr* %74, i32 0)
  store i32 %75, i32* %20, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %71
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %20, align 4
  %86 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* %20, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @UBI_BAD_FASTMAP, align 4
  br label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %20, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* %21, align 4
  br label %255

95:                                               ; preds = %78, %71
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 1, i32* %22, align 4
  br label %100

100:                                              ; preds = %99, %95
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %16, align 8
  %103 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @be32_to_cpu(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  store i32 %106, i32* %23, align 4
  %107 = load i32, i32* %23, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %101
  %110 = load i32, i32* %23, align 4
  %111 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %112 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %110, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %109
  %116 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %117 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %16, align 8
  %118 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @be32_to_cpu(i32 %119)
  %121 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %122 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %116, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %120, i32 %123)
  %125 = load i32, i32* @UBI_BAD_FASTMAP, align 4
  store i32 %125, i32* %21, align 4
  br label %255

126:                                              ; preds = %109, %101
  %127 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %128 = load i32, i32* %19, align 4
  %129 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %14, align 8
  %130 = call i32 @ubi_io_read_vid_hdr(%struct.ubi_device* %127, i32 %128, %struct.ubi_vid_io_buf* %129, i32 0)
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* @UBI_IO_FF, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %126
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* @UBI_IO_FF_BITFLIPS, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %134, %126
  %139 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %16, align 8
  %140 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @be64_to_cpu(i32 %141)
  %143 = ptrtoint i8* %142 to i64
  store i64 %143, i64* %24, align 8
  %144 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %9, align 8
  %145 = load i32, i32* %19, align 4
  %146 = call i32 @unmap_peb(%struct.ubi_attach_info* %144, i32 %145)
  %147 = load i32, i32* %19, align 4
  %148 = call i32 @dbg_bld(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* @UBI_IO_FF_BITFLIPS, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %138
  store i32 1, i32* %22, align 4
  br label %153

153:                                              ; preds = %152, %138
  %154 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %9, align 8
  %155 = load %struct.list_head*, %struct.list_head** %13, align 8
  %156 = load i32, i32* %19, align 4
  %157 = load i64, i64* %24, align 8
  %158 = load i32, i32* %22, align 4
  %159 = call i32 @add_aeb(%struct.ubi_attach_info* %154, %struct.list_head* %155, i32 %156, i64 %157, i32 %158)
  br label %251

160:                                              ; preds = %134
  %161 = load i32, i32* %20, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %20, align 4
  %165 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %238

167:                                              ; preds = %163, %160
  %168 = load i32, i32* %19, align 4
  %169 = call i32 @dbg_bld(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  store i32 1, i32* %22, align 4
  br label %174

174:                                              ; preds = %173, %167
  %175 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %9, align 8
  %176 = load i32, i32* %19, align 4
  %177 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %16, align 8
  %178 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @be64_to_cpu(i32 %179)
  %181 = call %struct.ubi_ainf_peb* @ubi_alloc_aeb(%struct.ubi_attach_info* %175, i32 %176, i8* %180)
  store %struct.ubi_ainf_peb* %181, %struct.ubi_ainf_peb** %17, align 8
  %182 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %17, align 8
  %183 = icmp ne %struct.ubi_ainf_peb* %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %174
  %185 = load i32, i32* @ENOMEM, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %21, align 4
  br label %255

187:                                              ; preds = %174
  %188 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %15, align 8
  %189 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @be32_to_cpu(i32 %190)
  %192 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %17, align 8
  %193 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %192, i32 0, i32 3
  store i8* %191, i8** %193, align 8
  %194 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %15, align 8
  %195 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @be64_to_cpu(i32 %196)
  %198 = ptrtoint i8* %197 to i64
  %199 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %17, align 8
  %200 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %15, align 8
  %202 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %17, align 8
  %205 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* %22, align 4
  %207 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %17, align 8
  %208 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 8
  %209 = load i64*, i64** %12, align 8
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %17, align 8
  %212 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ult i64 %210, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %187
  %216 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %17, align 8
  %217 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64*, i64** %12, align 8
  store i64 %218, i64* %219, align 8
  br label %220

220:                                              ; preds = %215, %187
  %221 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %222 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %9, align 8
  %223 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %15, align 8
  %224 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %17, align 8
  %225 = call i32 @process_pool_aeb(%struct.ubi_device* %221, %struct.ubi_attach_info* %222, %struct.ubi_vid_hdr* %223, %struct.ubi_ainf_peb* %224)
  store i32 %225, i32* %20, align 4
  %226 = load i32, i32* %20, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %220
  %229 = load i32, i32* %20, align 4
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i32, i32* @UBI_BAD_FASTMAP, align 4
  br label %235

233:                                              ; preds = %228
  %234 = load i32, i32* %20, align 4
  br label %235

235:                                              ; preds = %233, %231
  %236 = phi i32 [ %232, %231 ], [ %234, %233 ]
  store i32 %236, i32* %21, align 4
  br label %255

237:                                              ; preds = %220
  br label %249

238:                                              ; preds = %163
  %239 = load %struct.ubi_device*, %struct.ubi_device** %8, align 8
  %240 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %239, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %241 = load i32, i32* %20, align 4
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load i32, i32* @UBI_BAD_FASTMAP, align 4
  br label %247

245:                                              ; preds = %238
  %246 = load i32, i32* %20, align 4
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i32 [ %244, %243 ], [ %246, %245 ]
  store i32 %248, i32* %21, align 4
  br label %255

249:                                              ; preds = %237
  br label %250

250:                                              ; preds = %249
  br label %251

251:                                              ; preds = %250, %153
  %252 = load i32, i32* %18, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %18, align 4
  br label %51

254:                                              ; preds = %51
  br label %255

255:                                              ; preds = %254, %247, %235, %184, %115, %93, %67
  %256 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %14, align 8
  %257 = call i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf* %256)
  %258 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %16, align 8
  %259 = call i32 @kfree(%struct.ubi_ec_hdr* %258)
  %260 = load i32, i32* %21, align 4
  store i32 %260, i32* %7, align 4
  br label %261

261:                                              ; preds = %255, %41, %32
  %262 = load i32, i32* %7, align 4
  ret i32 %262
}

declare dso_local %struct.ubi_ec_hdr* @kzalloc(i32, i32) #1

declare dso_local %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device*, i32) #1

declare dso_local i32 @kfree(%struct.ubi_ec_hdr*) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @dbg_bld(i8*, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @ubi_io_is_bad(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @ubi_io_read_ec_hdr(%struct.ubi_device*, i32, %struct.ubi_ec_hdr*, i32) #1

declare dso_local i32 @ubi_io_read_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_io_buf*, i32) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i32 @unmap_peb(%struct.ubi_attach_info*, i32) #1

declare dso_local i32 @add_aeb(%struct.ubi_attach_info*, %struct.list_head*, i32, i64, i32) #1

declare dso_local %struct.ubi_ainf_peb* @ubi_alloc_aeb(%struct.ubi_attach_info*, i32, i8*) #1

declare dso_local i32 @process_pool_aeb(%struct.ubi_device*, %struct.ubi_attach_info*, %struct.ubi_vid_hdr*, %struct.ubi_ainf_peb*) #1

declare dso_local i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
