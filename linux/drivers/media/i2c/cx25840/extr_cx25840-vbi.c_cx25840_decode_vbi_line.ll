; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-vbi.c_cx25840_decode_vbi_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-vbi.c_cx25840_decode_vbi_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_decode_vbi_line = type { i32*, i32, i32, i32 }
%struct.cx25840_state = type { i64 }

@V4L2_SLICED_TELETEXT_B = common dso_local global i32 0, align 4
@V4L2_SLICED_WSS_625 = common dso_local global i32 0, align 4
@V4L2_SLICED_CAPTION_525 = common dso_local global i32 0, align 4
@V4L2_SLICED_VPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_decode_vbi_line(%struct.v4l2_subdev* %0, %struct.v4l2_decode_vbi_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_decode_vbi_line*, align 8
  %6 = alloca %struct.cx25840_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_decode_vbi_line* %1, %struct.v4l2_decode_vbi_line** %5, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %12)
  store %struct.cx25840_state* %13, %struct.cx25840_state** %6, align 8
  %14 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %2
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 255
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 255
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 85
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 145
  br i1 %40, label %41, label %46

41:                                               ; preds = %36, %26, %21, %2
  %42 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %42, i32 0, i32 2
  store i32 0, i32* %43, align 4
  %44 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %44, i32 0, i32 1
  store i32 0, i32* %45, align 8
  store i32 0, i32* %3, align 4
  br label %133

46:                                               ; preds = %36, %31
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 -1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 15
  store i32 %55, i32* %9, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 63
  store i32 %59, i32* %10, align 4
  %60 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %61 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %10, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32* %68, i32** %7, align 8
  %69 = load i32, i32* %9, align 4
  switch i32 %69, label %99 [
    i32 1, label %70
    i32 4, label %72
    i32 6, label %74
    i32 9, label %91
  ]

70:                                               ; preds = %46
  %71 = load i32, i32* @V4L2_SLICED_TELETEXT_B, align 4
  store i32 %71, i32* %9, align 4
  br label %100

72:                                               ; preds = %46
  %73 = load i32, i32* @V4L2_SLICED_WSS_625, align 4
  store i32 %73, i32* %9, align 4
  br label %100

74:                                               ; preds = %46
  %75 = load i32, i32* @V4L2_SLICED_CAPTION_525, align 4
  store i32 %75, i32* %9, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @odd_parity(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @odd_parity(i32 %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %81, %74
  %89 = phi i1 [ true, %74 ], [ %87, %81 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %11, align 4
  br label %100

91:                                               ; preds = %46
  %92 = load i32, i32* @V4L2_SLICED_VPS, align 4
  store i32 %92, i32* %9, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @decode_vps(i32* %93, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 1, i32* %11, align 4
  br label %98

98:                                               ; preds = %97, %91
  br label %100

99:                                               ; preds = %46
  store i32 0, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %100

100:                                              ; preds = %99, %98, %88, %72, %70
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  br label %106

106:                                              ; preds = %104, %103
  %107 = phi i32 [ 0, %103 ], [ %105, %104 ]
  %108 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %109 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %115

113:                                              ; preds = %106
  %114 = load i32, i32* %10, align 4
  br label %115

115:                                              ; preds = %113, %112
  %116 = phi i32 [ 0, %112 ], [ %114, %113 ]
  %117 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %118 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %126

122:                                              ; preds = %115
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %123, 85
  %125 = zext i1 %124 to i32
  br label %126

126:                                              ; preds = %122, %121
  %127 = phi i32 [ 0, %121 ], [ %125, %122 ]
  %128 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %129 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load %struct.v4l2_decode_vbi_line*, %struct.v4l2_decode_vbi_line** %5, align 8
  %132 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %131, i32 0, i32 0
  store i32* %130, i32** %132, align 8
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %126, %41
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @odd_parity(i32) #1

declare dso_local i32 @decode_vps(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
