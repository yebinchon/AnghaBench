; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw2804.c_tw2804_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw2804.c_tw2804_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.tw2804 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@TW2804_REG_AUTOGAIN = common dso_local global i32 0, align 4
@TW2804_REG_COLOR_KILLER = common dso_local global i32 0, align 4
@TW2804_REG_GAIN = common dso_local global i32 0, align 4
@TW2804_REG_CHROMA_GAIN = common dso_local global i32 0, align 4
@TW2804_REG_BLUE_BALANCE = common dso_local global i32 0, align 4
@TW2804_REG_RED_BALANCE = common dso_local global i32 0, align 4
@TW2804_REG_BRIGHTNESS = common dso_local global i32 0, align 4
@TW2804_REG_CONTRAST = common dso_local global i32 0, align 4
@TW2804_REG_SATURATION = common dso_local global i32 0, align 4
@TW2804_REG_HUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @tw2804_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw2804_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.tw2804*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %9 = call %struct.tw2804* @to_state_from_ctrl(%struct.v4l2_ctrl* %8)
  store %struct.tw2804* %9, %struct.tw2804** %4, align 8
  %10 = load %struct.tw2804*, %struct.tw2804** %4, align 8
  %11 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %10, i32 0, i32 1
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %144 [
    i32 137, label %16
    i32 133, label %47
    i32 131, label %76
    i32 134, label %83
    i32 136, label %90
    i32 129, label %97
    i32 135, label %104
    i32 132, label %114
    i32 128, label %124
    i32 130, label %134
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @TW2804_REG_AUTOGAIN, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.tw2804*, %struct.tw2804** %4, align 8
  %21 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @read_reg(%struct.i2c_client* %18, i32 %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %148

28:                                               ; preds = %16
  %29 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %30 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, -129
  store i32 %35, i32* %7, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, 128
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.tw2804*, %struct.tw2804** %4, align 8
  %44 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @write_reg(%struct.i2c_client* %40, i32 %41, i32 %42, i32 %45)
  store i32 %46, i32* %2, align 4
  br label %148

47:                                               ; preds = %1
  %48 = load i32, i32* @TW2804_REG_COLOR_KILLER, align 4
  store i32 %48, i32* %6, align 4
  %49 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.tw2804*, %struct.tw2804** %4, align 8
  %52 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @read_reg(%struct.i2c_client* %49, i32 %50, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %148

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, -4
  %62 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 2, i32 3
  %68 = or i32 %61, %67
  store i32 %68, i32* %7, align 4
  %69 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.tw2804*, %struct.tw2804** %4, align 8
  %73 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @write_reg(%struct.i2c_client* %69, i32 %70, i32 %71, i32 %74)
  store i32 %75, i32* %2, align 4
  br label %148

76:                                               ; preds = %1
  %77 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %78 = load i32, i32* @TW2804_REG_GAIN, align 4
  %79 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %80 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @write_reg(%struct.i2c_client* %77, i32 %78, i32 %81, i32 0)
  store i32 %82, i32* %2, align 4
  br label %148

83:                                               ; preds = %1
  %84 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %85 = load i32, i32* @TW2804_REG_CHROMA_GAIN, align 4
  %86 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %87 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @write_reg(%struct.i2c_client* %84, i32 %85, i32 %88, i32 0)
  store i32 %89, i32* %2, align 4
  br label %148

90:                                               ; preds = %1
  %91 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %92 = load i32, i32* @TW2804_REG_BLUE_BALANCE, align 4
  %93 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %94 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @write_reg(%struct.i2c_client* %91, i32 %92, i32 %95, i32 0)
  store i32 %96, i32* %2, align 4
  br label %148

97:                                               ; preds = %1
  %98 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %99 = load i32, i32* @TW2804_REG_RED_BALANCE, align 4
  %100 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %101 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @write_reg(%struct.i2c_client* %98, i32 %99, i32 %102, i32 0)
  store i32 %103, i32* %2, align 4
  br label %148

104:                                              ; preds = %1
  %105 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %106 = load i32, i32* @TW2804_REG_BRIGHTNESS, align 4
  %107 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %108 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tw2804*, %struct.tw2804** %4, align 8
  %111 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @write_reg(%struct.i2c_client* %105, i32 %106, i32 %109, i32 %112)
  store i32 %113, i32* %2, align 4
  br label %148

114:                                              ; preds = %1
  %115 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %116 = load i32, i32* @TW2804_REG_CONTRAST, align 4
  %117 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %118 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.tw2804*, %struct.tw2804** %4, align 8
  %121 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @write_reg(%struct.i2c_client* %115, i32 %116, i32 %119, i32 %122)
  store i32 %123, i32* %2, align 4
  br label %148

124:                                              ; preds = %1
  %125 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %126 = load i32, i32* @TW2804_REG_SATURATION, align 4
  %127 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %128 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.tw2804*, %struct.tw2804** %4, align 8
  %131 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @write_reg(%struct.i2c_client* %125, i32 %126, i32 %129, i32 %132)
  store i32 %133, i32* %2, align 4
  br label %148

134:                                              ; preds = %1
  %135 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %136 = load i32, i32* @TW2804_REG_HUE, align 4
  %137 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %138 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.tw2804*, %struct.tw2804** %4, align 8
  %141 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @write_reg(%struct.i2c_client* %135, i32 %136, i32 %139, i32 %142)
  store i32 %143, i32* %2, align 4
  br label %148

144:                                              ; preds = %1
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %145, %134, %124, %114, %104, %97, %90, %83, %76, %59, %57, %39, %26
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.tw2804* @to_state_from_ctrl(%struct.v4l2_ctrl*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @read_reg(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @write_reg(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
