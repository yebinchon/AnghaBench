; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_formats_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_isi_formats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isi_format = type { i64, i64 }
%struct.atmel_isi = type { i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i64, i32, i32 }

@isi_formats = common dso_local global %struct.isi_format* null, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@enum_mbus_code = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_isi*)* @isi_formats_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isi_formats_init(%struct.atmel_isi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_isi*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_subdev*, align 8
  %10 = alloca %struct.v4l2_subdev_mbus_code_enum, align 8
  %11 = alloca i32, align 4
  store %struct.atmel_isi* %0, %struct.atmel_isi** %3, align 8
  %12 = load %struct.isi_format*, %struct.isi_format** @isi_formats, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.isi_format* %12)
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca %struct.isi_format*, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %18 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %17, i32 0, i32 4
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

25:                                               ; preds = %90, %1
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %9, align 8
  %27 = load i32, i32* @pad, align 4
  %28 = load i32, i32* @enum_mbus_code, align 4
  %29 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %26, i32 %27, i32 %28, i32* null, %struct.v4l2_subdev_mbus_code_enum* %10)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %94

32:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %87, %32
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.isi_format*, %struct.isi_format** @isi_formats, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.isi_format* %35)
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %90

38:                                               ; preds = %33
  %39 = load %struct.isi_format*, %struct.isi_format** @isi_formats, align 8
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.isi_format, %struct.isi_format* %39, i64 %41
  %43 = getelementptr inbounds %struct.isi_format, %struct.isi_format* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %87

49:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %70, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.isi_format*, %struct.isi_format** %16, i64 %56
  %58 = load %struct.isi_format*, %struct.isi_format** %57, align 8
  %59 = getelementptr inbounds %struct.isi_format, %struct.isi_format* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.isi_format*, %struct.isi_format** @isi_formats, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.isi_format, %struct.isi_format* %61, i64 %63
  %65 = getelementptr inbounds %struct.isi_format, %struct.isi_format* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %60, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %73

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %50

73:                                               ; preds = %68, %50
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load %struct.isi_format*, %struct.isi_format** @isi_formats, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.isi_format, %struct.isi_format* %78, i64 %80
  %82 = load i32, i32* %6, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %6, align 4
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds %struct.isi_format*, %struct.isi_format** %16, i64 %84
  store %struct.isi_format* %81, %struct.isi_format** %85, align 8
  br label %86

86:                                               ; preds = %77, %73
  br label %87

87:                                               ; preds = %86, %48
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %33

90:                                               ; preds = %33
  %91 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, %struct.v4l2_subdev_mbus_code_enum* %10, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %25

94:                                               ; preds = %25
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @ENXIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %135

100:                                              ; preds = %94
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %103 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %105 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i32* @devm_kcalloc(i32 %106, i32 %107, i32 8, i32 %108)
  %110 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %111 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %110, i32 0, i32 1
  store i32* %109, i32** %111, align 8
  %112 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %113 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %100
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %135

119:                                              ; preds = %100
  %120 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %121 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = zext i32 %123 to i64
  %125 = mul i64 %124, 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @memcpy(i32* %122, %struct.isi_format** %16, i32 %126)
  %128 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %129 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.atmel_isi*, %struct.atmel_isi** %3, align 8
  %134 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %135

135:                                              ; preds = %119, %116, %97
  %136 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @ARRAY_SIZE(%struct.isi_format*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_mbus_code_enum*) #1

declare dso_local i32* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.isi_format**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
