; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_set_pixfmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_set_pixfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mt9m111 = type { i64, i32 }
%struct.i2c_client = type { i32 }

@MT9M111_OUTFMT_PROCESSED_BAYER = common dso_local global i32 0, align 4
@MT9M111_OUTFMT_BYPASS_IFP = common dso_local global i32 0, align 4
@MT9M111_OUTFMT_RGB = common dso_local global i32 0, align 4
@MT9M111_OUTFMT_RGB565 = common dso_local global i32 0, align 4
@MT9M111_OUTFMT_RGB555 = common dso_local global i32 0, align 4
@MT9M111_OUTFMT_RGB444x = common dso_local global i32 0, align 4
@MT9M111_OUTFMT_RGBx444 = common dso_local global i32 0, align 4
@MT9M111_OUTFMT_SWAP_YCbCr_C_Y_RGB_EVEN = common dso_local global i32 0, align 4
@MT9M111_OUTFMT_SWAP_YCbCr_Cb_Cr_RGB_R_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Pixel format not handled: %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MT9M111_OUTFMT_INV_PIX_CLOCK = common dso_local global i32 0, align 4
@context_a = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@context_b = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9m111*, i32)* @mt9m111_set_pixfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_set_pixfmt(%struct.mt9m111* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt9m111*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt9m111* %0, %struct.mt9m111** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %11 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %10, i32 0, i32 1
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* @MT9M111_OUTFMT_PROCESSED_BAYER, align 4
  %14 = load i32, i32* @MT9M111_OUTFMT_BYPASS_IFP, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MT9M111_OUTFMT_RGB, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MT9M111_OUTFMT_RGB565, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @MT9M111_OUTFMT_RGB555, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MT9M111_OUTFMT_RGB444x, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MT9M111_OUTFMT_RGBx444, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MT9M111_OUTFMT_SWAP_YCbCr_C_Y_RGB_EVEN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MT9M111_OUTFMT_SWAP_YCbCr_Cb_Cr_RGB_R_B, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %82 [
    i32 132, label %31
    i32 133, label %35
    i32 136, label %39
    i32 137, label %45
    i32 134, label %49
    i32 135, label %55
    i32 139, label %59
    i32 138, label %65
    i32 131, label %73
    i32 130, label %74
    i32 129, label %76
    i32 128, label %78
  ]

31:                                               ; preds = %2
  %32 = load i32, i32* @MT9M111_OUTFMT_PROCESSED_BAYER, align 4
  %33 = load i32, i32* @MT9M111_OUTFMT_RGB, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %7, align 4
  br label %89

35:                                               ; preds = %2
  %36 = load i32, i32* @MT9M111_OUTFMT_BYPASS_IFP, align 4
  %37 = load i32, i32* @MT9M111_OUTFMT_RGB, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %7, align 4
  br label %89

39:                                               ; preds = %2
  %40 = load i32, i32* @MT9M111_OUTFMT_RGB, align 4
  %41 = load i32, i32* @MT9M111_OUTFMT_RGB555, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MT9M111_OUTFMT_SWAP_YCbCr_C_Y_RGB_EVEN, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %7, align 4
  br label %89

45:                                               ; preds = %2
  %46 = load i32, i32* @MT9M111_OUTFMT_RGB, align 4
  %47 = load i32, i32* @MT9M111_OUTFMT_RGB555, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %7, align 4
  br label %89

49:                                               ; preds = %2
  %50 = load i32, i32* @MT9M111_OUTFMT_RGB, align 4
  %51 = load i32, i32* @MT9M111_OUTFMT_RGB565, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MT9M111_OUTFMT_SWAP_YCbCr_C_Y_RGB_EVEN, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %7, align 4
  br label %89

55:                                               ; preds = %2
  %56 = load i32, i32* @MT9M111_OUTFMT_RGB, align 4
  %57 = load i32, i32* @MT9M111_OUTFMT_RGB565, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %7, align 4
  br label %89

59:                                               ; preds = %2
  %60 = load i32, i32* @MT9M111_OUTFMT_RGB, align 4
  %61 = load i32, i32* @MT9M111_OUTFMT_RGB565, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @MT9M111_OUTFMT_SWAP_YCbCr_Cb_Cr_RGB_R_B, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %7, align 4
  br label %89

65:                                               ; preds = %2
  %66 = load i32, i32* @MT9M111_OUTFMT_RGB, align 4
  %67 = load i32, i32* @MT9M111_OUTFMT_RGB565, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MT9M111_OUTFMT_SWAP_YCbCr_C_Y_RGB_EVEN, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @MT9M111_OUTFMT_SWAP_YCbCr_Cb_Cr_RGB_R_B, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %7, align 4
  br label %89

73:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %89

74:                                               ; preds = %2
  %75 = load i32, i32* @MT9M111_OUTFMT_SWAP_YCbCr_Cb_Cr_RGB_R_B, align 4
  store i32 %75, i32* %7, align 4
  br label %89

76:                                               ; preds = %2
  %77 = load i32, i32* @MT9M111_OUTFMT_SWAP_YCbCr_C_Y_RGB_EVEN, align 4
  store i32 %77, i32* %7, align 4
  br label %89

78:                                               ; preds = %2
  %79 = load i32, i32* @MT9M111_OUTFMT_SWAP_YCbCr_C_Y_RGB_EVEN, align 4
  %80 = load i32, i32* @MT9M111_OUTFMT_SWAP_YCbCr_Cb_Cr_RGB_R_B, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %7, align 4
  br label %89

82:                                               ; preds = %2
  %83 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %114

89:                                               ; preds = %78, %76, %74, %73, %65, %59, %55, %49, %45, %39, %35, %31
  %90 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %91 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @MT9M111_OUTFMT_INV_PIX_CLOCK, align 4
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @context_a, i32 0, i32 0), align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @mt9m111_reg_mask(%struct.i2c_client* %99, i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %98
  %107 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @context_b, i32 0, i32 0), align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @mt9m111_reg_mask(%struct.i2c_client* %107, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %106, %98
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %82
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mt9m111_reg_mask(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
