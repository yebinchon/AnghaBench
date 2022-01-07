; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_ctlr_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_ctlr_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"camera: bytesperline = %d; height = %d\0A\00", align 1
@IMGSZ_V_SHIFT = common dso_local global i32 0, align 4
@IMGSZ_V_MASK = common dso_local global i32 0, align 4
@IMGSZ_H_MASK = common dso_local global i32 0, align 4
@REG_IMGPITCH = common dso_local global i32 0, align 4
@IMGP_YP_MASK = common dso_local global i32 0, align 4
@IMGP_UVP_MASK = common dso_local global i32 0, align 4
@REG_IMGSIZE = common dso_local global i32 0, align 4
@REG_IMGOFFSET = common dso_local global i32 0, align 4
@REG_CTRL0 = common dso_local global i32 0, align 4
@C0_DF_YUV = common dso_local global i32 0, align 4
@C0_YUV_420PL = common dso_local global i32 0, align 4
@C0_YUVE_VYUY = common dso_local global i32 0, align 4
@C0_DF_MASK = common dso_local global i32 0, align 4
@C0_YUV_PACKED = common dso_local global i32 0, align 4
@C0_YUVE_NOSWAP = common dso_local global i32 0, align 4
@C0_YUVE_SWAP24 = common dso_local global i32 0, align 4
@C0_DF_RGB = common dso_local global i32 0, align 4
@C0_RGBF_444 = common dso_local global i32 0, align 4
@C0_RGB4_XBGR = common dso_local global i32 0, align 4
@C0_RGBF_565 = common dso_local global i32 0, align 4
@C0_RGB5_BGGR = common dso_local global i32 0, align 4
@C0_RGB5_GRBG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"camera: unknown format: %#x\0A\00", align 1
@C0_SIF_HVSYNC = common dso_local global i32 0, align 4
@C0_SIFM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcam_camera*)* @mcam_ctlr_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcam_ctlr_image(%struct.mcam_camera* %0) #0 {
  %2 = alloca %struct.mcam_camera*, align 8
  %3 = alloca %struct.v4l2_pix_format*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mcam_camera* %0, %struct.mcam_camera** %2, align 8
  %8 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %9 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %8, i32 0, i32 0
  store %struct.v4l2_pix_format* %9, %struct.v4l2_pix_format** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %11 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %15 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %18 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %16, %19
  %21 = call i32 @cam_dbg(%struct.mcam_camera* %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %20)
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IMGSZ_V_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* @IMGSZ_V_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 2
  %33 = load i32, i32* @IMGSZ_H_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %51 [
    i32 130, label %38
    i32 128, label %38
    i32 131, label %43
    i32 129, label %43
  ]

38:                                               ; preds = %1, %1
  %39 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %55

43:                                               ; preds = %1, %1
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  %47 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 2
  store i32 %50, i32* %5, align 4
  br label %55

51:                                               ; preds = %1
  %52 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %53 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %43, %38
  %56 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %57 = load i32, i32* @REG_IMGPITCH, align 4
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 %58, 16
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @IMGP_YP_MASK, align 4
  %63 = load i32, i32* @IMGP_UVP_MASK, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @mcam_reg_write_mask(%struct.mcam_camera* %56, i32 %57, i32 %61, i32 %64)
  %66 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %67 = load i32, i32* @REG_IMGSIZE, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @mcam_reg_write(%struct.mcam_camera* %66, i32 %67, i32 %70)
  %72 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %73 = load i32, i32* @REG_IMGOFFSET, align 4
  %74 = call i32 @mcam_reg_write(%struct.mcam_camera* %72, i32 %73, i32 0)
  %75 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %136 [
    i32 131, label %78
    i32 129, label %78
    i32 130, label %88
    i32 128, label %98
    i32 132, label %108
    i32 134, label %118
    i32 133, label %128
  ]

78:                                               ; preds = %55, %55
  %79 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %80 = load i32, i32* @REG_CTRL0, align 4
  %81 = load i32, i32* @C0_DF_YUV, align 4
  %82 = load i32, i32* @C0_YUV_420PL, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @C0_YUVE_VYUY, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @C0_DF_MASK, align 4
  %87 = call i32 @mcam_reg_write_mask(%struct.mcam_camera* %79, i32 %80, i32 %85, i32 %86)
  br label %142

88:                                               ; preds = %55
  %89 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %90 = load i32, i32* @REG_CTRL0, align 4
  %91 = load i32, i32* @C0_DF_YUV, align 4
  %92 = load i32, i32* @C0_YUV_PACKED, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @C0_YUVE_NOSWAP, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @C0_DF_MASK, align 4
  %97 = call i32 @mcam_reg_write_mask(%struct.mcam_camera* %89, i32 %90, i32 %95, i32 %96)
  br label %142

98:                                               ; preds = %55
  %99 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %100 = load i32, i32* @REG_CTRL0, align 4
  %101 = load i32, i32* @C0_DF_YUV, align 4
  %102 = load i32, i32* @C0_YUV_PACKED, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @C0_YUVE_SWAP24, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @C0_DF_MASK, align 4
  %107 = call i32 @mcam_reg_write_mask(%struct.mcam_camera* %99, i32 %100, i32 %105, i32 %106)
  br label %142

108:                                              ; preds = %55
  %109 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %110 = load i32, i32* @REG_CTRL0, align 4
  %111 = load i32, i32* @C0_DF_RGB, align 4
  %112 = load i32, i32* @C0_RGBF_444, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @C0_RGB4_XBGR, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @C0_DF_MASK, align 4
  %117 = call i32 @mcam_reg_write_mask(%struct.mcam_camera* %109, i32 %110, i32 %115, i32 %116)
  br label %142

118:                                              ; preds = %55
  %119 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %120 = load i32, i32* @REG_CTRL0, align 4
  %121 = load i32, i32* @C0_DF_RGB, align 4
  %122 = load i32, i32* @C0_RGBF_565, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @C0_RGB5_BGGR, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @C0_DF_MASK, align 4
  %127 = call i32 @mcam_reg_write_mask(%struct.mcam_camera* %119, i32 %120, i32 %125, i32 %126)
  br label %142

128:                                              ; preds = %55
  %129 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %130 = load i32, i32* @REG_CTRL0, align 4
  %131 = load i32, i32* @C0_DF_RGB, align 4
  %132 = load i32, i32* @C0_RGB5_GRBG, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @C0_DF_MASK, align 4
  %135 = call i32 @mcam_reg_write_mask(%struct.mcam_camera* %129, i32 %130, i32 %133, i32 %134)
  br label %142

136:                                              ; preds = %55
  %137 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %138 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %3, align 8
  %139 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @cam_err(%struct.mcam_camera* %137, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %136, %128, %118, %108, %98, %88, %78
  %143 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %144 = load i32, i32* @REG_CTRL0, align 4
  %145 = load i32, i32* @C0_SIF_HVSYNC, align 4
  %146 = load i32, i32* @C0_SIFM_MASK, align 4
  %147 = call i32 @mcam_reg_write_mask(%struct.mcam_camera* %143, i32 %144, i32 %145, i32 %146)
  ret void
}

declare dso_local i32 @cam_dbg(%struct.mcam_camera*, i8*, i32, i32) #1

declare dso_local i32 @mcam_reg_write_mask(%struct.mcam_camera*, i32, i32, i32) #1

declare dso_local i32 @mcam_reg_write(%struct.mcam_camera*, i32, i32) #1

declare dso_local i32 @cam_err(%struct.mcam_camera*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
