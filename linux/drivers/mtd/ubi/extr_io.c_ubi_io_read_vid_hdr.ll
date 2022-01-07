; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_read_vid_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_read_vid_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i64, i32 }
%struct.ubi_vid_io_buf = type { i8* }
%struct.ubi_vid_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"read VID header from PEB %d\00", align 1
@UBI_VID_HDR_SIZE = common dso_local global i64 0, align 8
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@UBI_VID_HDR_MAGIC = common dso_local global i64 0, align 8
@UBI_IO_BAD_HDR_EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"no VID header found at PEB %d, only 0xFF bytes\00", align 1
@UBI_IO_FF = common dso_local global i32 0, align 4
@UBI_IO_FF_BITFLIPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"bad magic number at PEB %d: %08x instead of %08x\00", align 1
@UBI_IO_BAD_HDR = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_VID_HDR_SIZE_CRC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"bad CRC at PEB %d, calculated %#08x, read %#08x\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"validation failed for PEB %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_io_read_vid_hdr(%struct.ubi_device* %0, i32 %1, %struct.ubi_vid_io_buf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_vid_io_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ubi_vid_hdr*, align 8
  %16 = alloca i8*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ubi_vid_io_buf* %2, %struct.ubi_vid_io_buf** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %8, align 8
  %18 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %17)
  store %struct.ubi_vid_hdr* %18, %struct.ubi_vid_hdr** %15, align 8
  %19 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %8, align 8
  %20 = getelementptr inbounds %struct.ubi_vid_io_buf, %struct.ubi_vid_io_buf* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %16, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dbg_io(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %29 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br label %32

32:                                               ; preds = %26, %4
  %33 = phi i1 [ false, %4 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @ubi_assert(i32 %34)
  %36 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %40 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %43 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @UBI_VID_HDR_SIZE, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @ubi_io_read(%struct.ubi_device* %36, i8* %37, i32 %38, i32 %41, i64 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %32
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @mtd_is_eccerr(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %166

60:                                               ; preds = %54, %50, %32
  %61 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %15, align 8
  %62 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @be32_to_cpu(i32 %63)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* @UBI_VID_HDR_MAGIC, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %112

68:                                               ; preds = %60
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @mtd_is_eccerr(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @UBI_IO_BAD_HDR_EBADMSG, align 4
  store i32 %73, i32* %5, align 4
  br label %166

74:                                               ; preds = %68
  %75 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %15, align 8
  %76 = load i64, i64* @UBI_VID_HDR_SIZE, align 8
  %77 = call i64 @ubi_check_pattern(%struct.ubi_vid_hdr* %75, i32 255, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_warn(%struct.ubi_device* %83, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @UBI_IO_FF, align 4
  store i32 %92, i32* %5, align 4
  br label %166

93:                                               ; preds = %86
  %94 = load i32, i32* @UBI_IO_FF_BITFLIPS, align 4
  store i32 %94, i32* %5, align 4
  br label %166

95:                                               ; preds = %74
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* @UBI_VID_HDR_MAGIC, align 8
  %103 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_warn(%struct.ubi_device* %99, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %100, i64 %101, i64 %102)
  %104 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %15, align 8
  %105 = call i32 @ubi_dump_vid_hdr(%struct.ubi_vid_hdr* %104)
  br label %106

106:                                              ; preds = %98, %95
  %107 = load i32, i32* %7, align 4
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* @UBI_VID_HDR_MAGIC, align 8
  %110 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %107, i64 %108, i64 %109)
  %111 = load i32, i32* @UBI_IO_BAD_HDR, align 4
  store i32 %111, i32* %5, align 4
  br label %166

112:                                              ; preds = %60
  %113 = load i32, i32* @UBI_CRC32_INIT, align 4
  %114 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %15, align 8
  %115 = load i32, i32* @UBI_VID_HDR_SIZE_CRC, align 4
  %116 = call i64 @crc32(i32 %113, %struct.ubi_vid_hdr* %114, i32 %115)
  store i64 %116, i64* %12, align 8
  %117 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %15, align 8
  %118 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @be32_to_cpu(i32 %119)
  store i64 %120, i64* %14, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %12, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %112
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i64, i64* %12, align 8
  %131 = load i64, i64* %14, align 8
  %132 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_warn(%struct.ubi_device* %128, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %129, i64 %130, i64 %131)
  %133 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %15, align 8
  %134 = call i32 @ubi_dump_vid_hdr(%struct.ubi_vid_hdr* %133)
  br label %135

135:                                              ; preds = %127, %124
  %136 = load i32, i32* %7, align 4
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* %14, align 8
  %139 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %136, i64 %137, i64 %138)
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* @UBI_IO_BAD_HDR, align 4
  store i32 %143, i32* %5, align 4
  br label %166

144:                                              ; preds = %135
  %145 = load i32, i32* @UBI_IO_BAD_HDR_EBADMSG, align 4
  store i32 %145, i32* %5, align 4
  br label %166

146:                                              ; preds = %112
  %147 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %148 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %15, align 8
  %149 = call i32 @validate_vid_hdr(%struct.ubi_device* %147, %struct.ubi_vid_hdr* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @ubi_err(%struct.ubi_device* %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %5, align 4
  br label %166

158:                                              ; preds = %146
  %159 = load i32, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  br label %164

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ]
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %164, %152, %144, %142, %106, %93, %91, %72, %58
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @dbg_io(i8*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_io_read(%struct.ubi_device*, i8*, i32, i32, i64) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @ubi_check_pattern(%struct.ubi_vid_hdr*, i32, i64) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i32, ...) #1

declare dso_local i32 @dbg_bld(i8*, i32, ...) #1

declare dso_local i32 @ubi_dump_vid_hdr(%struct.ubi_vid_hdr*) #1

declare dso_local i64 @crc32(i32, %struct.ubi_vid_hdr*, i32) #1

declare dso_local i32 @validate_vid_hdr(%struct.ubi_device*, %struct.ubi_vid_hdr*) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
