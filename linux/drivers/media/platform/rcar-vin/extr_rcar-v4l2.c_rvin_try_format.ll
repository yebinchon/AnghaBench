; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-v4l2.c_rvin_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_pix_format = type { i32, i32, i8*, i32 }
%struct.v4l2_rect = type { i32, i8*, i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@RVIN_DEFAULT_FORMAT = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@set_fmt = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_dev*, i8*, %struct.v4l2_pix_format*, %struct.v4l2_rect*, %struct.v4l2_rect*)* @rvin_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_try_format(%struct.rvin_dev* %0, i8* %1, %struct.v4l2_pix_format* %2, %struct.v4l2_rect* %3, %struct.v4l2_rect* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rvin_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.v4l2_rect*, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca %struct.v4l2_subdev*, align 8
  %13 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %14 = alloca %struct.v4l2_subdev_format, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.v4l2_pix_format* %2, %struct.v4l2_pix_format** %9, align 8
  store %struct.v4l2_rect* %3, %struct.v4l2_rect** %10, align 8
  store %struct.v4l2_rect* %4, %struct.v4l2_rect** %11, align 8
  %19 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %20 = call %struct.v4l2_subdev* @vin_to_source(%struct.rvin_dev* %19)
  store %struct.v4l2_subdev* %20, %struct.v4l2_subdev** %12, align 8
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 0
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 2
  %25 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %26 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %24, align 4
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %31 = call %struct.v4l2_subdev_pad_config* @v4l2_subdev_alloc_pad_config(%struct.v4l2_subdev* %30)
  store %struct.v4l2_subdev_pad_config* %31, %struct.v4l2_subdev_pad_config** %13, align 8
  %32 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %13, align 8
  %33 = icmp eq %struct.v4l2_subdev_pad_config* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %152

37:                                               ; preds = %5
  %38 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %39 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @rvin_format_from_pixel(%struct.rvin_dev* %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @RVIN_DEFAULT_FORMAT, align 4
  %46 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %37
  %49 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 1
  %50 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %51 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %52 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @v4l2_fill_mbus_format(i32* %49, %struct.v4l2_pix_format* %50, i32 %53)
  %55 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %56 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %15, align 4
  %58 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %16, align 8
  %61 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %17, align 8
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %67 = load i32, i32* @pad, align 4
  %68 = load i32, i32* @set_fmt, align 4
  %69 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %13, align 8
  %70 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %66, i32 %67, i32 %68, %struct.v4l2_subdev_pad_config* %69, %struct.v4l2_subdev_format* %14)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %48
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @ENOIOCTLCMD, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %149

79:                                               ; preds = %73, %48
  %80 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %81 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 1
  %82 = call i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format* %80, i32* %81)
  %83 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %84 = icmp ne %struct.v4l2_rect* %83, null
  br i1 %84, label %85, label %112

85:                                               ; preds = %79
  %86 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %87 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %89 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %94 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %96 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %99 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %85
  %107 = load %struct.v4l2_rect*, %struct.v4l2_rect** %10, align 8
  %108 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 %109, 2
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %106, %85
  br label %112

112:                                              ; preds = %111, %79
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %119 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %112
  %121 = load i8*, i8** %16, align 8
  %122 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %123 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %127 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.rvin_dev*, %struct.rvin_dev** %7, align 8
  %129 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %130 = call i32 @rvin_format_align(%struct.rvin_dev* %128, %struct.v4l2_pix_format* %129)
  %131 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %132 = icmp ne %struct.v4l2_rect* %131, null
  br i1 %132, label %133, label %148

133:                                              ; preds = %120
  %134 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %135 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %134, i32 0, i32 3
  store i64 0, i64* %135, align 8
  %136 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %137 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %136, i32 0, i32 2
  store i64 0, i64* %137, align 8
  %138 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %139 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %142 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %144 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %147 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %133, %120
  br label %149

149:                                              ; preds = %148, %78
  %150 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %13, align 8
  %151 = call i32 @v4l2_subdev_free_pad_config(%struct.v4l2_subdev_pad_config* %150)
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %149, %34
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local %struct.v4l2_subdev* @vin_to_source(%struct.rvin_dev*) #1

declare dso_local %struct.v4l2_subdev_pad_config* @v4l2_subdev_alloc_pad_config(%struct.v4l2_subdev*) #1

declare dso_local i32 @rvin_format_from_pixel(%struct.rvin_dev*, i32) #1

declare dso_local i32 @v4l2_fill_mbus_format(i32*, %struct.v4l2_pix_format*, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @v4l2_fill_pix_format(%struct.v4l2_pix_format*, i32*) #1

declare dso_local i32 @rvin_format_align(%struct.rvin_dev*, %struct.v4l2_pix_format*) #1

declare dso_local i32 @v4l2_subdev_free_pad_config(%struct.v4l2_subdev_pad_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
