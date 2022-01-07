; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_try_recover_peb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_try_recover_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume = type { i32, %struct.TYPE_4__*, %struct.ubi_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ubi_device = type { i32, i32, i64 }
%struct.ubi_vid_io_buf = type { i32 }
%struct.ubi_vid_hdr = type { i64, i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"recover PEB %d, move data to PEB %d\00", align 1
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UBI_VID_DYNAMIC = common dso_local global i64 0, align 8
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"data was successfully recovered\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to write to PEB %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_volume*, i32, i32, i8*, i32, i32, %struct.ubi_vid_io_buf*, i32*)* @try_recover_peb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_recover_peb(%struct.ubi_volume* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, %struct.ubi_vid_io_buf* %6, i32* %7) #0 {
  %9 = alloca %struct.ubi_volume*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubi_vid_io_buf*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.ubi_device*, align 8
  %18 = alloca %struct.ubi_vid_hdr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ubi_volume* %0, %struct.ubi_volume** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.ubi_vid_io_buf* %6, %struct.ubi_vid_io_buf** %15, align 8
  store i32* %7, i32** %16, align 8
  %24 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %25 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %24, i32 0, i32 2
  %26 = load %struct.ubi_device*, %struct.ubi_device** %25, align 8
  store %struct.ubi_device* %26, %struct.ubi_device** %17, align 8
  %27 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %28 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %21, align 4
  %30 = load i32*, i32** %16, align 8
  store i32 0, i32* %30, align 4
  %31 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %32 = call i32 @ubi_wl_get_peb(%struct.ubi_device* %31)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %8
  %36 = load i32, i32* %19, align 4
  store i32 %36, i32* %20, align 4
  br label %166

37:                                               ; preds = %8
  %38 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %19, align 4
  %41 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_msg(%struct.ubi_device* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %15, align 8
  %45 = call i32 @ubi_io_read_vid_hdr(%struct.ubi_device* %42, i32 %43, %struct.ubi_vid_io_buf* %44, i32 1)
  store i32 %45, i32* %20, align 4
  %46 = load i32, i32* %20, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %37
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* %20, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %20, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %166

59:                                               ; preds = %48, %37
  %60 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %15, align 8
  %61 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %60)
  store %struct.ubi_vid_hdr* %61, %struct.ubi_vid_hdr** %18, align 8
  %62 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %63 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @UBI_VID_DYNAMIC, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @ubi_assert(i32 %67)
  %69 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %70 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %69, i32 0, i32 1
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %73 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @memset(i64 %77, i32 255, i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %59
  %83 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %84 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %85 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @ubi_io_read_data(%struct.ubi_device* %83, i64 %86, i32 %87, i32 0, i32 %88)
  store i32 %89, i32* %20, align 4
  %90 = load i32, i32* %20, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %148

97:                                               ; preds = %92, %82
  br label %98

98:                                               ; preds = %97, %59
  %99 = load i32*, i32** %16, align 8
  store i32 1, i32* %99, align 4
  %100 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %101 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = load i8*, i8** %12, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @memcpy(i64 %105, i8* %106, i32 %107)
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %22, align 4
  %112 = load i32, i32* @UBI_CRC32_INIT, align 4
  %113 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %114 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %22, align 4
  %117 = call i32 @crc32(i32 %112, i64 %115, i32 %116)
  store i32 %117, i32* %23, align 4
  %118 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %119 = call i32 @ubi_next_sqnum(%struct.ubi_device* %118)
  %120 = call i32 @cpu_to_be64(i32 %119)
  %121 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %122 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %124 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %123, i32 0, i32 1
  store i32 1, i32* %124, align 8
  %125 = load i32, i32* %22, align 4
  %126 = call i8* @cpu_to_be32(i32 %125)
  %127 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %128 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %23, align 4
  %130 = call i8* @cpu_to_be32(i32 %129)
  %131 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %18, align 8
  %132 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  %133 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %134 = load i32, i32* %19, align 4
  %135 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %15, align 8
  %136 = call i32 @ubi_io_write_vid_hdr(%struct.ubi_device* %133, i32 %134, %struct.ubi_vid_io_buf* %135)
  store i32 %136, i32* %20, align 4
  %137 = load i32, i32* %20, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %98
  br label %148

140:                                              ; preds = %98
  %141 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %142 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %143 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %22, align 4
  %147 = call i32 @ubi_io_write_data(%struct.ubi_device* %141, i64 %144, i32 %145, i32 0, i32 %146)
  store i32 %147, i32* %20, align 4
  br label %148

148:                                              ; preds = %140, %139, %96
  %149 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %150 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %149, i32 0, i32 1
  %151 = call i32 @mutex_unlock(i32* %150)
  %152 = load i32, i32* %20, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %165, label %154

154:                                              ; preds = %148
  %155 = load i32, i32* %19, align 4
  %156 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %157 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %156, i32 0, i32 1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store i32 %155, i32* %164, align 4
  br label %165

165:                                              ; preds = %154, %148
  br label %166

166:                                              ; preds = %165, %58, %35
  %167 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %168 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %167, i32 0, i32 0
  %169 = call i32 @up_read(i32* %168)
  %170 = load i32, i32* %20, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %166
  %173 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @ubi_wl_put_peb(%struct.ubi_device* %173, i32 %174, i32 %175, i32 %176, i32 1)
  %178 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %179 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_msg(%struct.ubi_device* %178, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %193

180:                                              ; preds = %166
  %181 = load i32, i32* %19, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %185 = load i32, i32* %21, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %19, align 4
  %188 = call i32 @ubi_wl_put_peb(%struct.ubi_device* %184, i32 %185, i32 %186, i32 %187, i32 1)
  %189 = load %struct.ubi_device*, %struct.ubi_device** %17, align 8
  %190 = load i32, i32* %19, align 4
  %191 = call i32 @ubi_warn(%struct.ubi_device* %189, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %183, %180
  br label %193

193:                                              ; preds = %192, %172
  %194 = load i32, i32* %20, align 4
  ret i32 %194
}

declare dso_local i32 @ubi_wl_get_peb(%struct.ubi_device*) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @ubi_io_read_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_io_buf*, i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @ubi_io_read_data(%struct.ubi_device*, i64, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @crc32(i32, i64, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ubi_next_sqnum(%struct.ubi_device*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ubi_io_write_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_io_buf*) #1

declare dso_local i32 @ubi_io_write_data(%struct.ubi_device*, i64, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ubi_wl_put_peb(%struct.ubi_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
