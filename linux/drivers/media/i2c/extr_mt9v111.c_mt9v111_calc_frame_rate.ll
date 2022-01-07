; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_calc_frame_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_calc_frame_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9v111_dev = type { i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }

@mt9v111_frame_intervals = common dso_local global i32* null, align 8
@MT9V111_PIXEL_ARRAY_WIDTH = common dso_local global i32 0, align 4
@MT9V111_CORE_R04_WIN_H_OFFS = common dso_local global i32 0, align 4
@MT9V111_PIXEL_ARRAY_HEIGHT = common dso_local global i32 0, align 4
@MT9V111_CORE_R03_WIN_V_OFFS = common dso_local global i32 0, align 4
@MT9V111_CORE_R06_MIN_VBLANK = common dso_local global i32 0, align 4
@MT9V111_CORE_R06_MAX_VBLANK = common dso_local global i32 0, align 4
@MT9V111_CORE_R05_MIN_HBLANK = common dso_local global i32 0, align 4
@MT9V111_CORE_R05_MAX_HBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9v111_dev*, %struct.v4l2_fract*)* @mt9v111_calc_frame_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v111_calc_frame_rate(%struct.mt9v111_dev* %0, %struct.v4l2_fract* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt9v111_dev*, align 8
  %5 = alloca %struct.v4l2_fract*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mt9v111_dev* %0, %struct.mt9v111_dev** %4, align 8
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %5, align 8
  %20 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = udiv i32 %27, %30
  br label %36

32:                                               ; preds = %2
  %33 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %32, %24
  %37 = phi i32 [ %31, %24 ], [ %35, %32 ]
  store i32 %37, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %59, %36
  %39 = load i32, i32* %16, align 4
  %40 = load i32*, i32** @mt9v111_frame_intervals, align 8
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** @mt9v111_frame_intervals, align 8
  %46 = load i32, i32* %16, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %44, %49
  %51 = call i32 @abs(i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %43
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %16, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %16, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load i32*, i32** @mt9v111_frame_intervals, align 8
  %64 = load i32, i32* %13, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %6, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %10, align 4
  %68 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %4, align 8
  %69 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DIV_ROUND_CLOSEST(i32 %70, i32 2)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @MT9V111_PIXEL_ARRAY_WIDTH, align 4
  %73 = add nsw i32 %72, 7
  %74 = load i32, i32* @MT9V111_CORE_R04_WIN_H_OFFS, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* @MT9V111_PIXEL_ARRAY_HEIGHT, align 4
  %77 = add nsw i32 %76, 7
  %78 = load i32, i32* @MT9V111_CORE_R03_WIN_V_OFFS, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %8, align 4
  store i32 -1, i32* %7, align 4
  %80 = load i32, i32* @MT9V111_CORE_R06_MIN_VBLANK, align 4
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %125, %62
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @MT9V111_CORE_R06_MAX_VBLANK, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %128

85:                                               ; preds = %81
  %86 = load i32, i32* @MT9V111_CORE_R05_MIN_HBLANK, align 4
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %117, %85
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @MT9V111_CORE_R05_MAX_HBLANK, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %14, align 4
  %94 = add i32 %92, %93
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %15, align 4
  %97 = add i32 %95, %96
  %98 = mul i32 %94, %97
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %18, align 4
  %101 = call i32 @DIV_ROUND_CLOSEST(i32 %99, i32 %100)
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %19, align 4
  %104 = sub i32 %102, %103
  %105 = call i32 @abs(i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %91
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %19, align 4
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %120

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %91
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %14, align 4
  %119 = add i32 %118, 10
  store i32 %119, i32* %14, align 4
  br label %87

120:                                              ; preds = %114, %87
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %128

124:                                              ; preds = %120
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %15, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %81

128:                                              ; preds = %123, %81
  %129 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %4, align 8
  %130 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @v4l2_ctrl_s_ctrl_int64(i32 %131, i32 %132)
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i32, i32* %17, align 4
  store i32 %137, i32* %3, align 4
  br label %154

138:                                              ; preds = %128
  %139 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %4, align 8
  %140 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @v4l2_ctrl_s_ctrl_int64(i32 %141, i32 %142)
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* %17, align 4
  store i32 %147, i32* %3, align 4
  br label %154

148:                                              ; preds = %138
  %149 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %150 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %149, i32 0, i32 0
  store i32 1, i32* %150, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.v4l2_fract*, %struct.v4l2_fract** %5, align 8
  %153 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %148, %146, %136
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl_int64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
