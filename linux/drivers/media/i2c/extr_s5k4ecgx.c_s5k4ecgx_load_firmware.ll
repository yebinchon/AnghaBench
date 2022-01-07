; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.firmware = type { i64, i32* }

@S5K4ECGX_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to read firmware %s\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"FW: %s size %zu register sets %d\0A\00", align 1
@FW_RECORD_SIZE = common dso_local global i32 0, align 4
@FW_CRC_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"FW: invalid crc (%#x:%#x)\0A\00", align 1
@REG_CMDBUF0_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @s5k4ecgx_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4ecgx_load_firmware(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %16 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %4, align 8
  store i64 0, i64* %13, align 8
  %17 = load i32, i32* @S5K4ECGX_FIRMWARE, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @request_firmware(%struct.firmware** %5, i32 %17, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %28 = load i32, i32* @S5K4ECGX_FIRMWARE, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 (%struct.v4l2_subdev*, i8*, i64, ...) @v4l2_err(%struct.v4l2_subdev* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %138

32:                                               ; preds = %1
  %33 = load %struct.firmware*, %struct.firmware** %5, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i8* @get_unaligned_le32(i32* %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @debug, align 4
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %40 = load i32, i32* @S5K4ECGX_FIRMWARE, align 4
  %41 = load %struct.firmware*, %struct.firmware** %5, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @v4l2_dbg(i32 3, i32 %38, %struct.v4l2_subdev* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %40, i64 %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = load %struct.firmware*, %struct.firmware** %5, align 8
  %49 = getelementptr inbounds %struct.firmware, %struct.firmware* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @FW_RECORD_SIZE, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @FW_CRC_SIZE, align 8
  %56 = add nsw i64 %54, %55
  %57 = icmp ne i64 %50, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %32
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %134

61:                                               ; preds = %32
  %62 = load %struct.firmware*, %struct.firmware** %5, align 8
  %63 = getelementptr inbounds %struct.firmware, %struct.firmware* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @FW_RECORD_SIZE, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = call i8* @get_unaligned_le32(i32* %69)
  %71 = ptrtoint i8* %70 to i64
  store i64 %71, i64* %12, align 8
  %72 = load %struct.firmware*, %struct.firmware** %5, align 8
  %73 = getelementptr inbounds %struct.firmware, %struct.firmware* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @FW_RECORD_SIZE, align 4
  %77 = mul nsw i32 %75, %76
  %78 = call i64 @crc32_le(i32 -1, i32* %74, i32 %77)
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %61
  %83 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = call i32 (%struct.v4l2_subdev*, i8*, i64, ...) @v4l2_err(%struct.v4l2_subdev* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %84, i64 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %134

89:                                               ; preds = %61
  %90 = load %struct.firmware*, %struct.firmware** %5, align 8
  %91 = getelementptr inbounds %struct.firmware, %struct.firmware* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @FW_RECORD_SIZE, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32* %95, i32** %6, align 8
  store i32 1, i32* %8, align 4
  br label %96

96:                                               ; preds = %130, %89
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %133

100:                                              ; preds = %96
  %101 = load i32*, i32** %6, align 8
  %102 = call i8* @get_unaligned_le32(i32* %101)
  %103 = ptrtoint i8* %102 to i64
  store i64 %103, i64* %10, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 8
  store i32* %105, i32** %6, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @get_unaligned_le16(i32* %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32* %109, i32** %6, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %13, align 8
  %112 = sub nsw i64 %110, %111
  %113 = icmp ne i64 %112, 2
  br i1 %113, label %114, label %119

114:                                              ; preds = %100
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @s5k4ecgx_write(%struct.i2c_client* %115, i64 %116, i32 %117)
  store i32 %118, i32* %7, align 4
  br label %124

119:                                              ; preds = %100
  %120 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %121 = load i32, i32* @REG_CMDBUF0_ADDR, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @s5k4ecgx_i2c_write(%struct.i2c_client* %120, i32 %121, i32 %122)
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %119, %114
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %133

128:                                              ; preds = %124
  %129 = load i64, i64* %10, align 8
  store i64 %129, i64* %13, align 8
  br label %130

130:                                              ; preds = %128
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %96

133:                                              ; preds = %127, %96
  br label %134

134:                                              ; preds = %133, %82, %58
  %135 = load %struct.firmware*, %struct.firmware** %5, align 8
  %136 = call i32 @release_firmware(%struct.firmware* %135)
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %26
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*, i64, ...) #1

declare dso_local i8* @get_unaligned_le32(i32*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i64, i32) #1

declare dso_local i64 @crc32_le(i32, i32*, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @s5k4ecgx_write(%struct.i2c_client*, i64, i32) #1

declare dso_local i32 @s5k4ecgx_i2c_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
