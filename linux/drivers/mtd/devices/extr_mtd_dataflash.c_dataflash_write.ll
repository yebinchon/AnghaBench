; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_dataflash_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtd_dataflash.c_dataflash_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.dataflash* }
%struct.dataflash = type { i32*, i32, i32, i32, %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32*, i32 }
%struct.spi_message = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"write 0x%x..0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"write @ %i:%i len=%i\0A\00", align 1
@OP_TRANSFER_BUF1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"TRANSFER: (%x) %x %x %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"xfer %u -> %d\0A\00", align 1
@OP_PROGRAM_VIA_BUF1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"PROGRAM: (%x) %x %x %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"pgm %u/%u -> %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OP_COMPARE_BUF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @dataflash_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dataflash_write(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dataflash*, align 8
  %12 = alloca %struct.spi_device*, align 8
  %13 = alloca [2 x %struct.spi_transfer], align 16
  %14 = alloca %struct.spi_message, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 0
  %25 = load %struct.dataflash*, %struct.dataflash** %24, align 8
  store %struct.dataflash* %25, %struct.dataflash** %11, align 8
  %26 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %27 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %26, i32 0, i32 4
  %28 = load %struct.spi_device*, %struct.spi_device** %27, align 8
  store %struct.spi_device* %28, %struct.spi_device** %12, align 8
  %29 = bitcast [2 x %struct.spi_transfer]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 32, i1 false)
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %19, align 8
  %31 = load i32*, i32** %10, align 8
  store i32* %31, i32** %20, align 8
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %21, align 4
  %34 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41)
  %43 = call i32 @spi_message_init(%struct.spi_message* %14)
  %44 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %45 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %22, align 8
  %47 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 16
  %49 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 1
  store i32 4, i32* %50, align 8
  %51 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %52 = call i32 @spi_message_add_tail(%struct.spi_transfer* %51, %struct.spi_message* %14)
  %53 = load i64, i64* %7, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %56 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = udiv i32 %54, %57
  store i32 %58, i32* %15, align 4
  %59 = load i64, i64* %7, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %62 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = urem i32 %60, %63
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %66, %67
  %69 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %70 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = zext i32 %71 to i64
  %73 = icmp ugt i64 %68, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %5
  %75 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %76 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sub i32 %77, %78
  store i32 %79, i32* %18, align 4
  br label %83

80:                                               ; preds = %5
  %81 = load i64, i64* %8, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %80, %74
  %84 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %85 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %84, i32 0, i32 3
  %86 = call i32 @mutex_lock(i32* %85)
  br label %87

87:                                               ; preds = %245, %83
  %88 = load i64, i64* %19, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %246

90:                                               ; preds = %87
  %91 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %92 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %91, i32 0, i32 0
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %18, align 4
  %96 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %99 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %97, %100
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %104 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %107, label %153

107:                                              ; preds = %90
  %108 = load i32, i32* @OP_TRANSFER_BUF1, align 4
  %109 = load i32*, i32** %22, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %16, align 4
  %112 = and i32 %111, 16711680
  %113 = lshr i32 %112, 16
  %114 = load i32*, i32** %22, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %16, align 4
  %117 = and i32 %116, 65280
  %118 = lshr i32 %117, 8
  %119 = load i32*, i32** %22, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %22, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  store i32 0, i32* %122, align 4
  %123 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %124 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %123, i32 0, i32 0
  %125 = load i32*, i32** %22, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %22, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %22, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %22, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %130, i32 %133, i32 %136)
  %138 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %139 = call i32 @spi_sync(%struct.spi_device* %138, %struct.spi_message* %14)
  store i32 %139, i32* %21, align 4
  %140 = load i32, i32* %21, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %107
  %143 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %144 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %143, i32 0, i32 0
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %21, align 4
  %147 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %142, %107
  %149 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %150 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %149, i32 0, i32 4
  %151 = load %struct.spi_device*, %struct.spi_device** %150, align 8
  %152 = call i32 @dataflash_waitready(%struct.spi_device* %151)
  br label %153

153:                                              ; preds = %148, %90
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %16, align 4
  %156 = add i32 %155, %154
  store i32 %156, i32* %16, align 4
  %157 = load i32, i32* @OP_PROGRAM_VIA_BUF1, align 4
  %158 = load i32*, i32** %22, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %16, align 4
  %161 = and i32 %160, 16711680
  %162 = lshr i32 %161, 16
  %163 = load i32*, i32** %22, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %16, align 4
  %166 = and i32 %165, 65280
  %167 = lshr i32 %166, 8
  %168 = load i32*, i32** %22, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %16, align 4
  %171 = and i32 %170, 255
  %172 = load i32*, i32** %22, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 3
  store i32 %171, i32* %173, align 4
  %174 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %175 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %174, i32 0, i32 0
  %176 = load i32*, i32** %22, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %22, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %22, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** %22, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 3
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %175, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %178, i32 %181, i32 %184, i32 %187)
  %189 = load i32*, i32** %20, align 8
  %190 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %191 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %190, i32 0, i32 0
  store i32* %189, i32** %191, align 16
  %192 = load i32, i32* %18, align 4
  %193 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %194 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 8
  %195 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %196 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %195, i64 1
  %197 = call i32 @spi_message_add_tail(%struct.spi_transfer* %196, %struct.spi_message* %14)
  %198 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %199 = call i32 @spi_sync(%struct.spi_device* %198, %struct.spi_message* %14)
  store i32 %199, i32* %21, align 4
  %200 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %201 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %200, i64 1
  %202 = call i32 @spi_transfer_del(%struct.spi_transfer* %201)
  %203 = load i32, i32* %21, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %153
  %206 = load %struct.spi_device*, %struct.spi_device** %12, align 8
  %207 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %206, i32 0, i32 0
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %21, align 4
  %211 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %207, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %208, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %205, %153
  %213 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %214 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %213, i32 0, i32 4
  %215 = load %struct.spi_device*, %struct.spi_device** %214, align 8
  %216 = call i32 @dataflash_waitready(%struct.spi_device* %215)
  %217 = load i64, i64* %19, align 8
  %218 = load i32, i32* %18, align 4
  %219 = zext i32 %218 to i64
  %220 = sub i64 %217, %219
  store i64 %220, i64* %19, align 8
  %221 = load i32, i32* %15, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %223 = load i32, i32* %18, align 4
  %224 = load i32*, i32** %20, align 8
  %225 = zext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32* %226, i32** %20, align 8
  %227 = load i32, i32* %18, align 4
  %228 = zext i32 %227 to i64
  %229 = load i64*, i64** %9, align 8
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, %228
  store i64 %231, i64* %229, align 8
  %232 = load i64, i64* %19, align 8
  %233 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %234 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = zext i32 %235 to i64
  %237 = icmp ugt i64 %232, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %212
  %239 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %240 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  store i32 %241, i32* %18, align 4
  br label %245

242:                                              ; preds = %212
  %243 = load i64, i64* %19, align 8
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %18, align 4
  br label %245

245:                                              ; preds = %242, %238
  br label %87

246:                                              ; preds = %87
  %247 = load %struct.dataflash*, %struct.dataflash** %11, align 8
  %248 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %247, i32 0, i32 3
  %249 = call i32 @mutex_unlock(i32* %248)
  %250 = load i32, i32* %21, align 4
  ret i32 %250
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #2

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #2

declare dso_local i32 @dataflash_waitready(%struct.spi_device*) #2

declare dso_local i32 @spi_transfer_del(%struct.spi_transfer*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
