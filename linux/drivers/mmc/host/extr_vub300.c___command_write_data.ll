; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c___command_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c___command_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i32, i8*, %struct.TYPE_5__, %struct.TYPE_6__, i32, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.mmc_command = type { i32 }
%struct.mmc_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vub300_mmc_host*, %struct.mmc_command*, %struct.mmc_data*)* @__command_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__command_write_data(%struct.vub300_mmc_host* %0, %struct.mmc_command* %1, %struct.mmc_data* %2) #0 {
  %4 = alloca %struct.vub300_mmc_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [256 x i8], align 16
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  store %struct.mmc_data* %2, %struct.mmc_data** %6, align 8
  %19 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %20 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %23 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @usb_sndbulkpipe(i32 %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %27 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 63
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 511
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 64
  br i1 %34, label %35, label %78

35:                                               ; preds = %3
  %36 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %37 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %40 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %43 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @sg_copy_to_buffer(i32 %38, i32 %41, i8* %44, i32 8)
  %46 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %47 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 8, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memset(i8* %51, i32 0, i32 %55)
  %57 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %60 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @vub300_usb_bulk_msg(%struct.vub300_mmc_host* %57, i32 %58, i8* %61, i32 8, i32* %12, i32 2000)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %35
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %68 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %70 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  br label %77

71:                                               ; preds = %35
  %72 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %73 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %76 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %65
  br label %245

78:                                               ; preds = %3
  %79 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %80 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 0, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %88 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %155

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 64, %92
  br i1 %93, label %94, label %155

94:                                               ; preds = %91, %83
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 63, %95
  %97 = ashr i32 %96, 6
  %98 = shl i32 %97, 6
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @kmalloc(i32 %99, i32 %100)
  store i8* %101, i8** %14, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %147

104:                                              ; preds = %94
  %105 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %106 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %109 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %14, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @sg_copy_to_buffer(i32 %107, i32 %110, i8* %111, i32 %112)
  %114 = load i8*, i8** %14, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %118, %119
  %121 = call i32 @memset(i8* %117, i32 0, i32 %120)
  %122 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i8*, i8** %14, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = sdiv i32 %126, 16384
  %128 = add nsw i32 2000, %127
  %129 = call i32 @vub300_usb_bulk_msg(%struct.vub300_mmc_host* %122, i32 %123, i8* %124, i32 %125, i32* %16, i32 %128)
  store i32 %129, i32* %15, align 4
  %130 = load i8*, i8** %14, align 8
  %131 = call i32 @kfree(i8* %130)
  %132 = load i32, i32* %15, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %104
  %135 = load i32, i32* %15, align 4
  %136 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %137 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %139 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %138, i32 0, i32 0
  store i32 0, i32* %139, align 4
  br label %146

140:                                              ; preds = %104
  %141 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %142 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %145 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %140, %134
  br label %154

147:                                              ; preds = %94
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  %150 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %151 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %153 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %152, i32 0, i32 0
  store i32 0, i32* %153, align 4
  br label %154

154:                                              ; preds = %147, %146
  br label %244

155:                                              ; preds = %91, %86
  %156 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %157 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %160 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %163 = call i32 @sg_copy_to_buffer(i32 %158, i32 %161, i8* %162, i32 256)
  %164 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %165 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %164, i32 0, i32 2
  %166 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %167 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %171 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %174 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @GFP_KERNEL, align 4
  %177 = call i32 @usb_sg_init(%struct.TYPE_5__* %165, i32 %168, i32 %169, i32 0, i32 %172, i32 %175, i32 0, i32 %176)
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %17, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %155
  %181 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %182 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @usb_unlink_urb(i32 %183)
  %185 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %186 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @usb_unlink_urb(i32 %187)
  %189 = load i32, i32* %17, align 4
  %190 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %191 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 4
  %192 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %193 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %192, i32 0, i32 0
  store i32 0, i32* %193, align 4
  br label %243

194:                                              ; preds = %155
  %195 = load i64, i64* @jiffies, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sdiv i32 %196, 16384
  %198 = add nsw i32 2000, %197
  %199 = call i64 @msecs_to_jiffies(i32 %198)
  %200 = add nsw i64 %195, %199
  %201 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %202 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  store i64 %200, i64* %203, align 8
  %204 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %205 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %204, i32 0, i32 3
  %206 = call i32 @add_timer(%struct.TYPE_6__* %205)
  %207 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %208 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %207, i32 0, i32 2
  %209 = call i32 @usb_sg_wait(%struct.TYPE_5__* %208)
  %210 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %211 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %194
  %215 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %216 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %215, i32 0, i32 0
  store i32 0, i32* %216, align 4
  br label %242

217:                                              ; preds = %194
  %218 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %219 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %218, i32 0, i32 3
  %220 = call i32 @del_timer(%struct.TYPE_6__* %219)
  %221 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %222 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %217
  %227 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %228 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %232 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 4
  %233 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %234 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %233, i32 0, i32 0
  store i32 0, i32* %234, align 4
  br label %241

235:                                              ; preds = %217
  %236 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %237 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %240 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 4
  br label %241

241:                                              ; preds = %235, %226
  br label %242

242:                                              ; preds = %241, %214
  br label %243

243:                                              ; preds = %242, %180
  br label %244

244:                                              ; preds = %243, %154
  br label %245

245:                                              ; preds = %244, %77
  %246 = load i32, i32* %8, align 4
  ret i32 %246
}

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @vub300_usb_bulk_msg(%struct.vub300_mmc_host*, i32, i8*, i32, i32*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_sg_init(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_unlink_urb(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @usb_sg_wait(%struct.TYPE_5__*) #1

declare dso_local i32 @del_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
