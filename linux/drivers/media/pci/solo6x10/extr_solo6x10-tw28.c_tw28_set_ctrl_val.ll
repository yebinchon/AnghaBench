; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_tw28_set_ctrl_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_tw28_set_ctrl_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@SOLO_I2C_TW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw28_set_ctrl_val(%struct.solo_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.solo_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sdiv i32 %13, 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = srem i32 %15, 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 255
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %4
  %23 = load i32, i32* @ERANGE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %137

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %133 [
    i32 128, label %27
    i32 130, label %57
    i32 129, label %78
    i32 131, label %102
    i32 132, label %112
  ]

27:                                               ; preds = %25
  %28 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @is_tw286x(%struct.solo_dev* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  %33 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %34 = load i32, i32* @SOLO_I2C_TW, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @TW_CHIP_OFFSET_ADDR(i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @TW286x_SHARPNESS(i32 %37)
  %39 = call i32 @solo_i2c_readbyte(%struct.solo_dev* %33, i32 %34, i32 %36, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = and i32 %40, 240
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %12, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %12, align 4
  %45 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %46 = load i32, i32* @SOLO_I2C_TW, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @TW_CHIP_OFFSET_ADDR(i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @TW286x_SHARPNESS(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @solo_i2c_writebyte(%struct.solo_dev* %45, i32 %46, i32 %48, i32 %50, i32 %51)
  br label %56

53:                                               ; preds = %27
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %137

56:                                               ; preds = %32
  br label %136

57:                                               ; preds = %25
  %58 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @is_tw286x(%struct.solo_dev* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, 128
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %10, align 1
  br label %69

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %10, align 1
  br label %69

69:                                               ; preds = %66, %62
  %70 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @TW286x_HUE_ADDR(i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @TW_HUE_ADDR(i32 %74)
  %76 = load i8, i8* %10, align 1
  %77 = call i32 @tw_writebyte(%struct.solo_dev* %70, i32 %71, i32 %73, i32 %75, i8 signext %76)
  br label %136

78:                                               ; preds = %25
  %79 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @is_tw286x(%struct.solo_dev* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %85 = load i32, i32* @SOLO_I2C_TW, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @TW_CHIP_OFFSET_ADDR(i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @TW286x_SATURATIONU_ADDR(i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @solo_i2c_writebyte(%struct.solo_dev* %84, i32 %85, i32 %87, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %78
  %93 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @TW286x_SATURATIONV_ADDR(i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @TW_SATURATION_ADDR(i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = trunc i32 %99 to i8
  %101 = call i32 @tw_writebyte(%struct.solo_dev* %93, i32 %94, i32 %96, i32 %98, i8 signext %100)
  br label %136

102:                                              ; preds = %25
  %103 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @TW286x_CONTRAST_ADDR(i32 %105)
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @TW_CONTRAST_ADDR(i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = trunc i32 %109 to i8
  %111 = call i32 @tw_writebyte(%struct.solo_dev* %103, i32 %104, i32 %106, i32 %108, i8 signext %110)
  br label %136

112:                                              ; preds = %25
  %113 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @is_tw286x(%struct.solo_dev* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 %118, 128
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %10, align 1
  br label %124

121:                                              ; preds = %112
  %122 = load i32, i32* %9, align 4
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %10, align 1
  br label %124

124:                                              ; preds = %121, %117
  %125 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @TW286x_BRIGHTNESS_ADDR(i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @TW_BRIGHTNESS_ADDR(i32 %129)
  %131 = load i8, i8* %10, align 1
  %132 = call i32 @tw_writebyte(%struct.solo_dev* %125, i32 %126, i32 %128, i32 %130, i8 signext %131)
  br label %136

133:                                              ; preds = %25
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %137

136:                                              ; preds = %124, %102, %92, %69, %56
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %136, %133, %53, %22
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @is_tw286x(%struct.solo_dev*, i32) #1

declare dso_local i32 @solo_i2c_readbyte(%struct.solo_dev*, i32, i32, i32) #1

declare dso_local i32 @TW_CHIP_OFFSET_ADDR(i32) #1

declare dso_local i32 @TW286x_SHARPNESS(i32) #1

declare dso_local i32 @solo_i2c_writebyte(%struct.solo_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @tw_writebyte(%struct.solo_dev*, i32, i32, i32, i8 signext) #1

declare dso_local i32 @TW286x_HUE_ADDR(i32) #1

declare dso_local i32 @TW_HUE_ADDR(i32) #1

declare dso_local i32 @TW286x_SATURATIONU_ADDR(i32) #1

declare dso_local i32 @TW286x_SATURATIONV_ADDR(i32) #1

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
