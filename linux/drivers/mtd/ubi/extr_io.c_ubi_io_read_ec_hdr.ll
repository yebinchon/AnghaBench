; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_read_ec_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_io_read_ec_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_ec_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"read EC header from PEB %d\00", align 1
@UBI_EC_HDR_SIZE = common dso_local global i32 0, align 4
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@UBI_EC_HDR_MAGIC = common dso_local global i64 0, align 8
@UBI_IO_BAD_HDR_EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"no EC header found at PEB %d, only 0xFF bytes\00", align 1
@UBI_IO_FF = common dso_local global i32 0, align 4
@UBI_IO_FF_BITFLIPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"bad magic number at PEB %d: %08x instead of %08x\00", align 1
@UBI_IO_BAD_HDR = common dso_local global i32 0, align 4
@UBI_CRC32_INIT = common dso_local global i32 0, align 4
@UBI_EC_HDR_SIZE_CRC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"bad EC header CRC at PEB %d, calculated %#08x, read %#08x\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"validation failed for PEB %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_io_read_ec_hdr(%struct.ubi_device* %0, i32 %1, %struct.ubi_ec_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_ec_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ubi_ec_hdr* %2, %struct.ubi_ec_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @dbg_io(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br label %25

25:                                               ; preds = %19, %4
  %26 = phi i1 [ false, %4 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @ubi_assert(i32 %27)
  %29 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %30 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @UBI_EC_HDR_SIZE, align 4
  %33 = call i32 @ubi_io_read(%struct.ubi_device* %29, %struct.ubi_ec_hdr* %30, i32 %31, i32 0, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %25
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @mtd_is_eccerr(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %153

46:                                               ; preds = %40, %36
  br label %47

47:                                               ; preds = %46, %25
  %48 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %49 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @be32_to_cpu(i32 %50)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @UBI_EC_HDR_MAGIC, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %99

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @mtd_is_eccerr(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @UBI_IO_BAD_HDR_EBADMSG, align 4
  store i32 %60, i32* %5, align 4
  br label %153

61:                                               ; preds = %55
  %62 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %63 = load i32, i32* @UBI_EC_HDR_SIZE, align 4
  %64 = call i64 @ubi_check_pattern(%struct.ubi_ec_hdr* %62, i32 255, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_warn(%struct.ubi_device* %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @UBI_IO_FF, align 4
  store i32 %79, i32* %5, align 4
  br label %153

80:                                               ; preds = %73
  %81 = load i32, i32* @UBI_IO_FF_BITFLIPS, align 4
  store i32 %81, i32* %5, align 4
  br label %153

82:                                               ; preds = %61
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* @UBI_EC_HDR_MAGIC, align 8
  %90 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_warn(%struct.ubi_device* %86, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %87, i64 %88, i64 %89)
  %91 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %92 = call i32 @ubi_dump_ec_hdr(%struct.ubi_ec_hdr* %91)
  br label %93

93:                                               ; preds = %85, %82
  %94 = load i32, i32* %7, align 4
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* @UBI_EC_HDR_MAGIC, align 8
  %97 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %94, i64 %95, i64 %96)
  %98 = load i32, i32* @UBI_IO_BAD_HDR, align 4
  store i32 %98, i32* %5, align 4
  br label %153

99:                                               ; preds = %47
  %100 = load i32, i32* @UBI_CRC32_INIT, align 4
  %101 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %102 = load i32, i32* @UBI_EC_HDR_SIZE_CRC, align 4
  %103 = call i64 @crc32(i32 %100, %struct.ubi_ec_hdr* %101, i32 %102)
  store i64 %103, i64* %12, align 8
  %104 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %105 = getelementptr inbounds %struct.ubi_ec_hdr, %struct.ubi_ec_hdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @be32_to_cpu(i32 %106)
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %12, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %99
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* %14, align 8
  %119 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_warn(%struct.ubi_device* %115, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %116, i64 %117, i64 %118)
  %120 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %121 = call i32 @ubi_dump_ec_hdr(%struct.ubi_ec_hdr* %120)
  br label %122

122:                                              ; preds = %114, %111
  %123 = load i32, i32* %7, align 4
  %124 = load i64, i64* %12, align 8
  %125 = load i64, i64* %14, align 8
  %126 = call i32 (i8*, i32, ...) @dbg_bld(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %123, i64 %124, i64 %125)
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* @UBI_IO_BAD_HDR, align 4
  store i32 %130, i32* %5, align 4
  br label %153

131:                                              ; preds = %122
  %132 = load i32, i32* @UBI_IO_BAD_HDR_EBADMSG, align 4
  store i32 %132, i32* %5, align 4
  br label %153

133:                                              ; preds = %99
  %134 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %135 = load %struct.ubi_ec_hdr*, %struct.ubi_ec_hdr** %8, align 8
  %136 = call i32 @validate_ec_hdr(%struct.ubi_device* %134, %struct.ubi_ec_hdr* %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @ubi_err(%struct.ubi_device* %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %153

145:                                              ; preds = %133
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  br label %151

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150, %148
  %152 = phi i32 [ %149, %148 ], [ 0, %150 ]
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %151, %139, %131, %129, %93, %80, %78, %59, %44
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @dbg_io(i8*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_io_read(%struct.ubi_device*, %struct.ubi_ec_hdr*, i32, i32, i32) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @ubi_check_pattern(%struct.ubi_ec_hdr*, i32, i32) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i32, ...) #1

declare dso_local i32 @dbg_bld(i8*, i32, ...) #1

declare dso_local i32 @ubi_dump_ec_hdr(%struct.ubi_ec_hdr*) #1

declare dso_local i64 @crc32(i32, %struct.ubi_ec_hdr*, i32) #1

declare dso_local i32 @validate_ec_hdr(%struct.ubi_device*, %struct.ubi_ec_hdr*) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
