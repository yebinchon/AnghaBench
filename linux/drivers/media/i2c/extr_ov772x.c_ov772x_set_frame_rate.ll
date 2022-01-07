; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_set_frame_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_set_frame_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.ov772x_priv = type { i32, i32 }
%struct.ov772x_color_format = type { i32 }
%struct.ov772x_win_size = type { i32 }

@OFMT_MASK = common dso_local global i32 0, align 4
@ov772x_pll = common dso_local global %struct.TYPE_3__* null, align 8
@COM4 = common dso_local global i32 0, align 4
@COM4_RESERVED = common dso_local global i32 0, align 4
@CLKRC = common dso_local global i32 0, align 4
@CLKRC_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov772x_priv*, i32, %struct.ov772x_color_format*, %struct.ov772x_win_size*)* @ov772x_set_frame_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_set_frame_rate(%struct.ov772x_priv* %0, i32 %1, %struct.ov772x_color_format* %2, %struct.ov772x_win_size* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov772x_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ov772x_color_format*, align 8
  %9 = alloca %struct.ov772x_win_size*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ov772x_priv* %0, %struct.ov772x_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ov772x_color_format* %2, %struct.ov772x_color_format** %8, align 8
  store %struct.ov772x_win_size* %3, %struct.ov772x_win_size** %9, align 8
  %23 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %24 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @clk_get_rate(i32 %25)
  store i64 %26, i64* %10, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load %struct.ov772x_color_format*, %struct.ov772x_color_format** %8, align 8
  %28 = getelementptr inbounds %struct.ov772x_color_format, %struct.ov772x_color_format* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OFMT_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %37 [
    i32 130, label %32
    i32 129, label %36
    i32 128, label %36
  ]

32:                                               ; preds = %4
  %33 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %9, align 8
  %34 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  br label %42

36:                                               ; preds = %4, %4
  br label %37

37:                                               ; preds = %4, %36
  %38 = load %struct.ov772x_win_size*, %struct.ov772x_win_size** %9, align 8
  %39 = getelementptr inbounds %struct.ov772x_win_size, %struct.ov772x_win_size* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul i32 %40, 2
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %12, align 4
  %45 = mul i32 %43, %44
  store i32 %45, i32* %13, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %96, %42
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov772x_pll, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %48)
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %46
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov772x_pll, align 8
  %53 = load i32, i32* %15, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* %10, align 8
  %61 = mul i64 %59, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %96

67:                                               ; preds = %51
  %68 = load i32, i32* %20, align 4
  %69 = zext i32 %68 to i64
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @DIV_ROUND_CLOSEST(i64 %69, i32 %70)
  store i32 %71, i32* %22, align 4
  %72 = load i64, i64* %10, align 8
  %73 = load i32, i32* %19, align 4
  %74 = zext i32 %73 to i64
  %75 = mul i64 %72, %74
  %76 = load i32, i32* %22, align 4
  %77 = call i32 @DIV_ROUND_CLOSEST(i64 %75, i32 %76)
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %21, align 4
  %80 = sub i32 %78, %79
  %81 = call i32 @abs(i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %67
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %22, align 4
  %88 = call i32 @CLKRC_DIV(i32 %87)
  store i32 %88, i32* %16, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ov772x_pll, align 8
  %90 = load i32, i32* %15, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %85, %67
  br label %96

96:                                               ; preds = %95, %66
  %97 = load i32, i32* %15, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %46

99:                                               ; preds = %46
  %100 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %101 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @COM4, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* @COM4_RESERVED, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @regmap_write(i32 %102, i32 %103, i32 %106)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i32, i32* %18, align 4
  store i32 %111, i32* %5, align 4
  br label %126

112:                                              ; preds = %99
  %113 = load %struct.ov772x_priv*, %struct.ov772x_priv** %6, align 8
  %114 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CLKRC, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @CLKRC_RESERVED, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @regmap_write(i32 %115, i32 %116, i32 %119)
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = load i32, i32* %18, align 4
  store i32 %124, i32* %5, align 4
  br label %126

125:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %123, %110
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @CLKRC_DIV(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
