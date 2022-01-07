; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_copy_leb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_copy_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32, %struct.ubi_volume**, i32, i32 }
%struct.ubi_volume = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ubi_vid_io_buf = type { i32 }
%struct.ubi_vid_hdr = type { i64, i32, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [33 x i8] c"copy LEB %d:%d, PEB %d to PEB %d\00", align 1
@UBI_VID_STATIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"volume %d is being removed, cancel\00", align 1
@MOVE_CANCEL_RACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"contention on LEB %d:%d, cancel\00", align 1
@MOVE_RETRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"LEB %d:%d is no longer mapped to PEB %d, mapped to PEB %d, cancel\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"read %d bytes of data\00", align 1
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"error %d while reading data from PEB %d\00", align 1
@MOVE_SOURCE_RD_ERR = common dso_local global i32 0, align 4
@UBI_VID_DYNAMIC = common dso_local global i64 0, align 8
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MOVE_TARGET_WR_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"error %d while reading VID header back from PEB %d\00", align 1
@MOVE_TARGET_RD_ERR = common dso_local global i32 0, align 4
@MOVE_TARGET_BITFLIPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_eba_copy_leb(%struct.ubi_device* %0, i32 %1, i32 %2, %struct.ubi_vid_io_buf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_vid_io_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ubi_vid_hdr*, align 8
  %17 = alloca %struct.ubi_volume*, align 8
  %18 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ubi_vid_io_buf* %3, %struct.ubi_vid_io_buf** %9, align 8
  %19 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %9, align 8
  %20 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %19)
  store %struct.ubi_vid_hdr* %20, %struct.ubi_vid_hdr** %16, align 8
  %21 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 6
  %23 = call i32 @rwsem_is_locked(i32* %22)
  %24 = call i32 @ubi_assert(i32 %23)
  %25 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %26 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %25, i32 0, i32 7
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @be32_to_cpu(i8* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %30 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %29, i32 0, i32 6
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @be32_to_cpu(i8* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i8*, i32, ...) @dbg_wl(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %39 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @UBI_VID_STATIC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %4
  %44 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %45 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @be32_to_cpu(i8* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ALIGN(i32 %48, i32 %51)
  store i32 %52, i32* %14, align 4
  br label %62

53:                                               ; preds = %4
  %54 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %55 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %58 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %57, i32 0, i32 5
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @be32_to_cpu(i8* %59)
  %61 = sub nsw i32 %56, %60
  store i32 %61, i32* %14, align 4
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %53, %43
  %63 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @vol_id2idx(%struct.ubi_device* %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %67 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %66, i32 0, i32 3
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %70 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %69, i32 0, i32 4
  %71 = load %struct.ubi_volume**, %struct.ubi_volume*** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %71, i64 %73
  %75 = load %struct.ubi_volume*, %struct.ubi_volume** %74, align 8
  store %struct.ubi_volume* %75, %struct.ubi_volume** %17, align 8
  %76 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %77 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %76, i32 0, i32 3
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load %struct.ubi_volume*, %struct.ubi_volume** %17, align 8
  %80 = icmp ne %struct.ubi_volume* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %62
  %82 = load i32, i32* %11, align 4
  %83 = call i32 (i8*, i32, ...) @dbg_wl(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @MOVE_CANCEL_RACE, align 4
  store i32 %84, i32* %5, align 4
  br label %290

85:                                               ; preds = %62
  %86 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @leb_write_trylock(%struct.ubi_device* %86, i32 %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 (i8*, i32, ...) @dbg_wl(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load i32, i32* @MOVE_RETRY, align 4
  store i32 %96, i32* %5, align 4
  br label %290

97:                                               ; preds = %85
  %98 = load %struct.ubi_volume*, %struct.ubi_volume** %17, align 8
  %99 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %97
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.ubi_volume*, %struct.ubi_volume** %17, align 8
  %115 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, i32, ...) @dbg_wl(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %112, i32 %113, i32 %123)
  %125 = load i32, i32* @MOVE_CANCEL_RACE, align 4
  store i32 %125, i32* %10, align 4
  br label %284

126:                                              ; preds = %97
  %127 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %128 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %127, i32 0, i32 1
  %129 = call i32 @mutex_lock(i32* %128)
  %130 = load i32, i32* %14, align 4
  %131 = call i32 (i8*, i32, ...) @dbg_wl(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %133 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %134 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @ubi_io_read_data(%struct.ubi_device* %132, i32 %135, i32 %136, i32 0, i32 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %126
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @ubi_warn(%struct.ubi_device* %146, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load i32, i32* @MOVE_SOURCE_RD_ERR, align 4
  store i32 %150, i32* %10, align 4
  br label %280

151:                                              ; preds = %141, %126
  %152 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %153 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @UBI_VID_DYNAMIC, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %159 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %160 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @ubi_calc_data_len(%struct.ubi_device* %158, i32 %161, i32 %162)
  store i32 %163, i32* %13, align 4
  store i32 %163, i32* %14, align 4
  br label %164

164:                                              ; preds = %157, %151
  %165 = call i32 (...) @cond_resched()
  %166 = load i32, i32* @UBI_CRC32_INIT, align 4
  %167 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %168 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @crc32(i32 %166, i32 %169, i32 %170)
  store i32 %171, i32* %18, align 4
  %172 = call i32 (...) @cond_resched()
  %173 = load i32, i32* %13, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %164
  %176 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %177 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %176, i32 0, i32 1
  store i32 1, i32* %177, align 8
  %178 = load i32, i32* %13, align 4
  %179 = call i8* @cpu_to_be32(i32 %178)
  %180 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %181 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %180, i32 0, i32 4
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* %18, align 4
  %183 = call i8* @cpu_to_be32(i32 %182)
  %184 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %185 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %184, i32 0, i32 3
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %175, %164
  %187 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %188 = call i32 @ubi_next_sqnum(%struct.ubi_device* %187)
  %189 = call i32 @cpu_to_be64(i32 %188)
  %190 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %16, align 8
  %191 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 4
  %192 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %9, align 8
  %195 = call i32 @ubi_io_write_vid_hdr(%struct.ubi_device* %192, i32 %193, %struct.ubi_vid_io_buf* %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %186
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* @EIO, align 4
  %201 = sub nsw i32 0, %200
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @MOVE_TARGET_WR_ERR, align 4
  store i32 %204, i32* %10, align 4
  br label %205

205:                                              ; preds = %203, %198
  br label %280

206:                                              ; preds = %186
  %207 = call i32 (...) @cond_resched()
  %208 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %9, align 8
  %211 = call i32 @ubi_io_read_vid_hdr(%struct.ubi_device* %208, i32 %209, %struct.ubi_vid_io_buf* %210, i32 1)
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %232

214:                                              ; preds = %206
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %214
  %219 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @ubi_warn(%struct.ubi_device* %219, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %220, i32 %221)
  %223 = load i32, i32* %10, align 4
  %224 = call i64 @is_error_sane(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %218
  %227 = load i32, i32* @MOVE_TARGET_RD_ERR, align 4
  store i32 %227, i32* %10, align 4
  br label %228

228:                                              ; preds = %226, %218
  br label %231

229:                                              ; preds = %214
  %230 = load i32, i32* @MOVE_TARGET_BITFLIPS, align 4
  store i32 %230, i32* %10, align 4
  br label %231

231:                                              ; preds = %229, %228
  br label %280

232:                                              ; preds = %206
  %233 = load i32, i32* %13, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %255

235:                                              ; preds = %232
  %236 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %237 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %238 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* %14, align 4
  %242 = call i32 @ubi_io_write_data(%struct.ubi_device* %236, i32 %239, i32 %240, i32 0, i32 %241)
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %235
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @EIO, align 4
  %248 = sub nsw i32 0, %247
  %249 = icmp eq i32 %246, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load i32, i32* @MOVE_TARGET_WR_ERR, align 4
  store i32 %251, i32* %10, align 4
  br label %252

252:                                              ; preds = %250, %245
  br label %280

253:                                              ; preds = %235
  %254 = call i32 (...) @cond_resched()
  br label %255

255:                                              ; preds = %253, %232
  %256 = load %struct.ubi_volume*, %struct.ubi_volume** %17, align 8
  %257 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %256, i32 0, i32 0
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %7, align 4
  %267 = icmp eq i32 %265, %266
  %268 = zext i1 %267 to i32
  %269 = call i32 @ubi_assert(i32 %268)
  %270 = load i32, i32* %8, align 4
  %271 = load %struct.ubi_volume*, %struct.ubi_volume** %17, align 8
  %272 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %271, i32 0, i32 0
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %274, align 8
  %276 = load i32, i32* %12, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 0
  store i32 %270, i32* %279, align 4
  br label %280

280:                                              ; preds = %255, %252, %231, %205, %145
  %281 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %282 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %281, i32 0, i32 1
  %283 = call i32 @mutex_unlock(i32* %282)
  br label %284

284:                                              ; preds = %280, %110
  %285 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %286 = load i32, i32* %11, align 4
  %287 = load i32, i32* %12, align 4
  %288 = call i32 @leb_write_unlock(%struct.ubi_device* %285, i32 %286, i32 %287)
  %289 = load i32, i32* %10, align 4
  store i32 %289, i32* %5, align 4
  br label %290

290:                                              ; preds = %284, %92, %81
  %291 = load i32, i32* %5, align 4
  ret i32 %291
}

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i32 @dbg_wl(i8*, i32, ...) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @vol_id2idx(%struct.ubi_device*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @leb_write_trylock(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubi_io_read_data(%struct.ubi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i32, i32) #1

declare dso_local i32 @ubi_calc_data_len(%struct.ubi_device*, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @crc32(i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ubi_next_sqnum(%struct.ubi_device*) #1

declare dso_local i32 @ubi_io_write_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_io_buf*) #1

declare dso_local i32 @ubi_io_read_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_io_buf*, i32) #1

declare dso_local i64 @is_error_sane(i32) #1

declare dso_local i32 @ubi_io_write_data(%struct.ubi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @leb_write_unlock(%struct.ubi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
