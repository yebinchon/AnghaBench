; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ml86v7667.c_ml86v7667_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ml86v7667.c_ml86v7667_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ml86v7667_priv = type { i32, i32 }
%struct.i2c_client = type { i32 }

@MRA_REG = common dso_local global i32 0, align 4
@MRA_OUTPUT_MODE_MASK = common dso_local global i32 0, align 4
@MRA_REGISTER_MODE = common dso_local global i32 0, align 4
@MRA_ITUR_BT656 = common dso_local global i32 0, align 4
@PLLR1_REG = common dso_local global i32 0, align 4
@PLLR1_FIXED_CLOCK = common dso_local global i32 0, align 4
@ADC2_REG = common dso_local global i32 0, align 4
@ADC2_CLAMP_VOLTAGE_MASK = common dso_local global i32 0, align 4
@SSEPL_REG = common dso_local global i32 0, align 4
@SSEPL_LUMINANCE_ONOFF = common dso_local global i32 0, align 4
@CLC_REG = common dso_local global i32 0, align 4
@CLC_CONTRAST_ONOFF = common dso_local global i32 0, align 4
@STATUS_REG = common dso_local global i32 0, align 4
@STATUS_NTSCPAL = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@MRC_REG = common dso_local global i32 0, align 4
@MRC_AUTOSELECT = common dso_local global i32 0, align 4
@MRA_NTSC_BT601 = common dso_local global i32 0, align 4
@MRA_PAL_BT601 = common dso_local global i32 0, align 4
@MRA_INPUT_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ml86v7667_priv*)* @ml86v7667_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ml86v7667_init(%struct.ml86v7667_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ml86v7667_priv*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ml86v7667_priv* %0, %struct.ml86v7667_priv** %3, align 8
  %7 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %7, i32 0, i32 1
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = load i32, i32* @MRA_REG, align 4
  %12 = load i32, i32* @MRA_OUTPUT_MODE_MASK, align 4
  %13 = load i32, i32* @MRA_REGISTER_MODE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MRA_ITUR_BT656, align 4
  %16 = load i32, i32* @MRA_REGISTER_MODE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %10, i32 %11, i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load i32, i32* @PLLR1_REG, align 4
  %21 = load i32, i32* @PLLR1_FIXED_CLOCK, align 4
  %22 = load i32, i32* @PLLR1_FIXED_CLOCK, align 4
  %23 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load i32, i32* @ADC2_REG, align 4
  %28 = load i32, i32* @ADC2_CLAMP_VOLTAGE_MASK, align 4
  %29 = call i32 @ADC2_CLAMP_VOLTAGE(i32 7)
  %30 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load i32, i32* @SSEPL_REG, align 4
  %35 = load i32, i32* @SSEPL_LUMINANCE_ONOFF, align 4
  %36 = load i32, i32* @SSEPL_LUMINANCE_ONOFF, align 4
  %37 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32, i32* @CLC_REG, align 4
  %42 = load i32, i32* @CLC_CONTRAST_ONOFF, align 4
  %43 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %40, i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load i32, i32* @STATUS_REG, align 4
  %48 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %1
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %92

53:                                               ; preds = %1
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @STATUS_NTSCPAL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @V4L2_STD_625_50, align 4
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @V4L2_STD_525_60, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %3, align 8
  %65 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load i32, i32* @MRC_REG, align 4
  %68 = load i32, i32* @MRC_AUTOSELECT, align 4
  %69 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %66, i32 %67, i32 %68, i32 0)
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load %struct.ml86v7667_priv*, %struct.ml86v7667_priv** %3, align 8
  %73 = getelementptr inbounds %struct.ml86v7667_priv, %struct.ml86v7667_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @V4L2_STD_525_60, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %62
  %79 = load i32, i32* @MRA_NTSC_BT601, align 4
  br label %82

80:                                               ; preds = %62
  %81 = load i32, i32* @MRA_PAL_BT601, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %5, align 4
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = load i32, i32* @MRA_REG, align 4
  %86 = load i32, i32* @MRA_INPUT_MODE_MASK, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %82, %51
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @ml86v7667_mask_set(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @ADC2_CLAMP_VOLTAGE(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
