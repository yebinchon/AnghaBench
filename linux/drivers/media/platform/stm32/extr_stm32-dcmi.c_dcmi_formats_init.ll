; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_formats_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_formats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcmi_format = type { i64, i64 }
%struct.stm32_dcmi = type { i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i64, i32, i32 }

@dcmi_formats = common dso_local global %struct.dcmi_format* null, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_mbus_code = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Skipping fourcc/code: %4.4s/0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Supported fourcc/code: %4.4s/0x%x\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Could not allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dcmi*)* @dcmi_formats_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_formats_init(%struct.stm32_dcmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_dcmi*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.v4l2_subdev_mbus_code_enum, align 8
  %11 = alloca i32, align 4
  store %struct.stm32_dcmi* %0, %struct.stm32_dcmi** %3, align 8
  %12 = load %struct.dcmi_format*, %struct.dcmi_format** @dcmi_formats, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.dcmi_format* %12)
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca %struct.dcmi_format*, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %19, align 8
  store %struct.v4l2_subdev* %20, %struct.v4l2_subdev** %9, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 1
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 2
  %24 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  store i32 %24, i32* %23, align 4
  br label %25

25:                                               ; preds = %120, %1
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %27 = load i32, i32* @pad, align 4
  %28 = load i32, i32* @enum_mbus_code, align 4
  %29 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %26, i32 %27, i32 %28, i32* null, %struct.v4l2_subdev_mbus_code_enum* %10)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %124

32:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %117, %32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.dcmi_format*, %struct.dcmi_format** @dcmi_formats, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.dcmi_format* %35)
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %120

38:                                               ; preds = %33
  %39 = load %struct.dcmi_format*, %struct.dcmi_format** @dcmi_formats, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %39, i64 %41
  %43 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %117

49:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.dcmi_format*, %struct.dcmi_format** %16, i64 %56
  %58 = load %struct.dcmi_format*, %struct.dcmi_format** %57, align 8
  %59 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.dcmi_format*, %struct.dcmi_format** @dcmi_formats, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %61, i64 %63
  %65 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %60, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %54
  %69 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %70 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.dcmi_format*, %struct.dcmi_format** %16, i64 %73
  %75 = load %struct.dcmi_format*, %struct.dcmi_format** %74, align 8
  %76 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %75, i32 0, i32 1
  %77 = bitcast i64* %76 to i8*
  %78 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @dev_dbg(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %77, i64 %79)
  br label %85

81:                                               ; preds = %54
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %50

85:                                               ; preds = %68, %50
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %85
  %90 = load %struct.dcmi_format*, %struct.dcmi_format** @dcmi_formats, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %90, i64 %92
  %94 = load i32, i32* %6, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %6, align 4
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds %struct.dcmi_format*, %struct.dcmi_format** %16, i64 %96
  store %struct.dcmi_format* %93, %struct.dcmi_format** %97, align 8
  %98 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %99 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = sub i32 %101, 1
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.dcmi_format*, %struct.dcmi_format** %16, i64 %103
  %105 = load %struct.dcmi_format*, %struct.dcmi_format** %104, align 8
  %106 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %105, i32 0, i32 1
  %107 = bitcast i64* %106 to i8*
  %108 = load i32, i32* %6, align 4
  %109 = sub i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.dcmi_format*, %struct.dcmi_format** %16, i64 %110
  %112 = load %struct.dcmi_format*, %struct.dcmi_format** %111, align 8
  %113 = getelementptr inbounds %struct.dcmi_format, %struct.dcmi_format* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @dev_dbg(i32 %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %107, i64 %114)
  br label %116

116:                                              ; preds = %89, %85
  br label %117

117:                                              ; preds = %116, %48
  %118 = load i32, i32* %7, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %33

120:                                              ; preds = %33
  %121 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  br label %25

124:                                              ; preds = %25
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* @ENXIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %169

130:                                              ; preds = %124
  %131 = load i32, i32* %6, align 4
  %132 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %133 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %135 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @GFP_KERNEL, align 4
  %139 = call i32* @devm_kcalloc(i32 %136, i32 %137, i32 8, i32 %138)
  %140 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %141 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %140, i32 0, i32 1
  store i32* %139, i32** %141, align 8
  %142 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %143 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %153, label %146

146:                                              ; preds = %130
  %147 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %148 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dev_err(i32 %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %169

153:                                              ; preds = %130
  %154 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %155 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = zext i32 %157 to i64
  %159 = mul i64 %158, 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @memcpy(i32* %156, %struct.dcmi_format** %16, i32 %160)
  %162 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %163 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %168 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %169

169:                                              ; preds = %153, %146, %127
  %170 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @ARRAY_SIZE(%struct.dcmi_format*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_mbus_code_enum*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i64) #1

declare dso_local i32* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.dcmi_format**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
