; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_dif_configure_C2HH_for_low_IF.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_dif_configure_C2HH_for_low_IF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@VID_BLK_I2C_ADDRESS = common dso_local global i32 0, align 4
@AFE_CTRL_C2HH_SRC_CTRL = common dso_local global i32 0, align 4
@DIF_USE_BASEBAND = common dso_local global i64 0, align 8
@V4L2_STD_MN = common dso_local global i64 0, align 8
@AUD_IO_CTRL = common dso_local global i32 0, align 4
@V4L2_STD_PAL_I = common dso_local global i64 0, align 8
@V4L2_STD_PAL_D = common dso_local global i64 0, align 8
@V4L2_STD_SECAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_dif_configure_C2HH_for_low_IF(%struct.cx231xx* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %4
  %14 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %15 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %16 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %17 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %14, i32 %15, i32 32, i32 %16, i32 30, i32 31, i32 1)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %19 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %20 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %18, i32 %19, i32 32, i32 %20, i32 23, i32 24, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %25 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %26 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %27 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %24, i32 %25, i32 32, i32 %26, i32 15, i32 22, i32 255)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %29 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %30 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %31 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %28, i32 %29, i32 32, i32 %30, i32 9, i32 9, i32 1)
  store i32 %31, i32* %9, align 4
  br label %120

32:                                               ; preds = %4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @DIF_USE_BASEBAND, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %119

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @V4L2_STD_MN, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %36
  %42 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %43 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %44 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %45 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %42, i32 %43, i32 32, i32 %44, i32 30, i32 31, i32 1)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %47 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %48 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %46, i32 %47, i32 32, i32 %48, i32 23, i32 24, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %53 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %54 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %55 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %52, i32 %53, i32 32, i32 %54, i32 15, i32 22, i32 11)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %57 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %58 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %59 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %56, i32 %57, i32 32, i32 %58, i32 9, i32 9, i32 1)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %61 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %62 = load i32, i32* @AUD_IO_CTRL, align 4
  %63 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %60, i32 %61, i32 32, i32 %62, i32 0, i32 31, i32 3)
  store i32 %63, i32* %9, align 4
  br label %118

64:                                               ; preds = %36
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @V4L2_STD_PAL_I, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @V4L2_STD_PAL_D, align 8
  %72 = and i64 %70, %71
  %73 = or i64 %69, %72
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @V4L2_STD_SECAM, align 8
  %76 = and i64 %74, %75
  %77 = or i64 %73, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %64
  %80 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %81 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %82 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %83 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %80, i32 %81, i32 32, i32 %82, i32 30, i32 31, i32 1)
  store i32 %83, i32* %9, align 4
  %84 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %85 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %86 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %87 = load i64, i64* %7, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %84, i32 %85, i32 32, i32 %86, i32 23, i32 24, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %91 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %92 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %93 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %90, i32 %91, i32 32, i32 %92, i32 15, i32 22, i32 15)
  store i32 %93, i32* %9, align 4
  %94 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %95 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %96 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %97 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %94, i32 %95, i32 32, i32 %96, i32 9, i32 9, i32 1)
  store i32 %97, i32* %9, align 4
  br label %117

98:                                               ; preds = %64
  %99 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %100 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %101 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %102 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %99, i32 %100, i32 32, i32 %101, i32 30, i32 31, i32 1)
  store i32 %102, i32* %9, align 4
  %103 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %104 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %105 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %106 = load i64, i64* %7, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %103, i32 %104, i32 32, i32 %105, i32 23, i32 24, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %110 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %111 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %112 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %109, i32 %110, i32 32, i32 %111, i32 15, i32 22, i32 14)
  store i32 %112, i32* %9, align 4
  %113 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %114 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %115 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %116 = call i32 @cx231xx_reg_mask_write(%struct.cx231xx* %113, i32 %114, i32 32, i32 %115, i32 9, i32 9, i32 1)
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %98, %79
  br label %118

118:                                              ; preds = %117, %41
  br label %119

119:                                              ; preds = %118, %32
  br label %120

120:                                              ; preds = %119, %13
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @cx231xx_reg_mask_write(%struct.cx231xx*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
