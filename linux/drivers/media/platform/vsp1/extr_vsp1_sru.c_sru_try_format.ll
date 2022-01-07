; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_sru.c_sru_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_sru.c_sru_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_sru = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }

@MEDIA_BUS_FMT_ARGB8888_1X32 = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_AYUV8_1X32 = common dso_local global i32 0, align 4
@SRU_MIN_SIZE = common dso_local global i32 0, align 4
@SRU_MAX_SIZE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_sru*, %struct.v4l2_subdev_pad_config*, i32, %struct.v4l2_mbus_framefmt*)* @sru_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sru_try_format(%struct.vsp1_sru* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2, %struct.v4l2_mbus_framefmt* %3) #0 {
  %5 = alloca %struct.vsp1_sru*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vsp1_sru* %0, %struct.vsp1_sru** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.v4l2_mbus_framefmt* %3, %struct.v4l2_mbus_framefmt** %8, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %120 [
    i32 129, label %13
    i32 128, label %48
  ]

13:                                               ; preds = %4
  %14 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %15 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MEDIA_BUS_FMT_ARGB8888_1X32, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %21 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MEDIA_BUS_FMT_AYUV8_1X32, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @MEDIA_BUS_FMT_AYUV8_1X32, align 4
  %27 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %19, %13
  %30 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SRU_MIN_SIZE, align 4
  %34 = load i32, i32* @SRU_MAX_SIZE, align 4
  %35 = call i8* @clamp(i32 %32, i32 %33, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SRU_MIN_SIZE, align 4
  %43 = load i32, i32* @SRU_MAX_SIZE, align 4
  %44 = call i8* @clamp(i32 %41, i32 %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %120

48:                                               ; preds = %4
  %49 = load %struct.vsp1_sru*, %struct.vsp1_sru** %5, align 8
  %50 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %49, i32 0, i32 0
  %51 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %52 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(i32* %50, %struct.v4l2_subdev_pad_config* %51, i32 129)
  store %struct.v4l2_mbus_framefmt* %52, %struct.v4l2_mbus_framefmt** %9, align 8
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %57 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %59 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul i32 %60, %63
  store i32 %64, i32* %10, align 4
  %65 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %66 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SRU_MAX_SIZE, align 4
  %69 = call i32 @min(i32 %67, i32 %68)
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %71 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SRU_MAX_SIZE, align 4
  %74 = call i32 @min(i32 %72, i32 %73)
  %75 = mul i32 %69, %74
  store i32 %75, i32* %11, align 4
  %76 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %77 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SRU_MAX_SIZE, align 4
  %80 = sdiv i32 %79, 2
  %81 = icmp ule i32 %78, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %48
  %83 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %84 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SRU_MAX_SIZE, align 4
  %87 = sdiv i32 %86, 2
  %88 = icmp ule i32 %85, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %82
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %10, align 4
  %92 = mul i32 %91, 9
  %93 = udiv i32 %92, 4
  %94 = icmp ugt i32 %90, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %97 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = mul i32 %98, 2
  %100 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %101 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %103 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = mul i32 %104, 2
  %106 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %107 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %119

108:                                              ; preds = %89, %82, %48
  %109 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %110 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %113 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %115 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %118 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %108, %95
  br label %120

120:                                              ; preds = %4, %119, %29
  %121 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %122 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %123 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %125 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %126 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  ret void
}

declare dso_local i8* @clamp(i32, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(i32*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
