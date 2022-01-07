; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_decode_vbi_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_decode_vbi_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_decode_vbi_line = type { i32*, i32, i32, i64 }
%struct.saa711x_state = type { i32 }

@saa711x_decode_vbi_line.vbi_no_data_pattern = internal constant [10 x i8] c"\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0", align 1
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_SLICED_TELETEXT_B = common dso_local global i64 0, align 8
@V4L2_SLICED_CAPTION_525 = common dso_local global i64 0, align 8
@V4L2_SLICED_WSS_625 = common dso_local global i64 0, align 8
@V4L2_SLICED_VPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_decode_vbi_line*)* @saa711x_decode_vbi_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_decode_vbi_line(%struct.v4l2_subdev* %0, %struct.v4l2_decode_vbi_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_decode_vbi_line*, align 8
  %6 = alloca %struct.saa711x_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_decode_vbi_line* %1, %struct.v4l2_decode_vbi_line** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.saa711x_state* %12, %struct.saa711x_state** %6, align 8
  %13 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %25 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @V4L2_STD_525_60, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = xor i32 %31, 64
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %2
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 64
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 63
  %47 = shl i32 %46, 3
  %48 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 112
  %52 = ashr i32 %51, 4
  %53 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 15
  store i32 %58, i32* %10, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @memcmp(i32* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @saa711x_decode_vbi_line.vbi_no_data_pattern, i64 0, i64 0), i32 10)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %116

63:                                               ; preds = %33
  %64 = load i32, i32* %10, align 4
  switch i32 %64, label %114 [
    i32 1, label %65
    i32 4, label %69
    i32 5, label %86
    i32 7, label %104
  ]

65:                                               ; preds = %63
  %66 = load i64, i64* @V4L2_SLICED_TELETEXT_B, align 8
  %67 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  br label %115

69:                                               ; preds = %63
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @saa711x_odd_parity(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @saa711x_odd_parity(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75, %69
  store i32 0, i32* %3, align 4
  br label %116

82:                                               ; preds = %75
  %83 = load i64, i64* @V4L2_SLICED_CAPTION_525, align 8
  %84 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  br label %115

86:                                               ; preds = %63
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @saa711x_decode_wss(i32* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %116

92:                                               ; preds = %86
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, 255
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %8, align 4
  %98 = ashr i32 %97, 8
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %98, i32* %100, align 4
  %101 = load i64, i64* @V4L2_SLICED_WSS_625, align 8
  %102 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %103 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  br label %115

104:                                              ; preds = %63
  %105 = load i32*, i32** %7, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 @saa711x_decode_vps(i32* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %116

110:                                              ; preds = %104
  %111 = load i64, i64* @V4L2_SLICED_VPS, align 8
  %112 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %113 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %112, i32 0, i32 3
  store i64 %111, i64* %113, align 8
  br label %115

114:                                              ; preds = %63
  br label %115

115:                                              ; preds = %114, %110, %92, %82, %65
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %109, %91, %81, %62
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @saa711x_odd_parity(i32) #1

declare dso_local i32 @saa711x_decode_wss(i32*) #1

declare dso_local i32 @saa711x_decode_vps(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
