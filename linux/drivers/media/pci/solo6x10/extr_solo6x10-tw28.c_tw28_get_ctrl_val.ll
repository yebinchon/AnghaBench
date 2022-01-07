; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_tw28_get_ctrl_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_tw28_get_ctrl_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@SOLO_I2C_TW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw28_get_ctrl_val(%struct.solo_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.solo_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sdiv i32 %12, 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = srem i32 %14, 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %102 [
    i32 128, label %17
    i32 130, label %36
    i32 129, label %59
    i32 131, label %69
    i32 132, label %79
  ]

17:                                               ; preds = %4
  %18 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @is_tw286x(%struct.solo_dev* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %24 = load i32, i32* @SOLO_I2C_TW, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @TW_CHIP_OFFSET_ADDR(i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @TW286x_SHARPNESS(i32 %27)
  %29 = call i32 @solo_i2c_readbyte(%struct.solo_dev* %23, i32 %24, i32 %26, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 15
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %35

33:                                               ; preds = %17
  %34 = load i32*, i32** %9, align 8
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %22
  br label %105

36:                                               ; preds = %4
  %37 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @TW286x_HUE_ADDR(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @TW_HUE_ADDR(i32 %41)
  %43 = call i8* @tw_readbyte(%struct.solo_dev* %37, i32 %38, i32 %40, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @is_tw286x(%struct.solo_dev* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = load i32, i32* %10, align 4
  %51 = trunc i32 %50 to i8
  %52 = sext i8 %51 to i32
  %53 = add nsw i32 %52, 128
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  br label %58

55:                                               ; preds = %36
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %49
  br label %105

59:                                               ; preds = %4
  %60 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @TW286x_SATURATIONU_ADDR(i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @TW_SATURATION_ADDR(i32 %64)
  %66 = call i8* @tw_readbyte(%struct.solo_dev* %60, i32 %61, i32 %63, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  br label %105

69:                                               ; preds = %4
  %70 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @TW286x_CONTRAST_ADDR(i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @TW_CONTRAST_ADDR(i32 %74)
  %76 = call i8* @tw_readbyte(%struct.solo_dev* %70, i32 %71, i32 %73, i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %105

79:                                               ; preds = %4
  %80 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @TW286x_BRIGHTNESS_ADDR(i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @TW_BRIGHTNESS_ADDR(i32 %84)
  %86 = call i8* @tw_readbyte(%struct.solo_dev* %80, i32 %81, i32 %83, i32 %85)
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %10, align 4
  %88 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @is_tw286x(%struct.solo_dev* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %79
  %93 = load i32, i32* %10, align 4
  %94 = trunc i32 %93 to i8
  %95 = sext i8 %94 to i32
  %96 = add nsw i32 %95, 128
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  br label %101

98:                                               ; preds = %79
  %99 = load i32, i32* %10, align 4
  %100 = load i32*, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %92
  br label %105

102:                                              ; preds = %4
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %106

105:                                              ; preds = %101, %69, %59, %58, %35
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %102
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @is_tw286x(%struct.solo_dev*, i32) #1

declare dso_local i32 @solo_i2c_readbyte(%struct.solo_dev*, i32, i32, i32) #1

declare dso_local i32 @TW_CHIP_OFFSET_ADDR(i32) #1

declare dso_local i32 @TW286x_SHARPNESS(i32) #1

declare dso_local i8* @tw_readbyte(%struct.solo_dev*, i32, i32, i32) #1

declare dso_local i32 @TW286x_HUE_ADDR(i32) #1

declare dso_local i32 @TW_HUE_ADDR(i32) #1

declare dso_local i32 @TW286x_SATURATIONU_ADDR(i32) #1

declare dso_local i32 @TW_SATURATION_ADDR(i32) #1

declare dso_local i32 @TW286x_CONTRAST_ADDR(i32) #1

declare dso_local i32 @TW_CONTRAST_ADDR(i32) #1

declare dso_local i32 @TW286x_BRIGHTNESS_ADDR(i32) #1

declare dso_local i32 @TW_BRIGHTNESS_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
