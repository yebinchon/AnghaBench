; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ml86v7667.c_ml86v7667_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ml86v7667.c_ml86v7667_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SSEPL_REG = common dso_local global i32 0, align 4
@SSEPL_LUMINANCE_MASK = common dso_local global i32 0, align 4
@CLC_REG = common dso_local global i32 0, align 4
@CLC_CONTRAST_MASK = common dso_local global i32 0, align 4
@ACCRC_REG = common dso_local global i32 0, align 4
@ACCRC_CHROMA_MASK = common dso_local global i32 0, align 4
@ACCRC_CHROMA_SHIFT = common dso_local global i32 0, align 4
@HUE_REG = common dso_local global i32 0, align 4
@ACCC_REG = common dso_local global i32 0, align 4
@ACCC_CHROMA_CR_MASK = common dso_local global i32 0, align 4
@ACCC_CHROMA_CR_SHIFT = common dso_local global i32 0, align 4
@ACCC_CHROMA_CB_MASK = common dso_local global i32 0, align 4
@ACCC_CHROMA_CB_SHIFT = common dso_local global i32 0, align 4
@LUMC_REG = common dso_local global i32 0, align 4
@LUMC_ONOFF_MASK = common dso_local global i32 0, align 4
@LUMC_ONOFF_SHIFT = common dso_local global i32 0, align 4
@CHRCA_REG = common dso_local global i32 0, align 4
@CHRCA_MODE_MASK = common dso_local global i32 0, align 4
@CHRCA_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @ml86v7667_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ml86v7667_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %7 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %6)
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %3, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %88 [
    i32 134, label %15
    i32 131, label %23
    i32 133, label %31
    i32 130, label %41
    i32 129, label %48
    i32 135, label %58
    i32 128, label %68
    i32 132, label %78
  ]

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load i32, i32* @SSEPL_REG, align 4
  %18 = load i32, i32* @SSEPL_LUMINANCE_MASK, align 4
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %16, i32 %17, i32 %18, i32 %21)
  store i32 %22, i32* %5, align 4
  br label %88

23:                                               ; preds = %1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load i32, i32* @CLC_REG, align 4
  %26 = load i32, i32* @CLC_CONTRAST_MASK, align 4
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %24, i32 %25, i32 %26, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %88

31:                                               ; preds = %1
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* @ACCRC_REG, align 4
  %34 = load i32, i32* @ACCRC_CHROMA_MASK, align 4
  %35 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ACCRC_CHROMA_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %32, i32 %33, i32 %34, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %88

41:                                               ; preds = %1
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load i32, i32* @HUE_REG, align 4
  %44 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %42, i32 %43, i32 -1, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %88

48:                                               ; preds = %1
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load i32, i32* @ACCC_REG, align 4
  %51 = load i32, i32* @ACCC_CHROMA_CR_MASK, align 4
  %52 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %53 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ACCC_CHROMA_CR_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %49, i32 %50, i32 %51, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %88

58:                                               ; preds = %1
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = load i32, i32* @ACCC_REG, align 4
  %61 = load i32, i32* @ACCC_CHROMA_CB_MASK, align 4
  %62 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ACCC_CHROMA_CB_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %59, i32 %60, i32 %61, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %88

68:                                               ; preds = %1
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = load i32, i32* @LUMC_REG, align 4
  %71 = load i32, i32* @LUMC_ONOFF_MASK, align 4
  %72 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %73 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @LUMC_ONOFF_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %69, i32 %70, i32 %71, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %88

78:                                               ; preds = %1
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load i32, i32* @CHRCA_REG, align 4
  %81 = load i32, i32* @CHRCA_MODE_MASK, align 4
  %82 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %83 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CHRCA_MODE_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = call i32 @ml86v7667_mask_set(%struct.i2c_client* %79, i32 %80, i32 %81, i32 %86)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %1, %78, %68, %58, %48, %41, %31, %23, %15
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @ml86v7667_mask_set(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
